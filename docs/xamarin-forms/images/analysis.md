!!! quote "Code inspections to verify image asset usages"

## Introduction

In Xamarin.Forms, the `ImageSource` class is used represent an image asset  to connect an image included in our platform projects into the user interface.

For example:

```
<Image Source="app_logo"/>
```

In the above example, we are referencing an image asset named `app_logo` to display in our UI. As each platform project (iOS, Android, UWP) uses a specific method of including image assets, it is easy to mis-type an image reference and have it not appear at runtime.

## Missing Image Detection

MFractor will automatically inspect XAML properties that are an `ImageSource` and verify that the referenced image asset exists in each platform project:

![Image asset analysis](/img/xamarin-forms/missing-image-analysis.png)

### Correcting An Image Reference

When MFractor can locate another image asset that is closely named to the missing image reference, it suggests a code-fix to apply the found image asset name instead.

### Importing A Missing Image

MFractor will also offer a code-fix to launch the [Image Importer](/image-management/image-importer.md) to import a new image asset and fix the missing image reference.
