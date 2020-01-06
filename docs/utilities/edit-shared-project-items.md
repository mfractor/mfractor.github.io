!!! quote "Edit the msbuild for a shared project"

## Introduction

One of the common project types when building Xamarin applications is the **Shared Assets Project**.

These projects are a collection of source code files and assets that are bundled into standalone projects. However, when you reference one of these projects and compile, the compiler treats these files like they are part of the project referencing them.

For a full breakdown on shared projects, please see Microsofts [Shared Projects Documentation](https://docs.microsoft.com/en-us/xamarin/cross-platform/app-fundamentals/shared-projects).

On disk, a shared project is structured as two distinct projects:

 * The `.shproj` file is the project that is reference by other compilable projects.
 * The `.projitems` file defines what the `.shproj` file will add to the compilation.

When we work with shared projects in our Visual Studio, the `.projitems` is not surfaced by default in the solution explorer. This makes it difficult to edit the MSBuild XML of a shared project when we need to.

## Editing Shared Project Items

Included in MFractor for Visual Studio Mac is an **Edit Shared Project Items** solution explorer action; we can use this to open the `.projitems` for a shared project in the MSBuild editor.

To open the `.projitems` items for a shared project:

 1. Right click on a shared project in the solution explorere.
 2. Navigate to **Tools**.
 3. Select **Edit Shared Project Items**.

This will open the `.projitems` in the XML editor.
