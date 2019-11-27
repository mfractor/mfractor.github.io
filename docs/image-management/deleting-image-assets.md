**🔨🔨🔨 Under construction 🔨🔨🔨**

## Introduction

The image deletion tool removes all densities of an image asset in all mobile projects. As a developer, you can delete all occurrences of an asset in one action instead of needing to track down and delete each density independently.

### Android

When the image manager deletes an image asset in an Android project, it will remove all matching files in the `drawable` and `mipmap` files.

For example, let's consider an image asset named `logo` with the following project structure:

**MyApp.Android**
```
 drawable/
  logo.xml
 drawable-ldpi/
  logo.png
 drawable-mdpi/
  logo.png
 drawable-hdpi/
  logo.png
 mipmap-ldpi/
  logo.png
 mipmap-mdpi/
  logo.png
 mipmap-hdpi/
  logo1.png
```

MFractor would delete the following assets:

```
 drawable-ldpi/
  logo.png
 drawable-night-mdpi/
  logo.png
 drawable-landscape-hdpi/
  logo.png
 mipmap-de-ldpi/
  logo.png
 mipmap/
  logo.png
```

MFractor would ignore the following assets:

```
 drawable/
  logo.xml (Excluded as it's an xml drawable)
 mipmap-hdpi/
  logo1.png (Excluded as logo1 is not a match with logo).
```

### iOS

## Launching The Deletion Tool

### Solution Explorer

The image deletion can be launched from the solution explorer by:

 1. Right click on an Android or iOS image asset.
 2. Choosing the **Delete Image Asset** menu option.

### Image Manager

The image deletion tool can be launched from the image manager by:

 1. Right click on an image asset in the left hand summary list.
 2. Select the **Delete Image Asset**.

## Using The Deletion Tool

After launching the image deletion tool, you will be presented
