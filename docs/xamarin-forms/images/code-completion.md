!!! quote "IntelliSense completions to assist with working with image assets in XAML"

## Introduction

When working with the [`Image`](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/user-interface/images) control in Xamarin.Forms, we use the `Source` property to connect an image included in our platform projects into the user interface.

For example:

```
<Image Source="app_logo"/>
```

One of the difficulties however is that we need to know ahead of time the image assets available for us to use. Out of the box, Visual Studio does not provide code completions for the available image assets.

## Image Asset IntelliSense

MFractor includes image asset IntelliSense that surfaces all image assets declared within the linked iOS, Android and UWP projects in IntelliSense.

To trigger image asset IntelliSense, start typing inside any XAML property that is of type `ImageSource`:

![Using image asset IntelliSense](/img/xamarin-forms/image-asset-completion.png)

MFractor will suggest all available image assets and provides a preview of each image asset to help you visually locate the correct image.

## Import Image Asset IntelliSense

MFractor also includes an IntelliSense shortcut to import a new image asset directly from the code completion Window. This action will launch the [Image Importer](/image-management/image-importer.md) and inject the name of the selected image asset into the XAML attribute after completion.

To open the image importer from IntelliSense, start typing inside any XAML property that is of type `ImageSource`:

![Using the image importer IntelliSense action](/img/xamarin-forms/import-image-completion.png)
