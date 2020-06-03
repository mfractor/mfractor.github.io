!!! quote "Efficiently generate new files using MFractors Scaffolder"

## Introduction

This guide provides an overview of the Scaffolder, a powerful file generation wizard included in MFractor.

The Scaffolder is a rethink of the `File -> New` workflow to make it smarter, more efficient and more personal according to the conventions established in your project.

What separates the Scaffolder from the standard New File Wizard is:

 * It understands your input and automatically suggests file types based on naming conventions and file extensions.
 * It is **context aware**. The Scaffolder considers the conventions established by other files in a folder and project when it generates code files.
 * It provides a live-preview of the generated code.

**Please note the Scaffolder is in it's early stages. We would love feedback on improving its UX and requests for new scaffolds.**

## Accessing The Scaffolder

**Documentation in progress**

### Solution Pad

The Scaffolder is  

### Text Editor

### Main Menu

## Using The Scaffolder

## Available Scaffolders

MFractor currently includes 17 scaffolders.

| Name | Description | Criteria
| ---   | ---   | ---
| Generate Attribute Declaration| Inspects that the name provided into the composition engine ends with `Attribute` to suggest creating a new Attribute declaration.| Activates when the scaffolding input is within a C# project and the file name ends with 'Attribute'
| Generate Class Declaration| The default scaffolder, creates a new C# class file.| Activates when the scaffolding input is within a C# project.
| Generate Class Using Contextual Base Class| Creates a new C# class using the most common base class in the provided project path.| Activates when the scaffolding input is within a C# project and the target folder path has one or more C# classes that hint .
| Generate Data Template Selector| Generates a new Data Template Selector declaration| Activates when the project references Xamarin.Forms and the file name ends with 'DataTemplateSelector'.
| Generate DesignTimeBindingContextAttribute| Generates new DesignTimeBindingContextAttribute declaration| Activates when the project references Xamarin.Forms and the file name is 'DesignTimeBindingContextAttribute'.
| Generate EventArgs Declaration| Inspects that the name provided into the composition engine starts ends with `EventArgs` to suggest creating a new EventArgs declaration.| Activates when the scaffolding input is within a C# project and the file name ends with 'EventArgs'
| Generate FodyWeavers.xml| Generates new FodyWeavers.xml file.| Activates when the scaffolding input matches 'FodyWeavers.xml'
| Generate Interface Declaration| Inspects that the name provided into the composition engine starts with `I` and ends with `.cs` to suggest creating a new interface.| Activates when the scaffolding input is within a C# project and the file name starts with 'I''
| Generate Interface Declaration With Implementation| Inspects that the name provided into the composition engine starts with `I` and ends with `.cs` to suggest creating a new interface. This scaffolder will also generate a declaration for the new interface in the same folder.| Activates when the scaffolding input is within a C# project and the file name starts with 'I''
| Generate New File| Creates a new file with the given file extension| No special criteria required.
| Generate Project Folders| Creates a new file with the given file extension| Activates when the scaffolding input ends with a path separator such as \ or /.
| Linker Configuration File| Generate a linker.xml configuration file for Android and iOS projects.| Activates when the project is an iOS or Android project and the file name is 'linker.xml'.
| Razor Component Scaffolder| Scaffolds a new Razor component with an optional code-behind| Requires that the current project be a Razor project and the input file path ends with .razor or .razor.cs
| Razor Page Scaffolder| Scaffolds a new Razor page with an optional code-behind| Requires that the current project be a Razor project and the input file path ends with .razor or .razor.cs
| Value Conversion Attribute Scaffolder| Generates new ValueConversionAttribute declaration| Activates when the project references Xamarin.Forms and the file name is 'ValueConversionAttribute'.
| XAML Control Scaffolder| Creates a new XAML control inheriting from Grid with a code behind class| Activates when the project references Xamarin.Forms and the file extension is '.xaml'.
| XAML Page Scaffolder| Creates a new XAML page with a code behind class| Activates when the project references Xamarin.Forms, the file name ends with 'Page' and the file extension is '.xaml'.
