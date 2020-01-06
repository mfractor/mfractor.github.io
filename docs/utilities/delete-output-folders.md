!!! quote "Remove the working and output folders for a solution or project"

## Introduction

The **Delete Output Folders** utility deletes the intermediate folders for a solution or project.

When developing software, a common troubleshooting strategy for build issues is removing all build artefacts and then rebuilding the solution. while Visual Studios offers a **Clean Solution** utility, this tool often does not effectively remove the build artefacts.

MFractors **Delete Output Folders** shortcut deletes the `bin` and `obj` folders and is easily accessible via the right click menu in the solution explorer.

The delete output folders utility is available in both Visual Studio Windows and Mac.

## Using Delete Output Folders

To delete the output folders to for a solution or project, right click on the solution or project in the solution explorer and then choose **Delete Output Folders**.

MFractor will find the `bin` and `obj` folders that are alongside the solutions projects and perform a physical delete on them, removing them from the file system.

## Example

![Using the delete output folders tool](/img/utilities/delete-output-folders.png)

## Configuring Delete Output Folders

The first that you use the **Delete Output Folders** feature for a solution or project, you will be prompted to choose which folders to delete:

![Configuring which output folders to delete](/img/utilities/delete-output-folders-configure.png)

These options are:

 * **bin**: Delete the bin folder that contains the output binaries.
 * **obj**: Delete the intermediate files contained in the obj folder. If `packages` is uncheck, the obj folder will be preserved to keep the nuget package configuration, however, the inner build configuration folders will be deleted.
 * **packages**: Delete the NuGet packages cache that is within the obj folder.
 * **.vs**: Delete the .vs working folder. Only applicable to solutions.

After you choosing your defaults, these settings are remembered and will used by default next time you use **Delete Output Folders**.

At any time you can change the preferences for a project or solution through the preferences panel.

To do so:

 1. Go to the top **MFractor** menu.
 2. Select **Preferences**.
 3. Select **Delete Output Folders**.

In the preferences panel, you can enable or disable each of the individual settings in the list view. You can also clear all settings by pressing the **Clear** button.

![The delete output folders preferences panel](/img/utilities/delete-output-folders-preferences.png)
