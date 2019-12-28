**Remove all traces of image assets from your Android and iOS projects**

## Introduction

The image deletion tool removes all densities of an image asset in all mobile projects. As a developer, you can delete all occurrences of an asset in one action instead of needing to track down and delete each density independently.

## Identifying Image Assets

Image assets are tracked differently on Android and iOS projects. The following sections describes how MFractor will identify images that are part of the same image set that forms an asset.

!!! info
    An **image asset** is a single image that is used inside an app. This asset may have variations in size and style to adapt the image to different contexts, such as screen pixel density, light and dark modes and localizations.

    An **image set** is the set the of files that compose a single asset. When we develop an app we don't reference the individual files of an image set directly, but we of that as a single entity, the image asset.

!!! note
    **Image Assets are Considered Unique Among Projects**. 
    
    An image asset with the same name on iOS and Android projects that are of the same solution will be treated as single Image Asset of that application, considering they are different platform implementations of the same app, thus sharing the same set of assets among them.

The rules below describes how MFractor identifies image assets in specific projects, but the tool will scan through all the projects of the solution and provides a unified view.

### Android

When the image manager deletes an image asset in an Android project, it will remove all matching files in the `drawable` and `mipmap` folders.

For example, let's consider an image asset named `logo` with the following files project structure:

```
drawable/logo.xml
drawable-ldpi/logo.png
drawable-mdpi/logo.png
drawable-hdpi/logo.png
drawable-night-mdpi/logo.png (dark mode version)
drawable-landscape-hdpi/logo.png (landscape version )
mipmap-de-ldpi/logo.png (Deutsch translation)
mipmap-ldpi/logo.png
mipmap-mdpi/logo.png
mipmap-hdpi/logo1.png
```

MFractor would delete the following assets:

```
drawable-ldpi/logo.png
drawable-night-mdpi/logo.png
drawable-landscape-hdpi/logo.png
mipmap-de-ldpi/logo.png
mipmap-ldpi/logo.png
mipmap-mdpi/logo.png
```

MFractor would ignore the following assets:

```
drawable/logo.xml (Excluded as it's an xml drawable)
mipmap-hdpi/logo1.png (Excluded as logo1 is not a match with logo).
```

### iOS

The iOS projects can contain image assets into Image Asset Catalogs or any regular folder. The iOS SDK doesn't enforce any specific place where to put images, but by convention they're generally added to the `Resources` folder. The image deletion tool track assets differentely weather they are standalone files in folder or assets in a Asset Catalog.

#### Deleting stand-alone images

MFractor will identify stand-alone images as an image-set based on its name and density suffix. Images may three primary densities for iOS projects: 1x, 2x and 3x. The former one doesn't add any suffix to the image file name (in practice unused since there are no more supported devices with 1x density screens). The later 2 adds the suffixes as `@2x` and `@3x` respectively.

For example, considering an image asset named `logo` with the following files in the project structure:

```
Resources/logo.png
Resources/logo@2x.png
Resources/logo@3x.png
Resources/logo1@2x.png
Resources/logo2@3x.png
```

The deletion tool will track and delete the following files as the image set of the logo asset:

```
Resources/logo.png
Resources/logo@2x.png
Resources/logo@3x.png
```

MFractor will ignore the following files:

```
Resources/logo1@2x.png (Excluded as logo1 is not a match with logo)
Resources/logo2@3x.png (Excluded as logo2 is not a match with logo)
```

#### Deleting images from Asset Catalogs

For images in Asset Catalogs MFractor will track them a little differently. Image sets in catalogs are tracked through a metadata file called `Contents.json`, in the same folder of an image set. The images that compose a set in an asset catalog may contain different names because by default Visual Studio and Xcode preserve the original filenames when importing then using the Asset Catalog tool. For this reason MFractor relies on the metadata file to track the files that compose a set.

For example, considering again an image asset named `logo` with the following files in the project structure:

```
Assets.xcassets/logo.imageset/logo.png
Assets.xcassets/logo.imageset/logo@2x.png
Assets.xcassets/logo.imageset/logo@3x.png
Assets.xcassets/logo.imageset/sample.png
Assets.xcassets/logo.imageset/sample@3x.png
Assets.xcassets/logo.imageset/other.png
Assets.xcassets/logo.imageset/other@2x.png
Assets.xcassets/logo.imageset/Contents.json
```

From the files in the project structure we can't define for sure what ones compose the image set. For this reason MFractor will check this information on the `Contents.json` metadata file. Here we have a simplified snippet of this file:

```json
{
  "images": [
    {
      "filename": "logo.png",
      "scale": "1x",
      "idiom": "universal"
    },
    {
      "filename": "logo@2x.png",
      "scale": "2x",
      "idiom": "universal"
    },
    {
      "filename": "logo@3x.png",
      "scale": "3x",
      "idiom": "universal"
    },
    {
      "filename": "sample.png",
      "appearances": [
        {
          "appearance": "luminosity",
          "value": "dark"
        }
      ],
      "scale": "1x",
      "idiom": "universal"
    },
    {
      "filename": "sample@3x.png",
      "appearances": [
        {
          "appearance": "luminosity",
          "value": "dark"
        }
      ],
      "scale": "3x",
      "idiom": "universal"
    }
  ]
}
```

From the metadata we can verify that `sample.png` and `sample@3x.png` are the dark mode variant of the same image asset, so the deletion tool will delete the following files:

```
Assets.xcassets/logo.imageset/logo.png
Assets.xcassets/logo.imageset/logo@2x.png
Assets.xcassets/logo.imageset/logo@3x.png
Assets.xcassets/logo.imageset/sample.png
Assets.xcassets/logo.imageset/sample@3x.png
Assets.xcassets/logo.imageset/Contents.json (metadata file is also deleted because its part of the asset definition)
```

MFractor will ignore the following files:

```
Assets.xcassets/logo.imageset/other.png (Not listed in the Contents.json file)
Assets.xcassets/logo.imageset/other@2x.png (Not listed in the Contents.json file)
```

## Launching The Deletion Tool

### Solution Explorer

The image deletion can be launched from the solution explorer by:

 1. Right click on an Android or iOS image file.
 2. Choosing the **Delete Image Asset** menu option.

![Invoking the Delete Image Tool through the Solution Explorer context menu](/img/image-management/delete-image-solution-explorer.png)

### Image Asset Manager

The image deletion tool can be launched from the image manager by:

 1. Right click on an image asset in the left hand summary list.
 2. Select the **Delete** OR click on the **Delete [image name]** button on the bottom of the pane.

![Invoking the Delete Image Tool through the MFractor Image Asset Manager](/img/image-management/delete-image-asset-manager.png)

## Using The Deletion Tool

After launching the image deletion tool, you will be presented with the dialog that summaries information about the deletion operation on the selected asset.

![The Deletion Tool Dialog](/img/image-management/delete-image-asset-dialog.png)

The dialog is straighforward and present information in two panes:

* **The left pane** shows a list of files identified as part of the image set that composes the selected asset. This files are identified following the rules presented on previous sections of this document.
* **The right pane** shows a preview of the image asset being deleted.

This tool allows you to review the image deletion procedure and check if anything is missing or incorrectly added.

By clicking on the `Delete Images` button the delete operation will be done by MFractor.