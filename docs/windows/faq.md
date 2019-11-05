## Frequently Asked Questions

*Answers to some commonly asked questions*

## What version of Visual Studio Windows is MFractor compatible with?

MFractor target Visual Studio 2019.

## What version of Visual Studio Mac is MFractor compatible with?

The latest version of MFractor always targets the current stable channel version of Visual Studio Mac.

## Where can I find the latest version of MFractor?

### Visual Studio Windows

TODO: Instructions on finding in the Visual Studio marketplace

### Visual Studio Mac

TODO: Instruction on finding in addins.monodevelop.com

## When I first open a XAML file in Visual Studio Windows, MFractors IntelliSense and analysis is not immediately available. Is this a bug?

No, this is the expected behaviour.

Visual Studio asynchronously loads extensions for performance reasons and, as such, MFractor is loaded in the background

## How do I report a bug?

Please follow the instructions in our [Reporting Issues](reporting-issues.md) documentation.

## Where do I find the log files for Visual Studio Mac?

## What is the .mfractor folder?
The `.mfractor` folder is MFractors working directory for your solution.

This directory contains several SQLite database that are generated when MFractor indexes your projects. These databases are essential for many of MFractors features and are constantly regenerated.

It is safe to delete whenever you want however some features won't work correctly without it.

## Should I check .mfractor into source control?

No, you should not check the `.mfractor` folder into source control.

If you are using git, append the following text to the end of your `.gitignore` to exclude `.mfractor`:

```
*.mfractor/
```

The VisualStudio .gitignore that is available on www.github.com ignores the .mfractor folder by default.
