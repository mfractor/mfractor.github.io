!!! quote "Quickly copy the package ID of an Android Project."

!!! info "This feature is available in [MFractor Professional](https://www.mfractor.com/products/mfractor-professional)"

## Introduction

When developing Android apps you often need to copy the Package ID of the app to setup store publishing or platforms like Firebase. The _Copy Android Package ID to Clipboard_ tool allows you to quickly copy the package of any Android project in your solution. To access this command:

* **On macOS**: right-click on the Android project on the _Solution Pad_. Under the `Tools`menu you'll find the `Copy Packaged Id to Clipboard` option.
* **On Windows**: right-click on the Android project on the _Solution Explorer_, the `Copy Package Id to Clipboard` will appear on the second section of the menu.

Just right-click the project file under the Solution Explorer/Navigator and access the command under the tools menu:

![](/img/android/copy-package-id-macos.png) ![](/img/android/copy-package-id-windows.png)

The project Package ID (as defined on the `AndroidManifest.xml` file) will be copied to your clipboard.

!!! tip
    If the option doesn't appear try to invoke the command `Resync MFractor Solution Resources` option on the tools menu of MFractor.