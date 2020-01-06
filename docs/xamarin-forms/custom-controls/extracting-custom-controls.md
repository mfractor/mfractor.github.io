!!! quote "Move a XAML layout usage into its own reusable custom control"

## Introduction

When developing user interfaces in XAML, it's common to have similiar or even identical XAML blocks. These duplicate code-blocks are ideal candidates to be refactored into a custom control that is reusable.

Creating custom controls simplifies your code base and increases it's ease of maintainbility.

To help you simplify your XAML, MFractor provides an **Extract XAML Control** refactoring to move a layout into it's own re-usable custom control.

## Using The Extract Control Refactoring

To use the extract control refactoring, press **Alt+Return** when the caret is at a layout element (IE: A `Grid`, `StackLayout` etc) and then choose **Extract into new XAML control**.

In Visual Studio Mac, right click on the layout element, then choose **Refactor** and then **Extract into new XAML control**.

This will launch the the extract control dialog:

![The extract control refactoring window](/img/xamarin-forms/extract-control.png)

The extract control window is made up of the following components:

 * **Name**: The name of the new custom control.
 * **Project**: The project that the new custom control will be placed within. By default, this is the project where the refactoring was triggered.
 * **Folder**: The folder path where the new custom control will be placed. By default this is `Controls`. You may enter a folder path relative to the root of the selected **Project** and MFractor will generate that folder path.

The right hand panel of the extract control window displays a preview of the code that the wizard will generate. Here you can toggle between the `.xaml` and `.xaml.cs` file that the refactoring will generate.

To finish extracting the control, click **Generate** and MFractor will create a new `.xaml` and `.xaml.cs` file for that control and replace the original XAMl with a reference to the new control.
