**A centralised location to easily manage the image assets in your mobile solution**

## Introduction

The image asset manager summarises all image assets across your solution from your iOS and Android projects.

As a developer, you gain a birds-eye view of all image assets in your solution and that then allows you to delete, import, search and optimise all images from a centralised location.

## Opening The Image Manager
The image manager is presented as a pad on the IDE by default on the right side of the Window, below the _Toolbox_, _Properties_ and _Document Outline_ pads. You can access it from several places if hidden:

#### Top Menu
By acessing the top menu selecting the `Manage Image Assets` options.

![Opening the Image Asset Manager from the top menu](/img/image-management/manage-images-top-menu.png)

#### Solution Pad
You can right click on a _Xamarin.Android_ and _Xamarin.iOS_ project files and you'll find `Manage Image Assets` under the `Tools` menu.

Also if you double click to open an image file from a Android or iOS project, MFractor will automatically present it on the Image Asset Manager tool window.

###

## Overview

## Filtering Image assets

## Importing Image Assets

## Deleting Image Assets

## Optimising Image Assets

For d

## Searching For Image Usages

## Drag And Drop

The image manager supports drag and drop from the image asset list onto a code file.

When you drag and drop an image onto a code file, the image manager will generate code to access that image.

For example, given the image `logo.png`, MFractor will insert the following code:

 * **Android AXML**: `@drawable/logo`.
 * **Android C#**: `Resource.Drawable.logo`.
 * **XAML**: `logo`.
 * **C# (Xamarin.Forms)**: `"logo.png"`;

## Context Actions

In both the image asset list

### Delete

Please see [Deleting Image Assets](#deleting-image-assets)

### Reveal In Finder

### Reveal In Project Pad

### Copy Name To Clipboard

### Copy Filter To Clipboard

### Optimise

Please see [Optimising Image Assets](#optimising-image-assets)

### Open Image

The **Open** right-click action

## Search For Usages

Please see [Searching For Image Usages](#searching-for-image-usages)
