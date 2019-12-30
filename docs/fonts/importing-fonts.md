**Add new assets into your Android and iOS applications**

## Introduction

The **Font Importer** utilities allows you to import custom fonts into the Android and iOS projects of your solution, while adding required boilerplate code to make it available through Xamarin.Forms in a unified way.

## Using the Font Importer

The font importer tool is presented as a dialog that can be invoked from several places in Visual Studio IDE. The more straighforward way is from the MFractor main menu:

![Invoking the Font Importer tool from the MFractor Main Menu](/img/fonts/font-importer-main-menu.png)

>The MFractor Font Importer tool menu option will only be available if the solution has at least one Xamarin.Android or Xamarin.iOS project.

The tool can also be invoked from the context menu of an Android or iOS project, in the Add submenu you should find the option for `Font`:

![Invoking the Font Importer tool from the Solution Explorer Context Menu](/img/fonts/font-importer-solution-explorer.png)

The Font Importer tool dialog window allows you to select a single font file of TTF or OTF types (the ones currently supported by the mobile plaforms) and to set several options for the import processing. 

![The font importer](/img/fonts/font-importer.png)

The first step is to select the desired font to import. After selecting the font, MFractor will try to infer most of the options and use conventions. The following options are available to the importer:

* **Projects**: this section of the dialog lists the projects in the solution that is compatible with the font importer tool, which are `Xamarin.iOS` and `Xamarin.Android` projects. In the list you can use the checkbox on the _Include Font?_ column to select the targets to which you want to import the font. Other columns are:
    * **Project Name**: the name of the project.
    * **Result**: displays where the font will be imported in the project structure. By convention fonts are imported based on the project type:
        * iOS projects import to the `Resources` folder.
        * Android projects import to the `Assets` folder.
* **FontFamily XAML**: if your solution contains a Xamarin.Forms project, the Font Importer tool will suggest adding a XAML Font Declaratio to the `App.xaml` of the projects. This allows referencing the font from components that allows custom fonts, such as `Labels` and `Button`. This section provides the following options:
    * **Resource Key**: this is the name to use as the Resource Key in the App Resources Dictionary, and will be used to reference the font on the components you may wish to customize it. Defaults to the name of the font file. If the font is of the regular style, the tool will automatically supress the style suffix.
    * **Add Font Declaration**: this section lists the `App.xaml` files that are found to the current solution, and allows checking to include the font declaration.
    * **Font Declaration**: this section provides a preview of the code that will be added to the files selected in the previous pane.

!!! note
    the Font Importer tool currently doesn't support importing font as Android Resources. This is planned for future releases.

By clicking on the `Import Font` the tool will process your import based on the options you've set. This processing includes adding required references to the projects such as the [`UIAppFonts` entry](uiappfonts-plist-entry.md) in the [`Info.plist`]() of a project, and optionally adding the [Font Family reference resource](fontfamily-xaml-entry.md) in a Xamarin.Forms project. For specific information about those topics read on their sections linked above.