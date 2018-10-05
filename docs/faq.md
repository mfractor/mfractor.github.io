## Frequently Asked Questions

*Answers to some commonly asked questions*

## How can I get help or support?

If something doesn't work or you'd like a sweet new feature added, be patient and contact me:

 * Via Twitter: Give me a holla at [@matthewrdev](https://twitter.com/matthewrdev)
 * Via Slack: Drop in to chat anytime in the [#mfractor Xamarin Slack sub-channel](https://xamarinchat.slack.com/archives/mfractor).
 * Via Email: Shot an email to [hello@mfractor.com](hello@mfractor.com)

## What version of Visual Studio Mac is MFractor compatible with?

The latest version of MFractor always targets the current stable channel version of Visual Studio Mac.

## Does MFractor support Visual Studio Windows?

MFractor **does not** support Visual Studio Windows. This is on the roadmap for the future but there is no concrete timeline. A news announcement will be published when MFractor for Visual Studio Windows is nearing an alpha release.

## How do I file a bug report?

If you notice a bug while you are using MFractor, please file a bug report by taking the following steps:

 * Go to the [MFractor Feedback](https://github.com/mfractor/mfractor-feedback/issues/new) repository.
 * Enter a 2-3 sentence description of the bug, the steps you took that triggered it and the symptoms of the bug.
 * Copy MFractors version information by opening the **About** dialog (**Help** -> **MFractor** -> **About**) and click **Copy Build Details Into Clipboard**.

## What is the .mfractor folder?
The `.mfractor` folder contains is MFractors working directory. It continas the meta-data that is generated when MFractor indexes your Android projects. This meta-data is used to power resource tooltips and resource go-to declaration for Android projets.

It is safe to delete whenever you want however some features for Android development won't work correctly without it.

## Should I check .mfractor into source control?

No, you should not check `.mfractor` into your source control.

If you are using git, append the following text to the end of your `.gitignore` to exclude `.mfractor`:

```
*.mfractor/
```
