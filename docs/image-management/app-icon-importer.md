!!! quote "Add the Application Launcher icon with ease"

!!! warning "Preview Feature"
    This feature is currently under development is available only to preview builds. Watch for the [MFractor Blog](https://www.mfractor.com/blogs/news) to receive updates when the feature is generally available.

## Introduction

The **App Icon Importer** utility allows you to easily import the Application Launcher icon into the Android and iOS projects of your solution from a single image file, that is imported in all the required densities and metadata to describe the icons.

## Using the App Icon Importer

The importer tool is presented as a dialog that can be invoked from several places in Visual Studio IDE. The more straighforward is from the MFractor main menu:

![](/img/image-management/app-icon-importer-menu.png)

!!! tip "Important"
    The MFractor App Icon Importer tool menu option will only be available if the solution has at least one Xamarin.Android or Xamarin.iOS project.

The tool can also be invoked from the context menu of an Android or iOS project, in the `Add` submenu you should find the option for `App Icon`:

![](/img/image-management/app-icon-importer-project.png)

The App Icon Importer dialog Window allows you to load the single image that you use to generate all the required files for the Application icon. There are a few requirements that should be met to be able to import and get the best results:

* **The image must be a square ratio (1:1)**: the icons for either platform are in square ratio, which means that they have the same width and height. The tool cannot import images that are in this ratio because resizing it would squash its contents. 
* **The image must be at least 1024x1024**: although you can use a smaller image, using one that is at least 1024 pixels wide and tall ensures that all the images are downscaled without loss of quality. Also, it fits the higher image size on iOS (App Store icon).

The App Icon importer was thought to as very straighforward as possible, for this reason there only a few options available:

### Selecting Target Projecs

The **Target Projects** section on the left pane lists all the projects on the current opened solution and allows you to select to which projects the icon will be imported to. By default, all projects are selected.

### Cleanup Existing Icons

The app icon importer allows you to cleanup any previous existing icons from the selected target projects. If this checkbox is marked, the importer will search for previously existing icons and remove all of them before adding the newly imported one.

Cleanup rules varies from platform:

* **On Android Projecs**: the importer will scan for the `mipmap-[density]` directories and remove every such directory.
* **On iOS Projects**: the importer will remove any existing files on the `[root project dir]/Assets.xcassets/AppIcon.appiconset` folder.

!!! important
    The App Icon importer will **always** override existing images with the same file name. If you uncheck the clean existing option, it will only ignore existing images based on the rules presented above leaving it behind.

    Also, the icon importer will always **override** the Asset Catalog iconset metadata file, so even though it leaves previous files behind they won't be referenced on the icon set of the iOS project anymore.

## Resource Name and Locations

The App Icon Importer uses standard conventions for naming and placing the image files of the application icon. This varies depending on the platform:

* **Android launcher icons** are imported to the `mipmap` Resources folders for the `ldpi`, `mdpi`, `hdpi`, `xhdpi`, `xxhdpi` and `xxxhdpi` density folders with the file name `icon.png`.
* **iOS App Icons** are imported to the default Asset Catalog (at `[root project folder]/Assets.xcassets`) on the `AppIcon.appiconset` folder. Each icon are named with the prefix `appicon-` with the device and idiom identifier appended to the name.

!!! note
    We've chosen to simplify the app icon importer implementation by using standard conventions. If you find you need further customization please leave a feedback at our [GitHub issues page](https://github.com/mfractor/mfractor-feedback/issues), so we can consider future improvements for this feature.
