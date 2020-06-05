!!! quote "An overview of MFractors built-in support for Mobile.BuildTools"

## Overview
!!! info "Mobile.BuildTools is an easy to use NuGet package that adds new MSBuild targets to your build pipeline designed specifically for the challenges of Xamarin.Forms development."

Mobile.BuildTools exposes several useful build tasks to assist in Xamarin.Forms development, including a task that generates Android and iOS images from a single source image.

MFractor automatically detects solutions that include a Mobile.BuildTools manifest and includes the image generation output into the image management engine.

This activates MFractors image tool-suite (such as IntelliSense, tooltips, analysis etc) in projects that utilise the `ResizetizerNT` build tasks.

[Learn more about Mobile.BuildTools here.](https://mobilebuildtools.com/images/)
