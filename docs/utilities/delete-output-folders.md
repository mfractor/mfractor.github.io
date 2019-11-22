**Remove the working and output folders for a solution or project**

## Introduction

The **Delete Output Folders** utility deletes the `bin` and `obj` folders for a solution or project.

When developing software, a common troubleshooting strategy for build issues is removING all build artifacts and then rebuilding the solution. while Visual Studios offers a **Clean Solution** utility, this tool often does not effectively remove the build artifacts.

MFractors **Delete Output Folders** shortcut deletes both the `bin` and `obj` folders and is easily accessible via the right click menu in the solution explorer.

The delete output folders utility is available in both Visual Studio Windows and Mac.

## Using Delete Output Folders

To delete the output folders to for a solution or project, right click on the solution or project in the solution explorer and then choose **Delete Output Folders**.

MFractor will find the `bin` and `obj` folders that are alongside the solutions projects and perform a physical delete on them, removing them from the file system.

## Example

![Using the delete output folders tool](/img/utilities/delete-output-folders.png)
