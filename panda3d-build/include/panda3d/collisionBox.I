/**
 * PANDA 3D SOFTWARE
 * Copyright (c) Carnegie Mellon University.  All rights reserved.
 *
 * All use of this software is subject to the terms of the revised BSD
 * license.  You should have received a copy of this license along
 * with this source code in a file named "LICENSE."
 *
 * @file collisionBox.I
 * @author amith tudur
 * @date 2009-07-31
 */

/**
 * Create the Box by giving a Center and distances of each of the sides of
 * box from the Center.
 */
INLINE CollisionBox::
CollisionBox(const LPoint3 &center, PN_stdfloat x, PN_stdfloat y, PN_stdfloat z) :
  _center(center)
{
  _min = LPoint3(_center.get_x() - x, _center.get_y() - y, _center.get_z() - z);
  _max = LPoint3(_center.get_x() + x, _center.get_y() + y, _center.get_z() + z);
  for(int v = 0; v < 8; v++)
    _vertex[v] = get_point_aabb(v);
  for(int p = 0; p < 6; p++)
    _planes[p] = set_plane(p);
  setup_box();
}

/**
 * Create the Box by Specifying the Diagonal Points
 */
INLINE CollisionBox::
CollisionBox(const LPoint3 &min, const LPoint3 &max) :
  _min(min), _max(max)
{
  _center = (_min + _max) / 2;
  for(int v = 0; v < 8; v++)
    _vertex[v] = get_point_aabb(v);
  for(int p = 0; p < 6; p++)
    _planes[p] = set_plane(p);
  setup_box();
}

/**
 * Creates an invalid Box.  Only used when reading from a bam file.
 */
INLINE CollisionBox::
CollisionBox() {
}

/**
 *
 */
INLINE CollisionBox::
CollisionBox(const CollisionBox &copy) :
  CollisionSolid(copy),
  _center(copy._center),
  _min(copy._min),
  _max(copy._max)
{
  for(int v = 0; v < 8; v++)
    _vertex[v] = copy._vertex[v];
  for(int p = 0; p < 6; p++)
    _planes[p] = copy._planes[p];
  setup_box();
}

/**
 * Flushes the PStatCollectors used during traversal.
 */
INLINE void CollisionBox::
flush_level() {
  _volume_pcollector.flush_level();
  _test_pcollector.flush_level();
}

/**
 *
 */
INLINE void CollisionBox::
set_center(const LPoint3 &center) {
  _center = center;
  mark_internal_bounds_stale();
  mark_viz_stale();
}

/**
 *
 */
INLINE void CollisionBox::
set_center(PN_stdfloat x, PN_stdfloat y, PN_stdfloat z) {
  set_center(LPoint3(x, y, z));
}

/**
 *
 */
INLINE const LPoint3 &CollisionBox::
get_center() const {
  return _center;
}

/**
 *
 */
INLINE const LPoint3 &CollisionBox::
get_min() const {
  return _min;
}

/**
 *
 */
INLINE const LPoint3 &CollisionBox::
get_max() const {
  return _max;
}

/**
 *
 */
INLINE LVector3 CollisionBox::
get_dimensions() const {
  return _max - _min;
}

/**
 * Returns 8: the number of vertices of a rectangular solid.
 */
INLINE int CollisionBox::
get_num_points() const {
  return 8;
}

/**
 * Returns the nth vertex of the OBB.
 */
INLINE LPoint3 CollisionBox::
get_point(int n) const {
  nassertr(n >= 0 && n < 8, LPoint3::zero());
  return _vertex[n];
}

/**
 * Returns the nth vertex of the Axis Aligned Bounding Box.
 */
INLINE LPoint3 CollisionBox::
get_point_aabb(int n) const {
  nassertr(n >= 0 && n < 8, LPoint3::zero());

  // We do some trickery assuming that _min and _max are consecutive in
  // memory.
  const LPoint3 *a = &_min;
  return LPoint3(a[(n>>2)&1][0], a[(n>>1)&1][1], a[(n)&1][2]);
}

/**
 * Returns 6: the number of faces of a rectangular solid.
 */
INLINE int CollisionBox::
get_num_planes() const {
  return 6;
}

/**
 * Returns the nth face of the rectangular solid.
 */
INLINE LPlane CollisionBox::
get_plane(int n) const {
  nassertr(n >= 0 && n < 6, LPlane());
  return _planes[n];
}

/**
 * Creates the nth face of the rectangular solid.
 */
INLINE LPlane CollisionBox::
set_plane(int n) const {
  nassertr(n >= 0 && n < 6, LPlane());
  return LPlane(get_point(plane_def[n][0]),
                get_point(plane_def[n][1]),
                get_point(plane_def[n][2]));
}


/**
 * Returns true if the 2-d v1 is to the right of v2.
 */
INLINE bool CollisionBox::
is_right(const LVector2 &v1, const LVector2 &v2) {
  return (v1[0] * v2[1] - v1[1] * v2[0]) > 1.0e-6f;
}

/**
 * Returns the linear distance of p to the line defined by f and f+v, where v
 * is a normalized vector.  The result is negative if p is left of the line,
 * positive if it is right of the line.
 */
INLINE PN_stdfloat CollisionBox::
dist_to_line(const LPoint2 &p,
             const LPoint2 &f, const LVector2 &v) {
  LVector2 v1 = (p - f);
  return (v1[0] * v[1] - v1[1] * v[0]);
}

/**
 * Assuming the indicated point in 3-d space lies within the polygon's plane,
 * returns the corresponding point in the polygon's 2-d definition space.
 */
INLINE LPoint2 CollisionBox::
to_2d(const LVecBase3 &point3d, int plane) const {
  LPoint3 point = LPoint3(point3d) * _to_2d_mat[plane];
  return LPoint2(point[0], point[2]);
}

/**
 * Fills the indicated matrix with the appropriate rotation transform to move
 * points from the 2-d plane into the 3-d (X, 0, Z) plane.
 */
INLINE void CollisionBox::
calc_to_3d_mat(LMatrix4 &to_3d_mat,int plane) const {
  // We have to be explicit about the coordinate system--we specifically mean
  // CS_zup_right, because that points the forward vector down the Y axis and
  // moves the coords in (X, 0, Z).  We want this effect regardless of the
  // user's coordinate system of choice.

  // The up vector, on the other hand, is completely arbitrary.

  look_at(to_3d_mat, -get_plane(plane).get_normal(),
          LVector3(0.0f, 0.0f, 1.0f), CS_zup_right);
  to_3d_mat.set_row(3, get_plane(plane).get_point());
}

/**
 * Extrude the indicated point in the polygon's 2-d definition space back into
 * 3-d coordinates.
 */
INLINE LPoint3 CollisionBox::
to_3d(const LVecBase2 &point2d, const LMatrix4 &to_3d_mat) {
  return LPoint3(point2d[0], 0.0f, point2d[1]) * to_3d_mat;
}

/**
 *
 */
INLINE CollisionBox::PointDef::
PointDef(const LPoint2 &p, const LVector2 &v) : _p(p), _v(v) {
}

/**
 *
 */
INLINE CollisionBox::PointDef::
PointDef(PN_stdfloat x, PN_stdfloat y) : _p(x, y), _v(0.0f, 0.0f) {
}

/**
 *
 */
INLINE CollisionBox::PointDef::
PointDef(const CollisionBox::PointDef &copy) : _p(copy._p), _v(copy._v) {
}

/**
 *
 */
INLINE void CollisionBox::PointDef::
operator = (const CollisionBox::PointDef &copy) {
  _p = copy._p;
  _v = copy._v;
}
