!!! quote "Answers to commonly asked questions"

## Do I need to buy a separate license for Mac for Windows?

An MFractor license works in both MFractor for Windows and Mac.

## Where do I find the latest version of MFractor?

### Visual Studio Macs

The latest version of MFractor for Visual Studio Mac can be found at:

https://github.com/mfractor/mfractor.releases

### Visual Studio Windows

The latest version of MFractor for Visual Studio Windows can be found in the Visual Studio Marketplace:

https://marketplace.visualstudio.com/items?itemName=MFractorPtyLtd.MFRACTOR-VS-WINDOWS

## What version of Visual Studio does MFractor support?

### Visual Studio Mac

MFractor for Visual Studio Mac supports Visual Studio 2019 and higher. We always track the latest stable release.

### Visual Studio Window

MFractor for Visual Studio Windows supports Visual Studio 2019 and higher.

## How do I get a refund?

Please email matthew@mfractor.com and request a refund within 30 days of purchase.

But, boy oh boy, we are sad to see your go! 😭

## Do you offer company licenses?

Yes! We can issue your company a license for any number of seats.

To get a company license, please purchase your license at [www.mfractor.com/buy](https://www.mfractor.com/buy).

Alternatively, please email matthew@mfractor.com requesting an invoice for purchasing.

## I require an invoice or quote to purchase MFractor, can you provide one?

Yes, we offer payment and purchasing of MFractor licenses through invoice (fulfilled via Paypal payments).

We can also provide quotes on the cost of an MFractor License purchase should you require one for your purchase order.

## How do I report a bug?

To report a bug, please file an issue on our GitHub issues tracker at https://github.com/mfractor/mfractor-feedback/issues

Please see our [Support](/support) documentation for detailed information on reporting a bug.

## I've got a great feature idea, how do I request it?

Fantastic! We'd love to hear it and make it a reality.

Firstly, please file an issue on our GitHub issues tracker at https://github.com/mfractor/mfractor-feedback/issues with a brief description of the feature and how it would work.

Matthew or Rafael will then get in touch and request a feedback call so that we can flesh out the idea and make it a reality.

## I'd like to try MFractor Professional, how do I get a trial?

To request an MFractor Professional trial, please email matthew@mfractor.com.

## How do I recover my MFractor Professional license?

To recover your MFractor Professional license, please email matthew@mfractor.com requesting your license.

## Where can I find MFracor's release notes?

MFractors release notes can be found here:

 * [MFractor for Visual Studio Mac Release Notes](/release-notes/mac/current)
 * [MFractor for Visual Studio Windows Release Notes](/release-notes/windows/current)

## Does MFractor support the Preview versions of Visual Studio?

No, we do not officially support the preview versions of Visual Studio Mac or Windows.

The extension *may* work if installed from file, however, we do not officially target or support any form of the Visual Studio previews.

Install and use MFractor within the preview versions of Visual Studio at your own risk.

## MFractor is not visible in Visual Studio Macs Extension Manager.

MFractor is usually found in the Gallery tab of the Extension Manager under **IDE Extensions**; you can use the top right search bar to locate

If you are unable to see MFractor in the Extension Manager, firstly, please check that you are on the stable channel of Visual Studio Mac.

If you are on the stable channel and are unable to locate MFractor, please download a suitable release from the [Extensions Site](https://github.com/mfractor/mfractor.releases) and then [install from file](/installation-and-setup);

## I'd like to write a blog about MFractor.

Great! We love people blogging about our product and sharing the love.

Please email matthew@mfractor.com and we will set you up with:

 * A 30-day trial license to explore the software.
 * A call to run you through the software.
 * Logos and design assets for MFractor's branding.

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

## How do I uninstall MFractor for Visual Studio Windows manually?

Locate the **VSIXInstaller** executable and run the following command:

```
C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE>VSIXInstaller.exe /u:9e8ace0e-61dd-486f-bfeb-0c7ad1fc0b1c
```

Our VSIX identifier is `9e8ace0e-61dd-486f-bfeb-0c7ad1fc0b1c`.

## Can you help me make a Visual Studio extension?

Sure thing, we are happy to help the community get started creating Visual Studio extensions for both Mac and Windows.

Please email matthew@mfractor.com requesting assistance and he'll get in touch to organise a call.

## Are you available for hire to develop Xamarin applications?

Yes, we are.

As tools developers, we are very skilled at building Xamarin applications.

Please make a services enquiry to Matthew Robbins at matthew@mfractor.

If we are unable to develop your app, we have a network trusted development partners in the United States, Europe, Australia and Singapore who can also develop your app that we will put you in touch with.

## Are you available for hire to develop Visual Studio extension?

Yes, we are.

Please make a services enquiry to Matthew Robbins at matthew@mfractor.

## What is the licensing agreement?

Please see our [End User License](/legal/end-user-license.pdf).

## What is your privacy policy?

Please see our [Privacy Policy](/legal/privacy-policy.pdf).
