## How do I report a bug?

To report a bug, please file an issue on our GitHub issues tracker at https://github.com/mfractor/mfractor-feedback/issues

Please see our [support.md](Support) documentation for detailed information of reporting a bug.

## I'd like to try MFractor Professional, how do I get a trial?

To request an MFractor Professional trial, please email matthew@mfractor.com.

## How do I recover my MFractor Professional license?

To recover your MFractor Professional license, please email matthew@mfractor.com requesting

## I'd like to write a blog about MFractor.

Great! We love people blogging about

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
