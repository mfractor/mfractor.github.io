!!! quote "Quickly copy the Bundle Identifier of an iOS Project."

!!! info "This feature is available in [MFractor Professional](https://www.mfractor.com/products/mfractor-professional)"

## Introduction

When developing iOS apps you often need to copy the Bundle Identifier of the app to setup store publishing or platforms like Firebase. The _Copy iOS Bundle ID to Clipboard_ tool allows you to quickly copy this information from any iOS project in your solution. To access this command:

* **On macOS**: right-click on the iOS project on the _Solution Pad_. Under the `Tools`menu you'll find the `Copy Bundle Id to Clipboard` option.
* **On Windows**: right-click on the iOS project on the _Solution Explorer_, the `Copy Bundle Id to Clipboard` will appear on the second section of the menu.

![](/img/ios/copy-bundle-id-macos.png) ![](/img/ios/copy-bundle-id-windows.png)

The project Package ID (as defined on the `AndroidManifest.xml` file) will be copied to your clipboard.

!!! tip
    If the option doesn't appear try to [Resync MFractor Solution Resources](/utilities/resync-mfractor-resources).