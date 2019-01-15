## Frequently Asked Questions

*Answers to some commonly asked questions*

## How can I get help or support?

* Twitter: [@matthewrdev](https://twitter.com/matthewrdev)
* Slack: [MFractor Slack Channel](https://xamarinchat.slack.com/archives/mfractor).
* Gitter: [MFractor Gitter Channel](https://gitter.im/mfractor/Lobby#).
* Email: Please email [matthew@mfractor.com](matthew@mfractor.com)
* OfficeHours: Please book me at [https://officehours.io/people/matthewrdev](https://officehours.io/people/matthewrdev)

## What version of Visual Studio Mac is MFractor compatible with?

The latest version of MFractor always targets the current stable channel version of Visual Studio Mac.

## Does MFractor support Visual Studio Windows?

MFractor **does not** support Visual Studio Windows. This is on the roadmap for the future but there is no concrete timeline. A news announcement will be published when MFractor for Visual Studio Windows is available.

## How do I file a bug report?

If you notice a bug while you are using MFractor, please file a bug report by taking the following steps:

 * Go to the [MFractor Feedback](https://github.com/mfractor/mfractor-feedback/issues/new) repository.
 * Enter a 2-3 sentence description of the bug, the steps you took that triggered it and the symptoms of the bug.
 * Copy MFractors version information by opening the **About** dialog (**Help** -> **MFractor** -> **About**) and click **Copy Build Details Into Clipboard**.

## What is the .mfractor folder?
The `.mfractor` folder is MFractors working directory that contains several SQLite database that are generated when MFractor indexes your projects. These databases are essential for many of MFractors features. These databases are constantly regenerated

It is safe to delete whenever you want however some features for  won't work correctly without it.

## Should I check .mfractor into source control?

No, you should not check the `.mfractor` folder into source control.

If you are using git, append the following text to the end of your `.gitignore` to exclude `.mfractor`:

```
*.mfractor/
```

The VisualStudio .gitignore that is available on www.github.com ignores the .mfractor folder by default.
