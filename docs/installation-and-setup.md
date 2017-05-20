
##Installation And Setup

*Installing, activating and updating MFractor*

##Introduction

This document covers how to install, activate, update and uninstall MFractor for Visual Studio Mac.

## Install Using The Installer Script



## Get MFractor

The latest version of MFractor for Visual Studio Mac can be downloaded from the addin server, [addins.mfractor.com/MFractor.mpack](http://addins.mfractor.com/MFractor.mpack).

If you'd like an older version of MFractor, these can be found under our old release archives. Simply navigate to [addins.mfractor.com/releases](http://addins.mfractor.com/releases), open the folder for the version you'd like and download the .mpack file.

##Install Using MFractor.Installer Addin

We can also install install MFractor into Visual Studio Mac by using the MFractor.Installer helper addin.

This addin lives inside the Addin Manager in Visual Studio Mac, under **Gallery** -> **IDE extensions**.

Open up Visual Studio Mac and click on the **Visual Studio Mac** menu and then **Addins...**

![addin manager location](img/setup/addin-manager-menu.png)

Once the Addin Manager opens, click **Gallery** and under **IDE extensions** locate **MFractor.Installer**. If this isn't present, hit the **Refresh** button to update the Gallery listings.

![addin manager location](img/setup/mfractor-installer-location.png)

Once you've located **MFractor.Installer**, left click on it to select it. In the right hand detail view, click **Install**. Visual Studio Mac will prompt you for confirmation, click **Install**

![install mfractor.installer](img/setup/install-mfractor-installer.png)

You will then see a download dialog appear and MFractor will download and install.

![mfractor.installer download window](img/setup/mfractor-installer-download-window.png)

## Install MFractor Manually

MFractor can be installed directly through the addin manager's **Install from file** button.

Firstly, download the latest version of MFractor for Visual Studio Mac at [addins.mfractor.com/MFractor.mpack](addins.mfractor.com/MFractor.mpack)

Open up Visual Studio Mac and click on the **Visual Studio Mac** menu and then **Addins...**

![addin manager location](img/setup/addin-manager-menu.png)

Within the Addin Manager, click the **Install from file** button in the bottom left of the Addin Manager.

Browse to **MFractor.mpack** and then select **Open**:

![How to install MFractor](/img/setup/install-mfractor.gif)

## Activating MFractor Free

MFractor comes in both a free and a paid version. The free version of MFractor

To use MFractor, you need activate it using your email address; this will enable the free version of MFractor only. To

First things first, **close the Addin Manager**. There is a known bug that blocks the email entry field from receiving keyboard when the Addin Manager is open. It's a pain and we are working on fixing this.

To activate MFractor, enter you email and then click **Activate**.

![activation dialog](img/setup/mfractor-activation-dialog.png)

Tada! You are now ready to rock.

## Activating MFractor Premium

Download and locate your license file (which ends with the extension `.lic`). When purchasing MFractor Premium, this license file will be provided in an email. In this example, our license file is located on our desktop and is called `license.lic`.

 ![MFractor license file](/img/licensing/license-file.png)

Open Visual Studio for Mac. If you have not activated MFractor with an email address, close the activation window.

 ![Close Activation Dialog](/img/licensing/close-activation-dialog.png)

In the main Visual Studio for Mac menu bar, select **Help**, then **MFractor** and then finally **License Information**.

This will open the licensing window where you can import or remove an MFractor Premium license.

Next, click on the **Import License** button, browse to where our license is located (`license.lic`) and double click it. This will import the license into MFractor.

![Importing an MFractor Premium license file](/img/licensing/import-licesne.gif)

Voila, you now have a valid active MFractor Premium installation.

![MFractor Premium License Information](/img/licensing/valid-license.png)

The licensing window will list:

 * **Licensed To** - The full name of the person that the MFractor Premium license is issued to.
 * **License Email:** - The email that this MFractor Premium license is issued against.
 * **License Type and Expiry Date** - The type of license issued (Premium, Trial or Free) and when that license expires.

## Deactivating Your Premium License

If you'd like to remove a license from MFractor, you can open the MFractor license information window and click **Remove License**.

**IMPORTANT: This is a destructive operation, you cannot undo removing a license but you can re-import a new license.**

After removing a license, you will be automatically downgraded to a free MFractor license. This allows usage of most features apart from C# code actions, mobile-specific C# code diagnostics and configuration file support.

[View the free vs paid feature map here](/mfractor-premium.md#feature-map).

## Updating MFractor

When MFractor installs into Visual Studio Mac, it'll register itself into Visual Studio Macs addin updater.

This means that Visual Studio Mac will automatically prompt you that an update is available.

However, you can check for update at any time by opening the **Visual Studio Mac** main menu and selecting **Check for Updates...**

![update mfractor](img/setup/update-mfractor.png)

Visual Studio Mac will check the MFractor addin server for updates and prompt you to update if there is a new version!

##Uninstalling MFractor

You can uninstall MFractor through the addin manager at any time.

Select the **Visual Studio Mac** main menu and then **Addins**

Under **Gallery** then **IDE extensions** select the MFractor addin list item and then click **Uninstall**

You will be prompted to uninstall the addin, confirm uninstallation by clicking **Uninstall**

![uninstall mfractor ](img/setup/uninstall-mfractor.png)
