using CppSharp;
using CppSharp.AST;
using CppSharp.Generators;

namespace Panda3D.Net_Generator;

public class Panda3DLibrary : ILibrary
{
    public void Preprocess(Driver driver, ASTContext ctx)
    {
        
    }

    public void Postprocess(Driver driver, ASTContext ctx)
    {
        
    }

    public void Setup(Driver driver)
    {
        var options = driver.Options;
        options.Verbose = true;
        options.GeneratorKind = GeneratorKind.CSharp;
        options.Quiet = false;
        var module = options.AddModule("Panda3D");
        module.Defines.Add("CPPPARSER");
        module.IncludeDirs.Add(@"/home/maxwell/CLionProjects/panda3d/install/include/panda3d");
        foreach (var header in Directory.GetFiles("/home/maxwell/CLionProjects/panda3d/install/include/panda3d", "*.h"))
        {
            module.Headers.Add(Path.GetFileName(header));
        }
        module.LibraryDirs.Add(@"/home/maxwell/CLionProjects/panda3d/install/lib");
        module.Libraries.Add("libp3framework.so");
        module.Libraries.Add("libpanda.so");
        module.Libraries.Add("libpandaexpress.so");
        module.Libraries.Add("libp3dtool.so");
        module.Libraries.Add("libp3dtoolconfig.so");
        module.Libraries.Add("libp3direct.so");
    }

    public void SetupPasses(Driver driver)
    {
        
    }
}