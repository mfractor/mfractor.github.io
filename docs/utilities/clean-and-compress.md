!!! quote "Quickly create a zip archive for solution or projects"

## Introduction

The clean and compress tool creates a zip archive of a solution or project.

When it generates the zip archive, the tool excludes all build artifacts (such as the bin or obj folder), the nuget packages folder and the `.vs` folder. As such, the final archive it create contains only the source code and assets necessary to build and run the solution or project.

This tool is useful for sharing source code or creating a local backup.

The clean and compress tool is available in both Visual Studio Windows and Mac.

## Archiving Solutions

To archive a solution, right click on the solution entry in the solution explorer pad and select **Clean and compress**

MFractor will then archive your solution, including all projects and source code assets, and create a new zip archive named `SolutionName.zip` on your desktop.

## Archiving Projects

To archive a project, right click on the project entry in the solution explorer pad and select **Clean and compress**

MFractor will then archive your project, including all source code and assets for that project, and create a new zip archive named `ProjectName.zip` on your desktop.

## Example

![Using the clean and compress tool](/img/utilities/clean-compress.png)
