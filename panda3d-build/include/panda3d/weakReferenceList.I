/**
 * PANDA 3D SOFTWARE
 * Copyright (c) Carnegie Mellon University.  All rights reserved.
 *
 * All use of this software is subject to the terms of the revised BSD
 * license.  You should have received a copy of this license along
 * with this source code in a file named "LICENSE."
 *
 * @file weakReferenceList.I
 * @author drose
 * @date 2004-09-27
 */

/**
 * Increases the number of weak references.
 *
 * @since 1.10.0
 */
INLINE void WeakReferenceList::
ref() const {
  _count.fetch_add(1, std::memory_order_relaxed);
}

/**
 * Decreases the number of weak references.  Returns true if, after this,
 * there are still any weak or strong references remaining, or false if this
 * structure should be deleted right away.
 *
 * @since 1.10.0
 */
INLINE bool WeakReferenceList::
unref() const {
  return _count.fetch_sub(1, std::memory_order_release) != 1;
}

/**
 * Returns true if the object represented has been deleted, ie. there are only
 * weak references left pointing to the object.
 *
 * @since 1.10.0
 */
INLINE bool WeakReferenceList::
was_deleted() const {
  return _count.load(std::memory_order_relaxed) < _alive_offset;
}
