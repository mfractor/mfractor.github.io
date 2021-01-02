!!! quote "Add the Application Launcher icon with ease"

## Introduction

The **App Icon Importer** utility allows you to easily import the Application Launcher icon into the Android and iOS projects of your solution from a single image file, that is imported in all the required densities and metadata to describe the icons.

## Using the App Icon Importer

The importer tool is presented as a dialog that can be invoked from several places in Visual Studio IDE. The more straighforward is from the MFractor main menu:

![](/img/image-management/app-icon-importer-menu-vsmac.png) ![](/img/image-management/app-icon-importer-menu-vswin.png)

!!! tip "Important"
    The MFractor App Icon Importer tool menu option will only be available if the solution has at least one Xamarin.Android or Xamarin.iOS project.

The tool can also be invoked from the context menu of an Android or iOS project, in the `Add` submenu you should find the option for `App Icon`:

![](/img/image-management/app-icon-importer-project-vsmac.png) ![](/img/image-management/app-icon-importer-project-vswin.png)

The App Icon Importer dialog Window allows you to load the single image that you use to generate all the required files for the Application icon. 

![](/img/image-management/app-icon-importer-main-window.png)

There are a few requirements that should be met to be able to import and get the best results:

* **The image must be a square ratio (1:1)**: the icons for either platform are in square ratio, which means that they have the same width and height. The tool cannot import images that are in this ratio because resizing it would squash its contents. 
* **The image must be at least 1024x1024**: although you can use a smaller image, using one that is at least 1024 pixels wide and tall ensures that all the images are downscaled without loss of quality. Also, it fits the higher image size on iOS (App Store icon).

The App Icon importer was thought to as very straighforward as possible, for this reason there only a few options available:

### Selecting Target Projecs

The **Target Projects** section on the left pane lists all the projects on the current opened solution and allows you to select to which projects the icon will be imported to. By default, all projects are selected.

### Creating Adaptive Icons

Newer versions of Android uses Adaptative Icons, 

## Resource Name and Locations

The App Icon Importer uses standard conventions for naming and placing the image files of the application icon. This varies depending on the platform:

* **Android launcher icons** are imported to the `mipmap` Resources folders for the `ldpi`, `mdpi`, `hdpi`, `xhdpi`, `xxhdpi` and `xxxhdpi` density folders with the file name `icon.png`.

!!! note
    Android adaptive launcher icons are currently not supported on this first iteration of the icon importer. We're planning on adding it support on future versions of MFractor.

* **iOS App Icons** are imported to the default Asset Catalog (at `[root project folder]/Assets.xcassets`) on the `AppIcon.appiconset` folder. Each icon are named with the prefix `appicon-` with the device and idiom identifier appended to the name. For additional information on App Icons check out:
    * [App Icon - Icons and Images - iOS Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/app-icon/): design guidelines and principles for designers on creating App Icons for iOS.
    * [App Icons on iPhone, iPad and Apple Watch (Technical QA1686)](https://developer.apple.com/library/archive/qa/qa1686/_index.html): an in-depth technical specs for setting up App Icons for Apple platforms.

!!! note
    We've chosen to simplify the app icon importer implementation by using standard conventions. If you find you need further customization please leave a feedback at our [GitHub issues page](https://github.com/mfractor/mfractor-feedback/issues), so we can consider future improvements for this feature.

