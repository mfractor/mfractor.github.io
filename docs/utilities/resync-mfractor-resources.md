!!! quote "Synchronizes important metadata used by MFractor features."

## Introduction

Mfractor keeps an internal database of metadata about the solution that you're working on that is used to speed up several features. It is created and synchronized automatically and for the most part it should be invisible to end-user. But there are times that this database may be out of sync, impacting on the usage of some features.

The `Resync MFractor Solution Resources` is a utility tool for MFractor internal maintenance that forces this synchronization procedures to run. It can be accessed by the `Tools` menu on the MFractor top menu:

![](/img/utilities/resync-meta-macos.png)
>Resync command on macOS

![](/img/utilities/resync-meta-windows.png)
>Resync command on Windows

You don't need to use this option instead asked by MFractor support personal. You can also try to run it if you find some feature misbehaving, its safe a procedure and won't cause any harm to your project source files or your development environment.