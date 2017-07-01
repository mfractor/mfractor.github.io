
##Installation And Setup

*Installing, activating and updating MFractor for Visual Studio Mac*

## Install Using The Installer Script

The fastest way to install MFractor is using the installation script:

[Download the MFractor script](http://addins.mfractor.com/MFractor.Installer.zip)

This will download **MFractor.Installer.zip**; this contains the installer app.

To install:

 0. *Close Visual Studio for Mac.*
 1. Double click on **MFractor.Installer.zip** to extract the archive.
 2. Open the folder **MFractor**./
 3. Double click on **MFractor.Installer.app**.
 4. If prompted, confirm installation.
 5. Wait for MFractor to install into Visual Studio for Mac.
 6. After installing, Visual Studio for Mac will open and prompt you to activate.

Done!

![Installing MFractor for Visual Studio Mac using the install script](/img/setup/installation.gif)

## Install Using MFractor.Installer Extension

We can also install MFractor into Visual Studio Mac by using the MFractor.Installer helper extension.

This extension lives inside the Extension Manager in Visual Studio Mac, under **Gallery** -> **IDE extensions**.

Open up Visual Studio Mac and click on the **Visual Studio** menu and then **Extensions...**

![Extension manager location](img/setup/addin-manager-menu.png)

Once the Extension Manager opens, click **Gallery** and under **IDE extensions** locate **MFractor.Installer**. If this isn't present, hit the **Refresh** button to update the Gallery listings.

![Extension Manager location](img/setup/mfractor-installer-location.png)

Once you've located **MFractor.Installer**, left-click on it to select it. In the right-hand detail view, click **Install**. Visual Studio Mac will prompt you for confirmation, click **Install**

![install mfractor.installer](img/setup/install-mfractor-installer.png)

You will then see a download dialog appear and MFractor will download and install.

![mfractor.installer download window](img/setup/mfractor-installer-download-window.png)

## Install MFractor Manually

MFractor can be installed directly through the Extension Manager's **Install from file** button.

Firstly, download the latest version of MFractor for Visual Studio Mac at [addins.mfractor.com/MFractor.mpack](http://addins.mfractor.com/MFractor.mpack)

Open up Visual Studio Mac and click on the **Visual Studio** menu and then **Extensions...**

![Extension Manager location](img/setup/addin-manager-menu.png)

Within the Extension Manager, click the **Install from file** button in the bottom left of the Extension Manager.

Browse to **MFractor.mpack** and then select **Open**:

![MFractor](/img/setup/install-mfractor.gif)

## Activating MFractor Free

MFractor comes in both a free and a paid version. The free version of MFractor

To use MFractor, you need to activate it using your email address; this will enable the free version of MFractor only. To

First things first, **close the Extension Manager**. There is a known bug that blocks the email entry field from receiving keyboard when the Extension Manager is open

To activate MFractor, enter your email and then click **Activate**.

![activation dialog](img/setup/mfractor-activation-dialog.png)

Tada! You are now ready to rock.

## Activating MFractor Premium

Download and locate your license file (which ends with the extension `.lic`). When purchasing MFractor Premium, this license file will be provided in an email. In this example, our license file is located on our desktop called `license.lic`.

 ![MFractor license file](/img/licensing/license-file.png)

Open Visual Studio for Mac. If you have not activated MFractor with an email address, close the activation window.

 ![Close Activation Dialog](/img/licensing/close-activation-dialog.png)

In the main Visual Studio for Mac menu bar, select **Help**, then **MFractor** and then finally **License Information**. This will open the licensing window where you can import or remove an MFractor Premium license.

Next, click on the **Import License** button, browse to where our license is located (`license.lic`) and double click it to import the license into MFractor.

![Importing an MFractor Premium license file](/img/licensing/import-license.gif)

Voila, you now have a valid, active MFractor Premium installation.

**It is safe to delete the license file from its original location. MFractor stores the license inside itself.**

![MFractor Premium License Information](/img/licensing/valid-license.png)

The licensing window will list:

 * **Licensed To** - The full name of the person that the MFractor Premium license is issued to.
 * **License Email:** - The email that this MFractor Premium license is issued against.
 * **License Type and Expiry Date** - The type of license issued (Premium, Trial or Free) and when that license expires.

## Deactivating Your Premium License

If you'd like to remove a license from MFractor, you can open the MFractor license information window and click **Remove License**.

**IMPORTANT: This is a destructive operation, you cannot undo removing a license but you can re-import a new license.**

After removing a license, you will be automatically downgraded to a free MFractor license. This allows usage of most features apart from C# code actions, mobile-specific C# code diagnostics, and configuration file support.

[View the free vs paid feature map here](/mfractor-premium.md#feature-map).

## Updating MFractor

When MFractor installs into Visual Studio Mac, it'll register itself into Visual Studio Macs extension updater.

This means that Visual Studio Mac will automatically prompt you that an update is available.

However, you can check for update at any time by opening the **Visual Studio Mac** main menu and selecting **Check for Updates...**

![update mfractor](img/setup/update-mfractor.png)

Visual Studio Mac will check the MFractor extension server for updates and prompt you to update if there is a new version!

##Uninstalling MFractor

You can uninstall MFractor through the Extension Manager at any time.

Select the **Visual Studio Mac** main menu and then **Addins**

Under **Gallery** then **IDE extensions** select the MFractor extension list item and then click **Uninstall**

You will be prompted to uninstall the extension, confirm uninstallation by clicking **Uninstall**

![uninstall mfractor ](img/setup/uninstall-mfractor.png)
