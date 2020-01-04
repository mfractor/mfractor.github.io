!!! warning "🔨🔨🔨 Under construction 🔨🔨🔨"

!!! quote "Quickly switch among the three core components of the MVVM pattern"

## Introduction

The MVVM (Model-View-ViewModel) Pattern is considered one if core architectural patterns of a Xamarin.Forms application. 

By convention, a single View is composed by three files:

* The XAML View file (`.xaml`)
* It's code-behind file (`.xaml.cs`)
* The View Model that will provide the features of the view (a C# class contained on its own `.cs` file)

The first two files are kept together, the later is usually kept on a `ViewModels` folders, where all the View Models are declared. Sometimes this makes hard to navigate between those files. Enters the MVVM Navigation feature of MFractor.


The convention for this pattern is to keep each part contained on it's on file where Views are kept on it's XAML file, 

What is a view? What is a view model? What is their relationship?


## Navigating Between MVVM Components

To facilitate navigating among these components, MFractor adds shortcuts to a few places in the Visual Studio IDE, so you can quickly access the counterparts of the current file you're working. They appear in the context menu of the active document and 

### Navigating to a View

Highlight shortcut is Command+Shift+3

### Navigating to a ViewModel

Highlight shortcut is Command+Shift+1

### Navigating to a Code Behind

Highlight shortcut is Command+Shift+2

## MVVM File Group Detection

MFractor will detect the View Model of a View/Code-Behind using the following convention:

* 

