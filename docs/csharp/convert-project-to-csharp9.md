!!! quote "Quickly convert projects to compile using C# version 9.0"

## Introduction

The version 9.0 of the C# language is finally available. Although it becames the default for some types of project/target frameworks, it need to be set manually on Xamarin and legacy projects. This feature allows you to quickly convert an existing project to use the new language version.

!!! tip
    For more information about C# 9.0 and how it relates to Xamarin projects please [read our blog post about this subject](https://www.mfractor.com/blogs/news/net-5-0-and-c-9-0-for-xamarin-developers). 

## Converting a Project

The feature is made available through the context menu of the Solution Pad (Mac) or Solution Explorer (Windows), when right-clicking on a project and navigating the `Tools` menu.

![](/img/csharp/conv-cs9-menu-vsmac.png) ![](/img/csharp/conv-cs9-menu-vswin.png)

Notice that the option only appears to projects that aren't already using C# 9.0. The pre-conditions for the feature availability are:

* The project must be a `Xamarin.Android`, `Xamarin.iOS` or `.NET Standard` projects.
* Project sholdn't have already have the `LangVersion` property set to `9.0` or `preview`.

By running the command MFractor will add the proper declaration on the `.csproj` file to make it compatible with C# 9.0. There's also a second requirement for some types of projects that we cover on the next section.

!!! note
    MFractor writes the changes directly to the `.csproj` so Visual Studio may ask you to reload the project. This is normal and expected.

### The IsExternalInit class

The C# 9.0 compiler relies on the existance of the class `IsExternalInit` on projects that doesn't target .NET 5 or above. This is a class without any members on the `System.Runtime.CompilerServices` namespace, and allows using the `init` and `record` features. When this class is not available, an error will be shown:

![](/img/csharp/conv-cs9-error.png)

Fortunately this is pretty easy to solve, just a matter of declaring this class in the target project. The convert feature automatically does this for you on project types that requires it. The file `CSharp9Support.cs` is added to the `Properties` folder of your project (which is created automatically in case your project doens't have one):

```csharp
namespace System.Runtime.CompilerServices
{
    public class IsExternalInit { }
}
```

You can rename or move the file around however best fits your project organization, just keep the class declaration and the compilation of the features will be executed correctly.