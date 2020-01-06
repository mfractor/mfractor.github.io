!!! quote "Quickly generate a class stub implementation for an interface"

## Introduction

The _Generate Implementation for Interface_ code action allows you to quickly generate a class implementing stubs for the members of an interface in a convenient and quick way, avoiding the hurdle of having to create a file from the standard interface and having to type the class implementation.

## Using the Code Action

This code action appears on the context menu of Visual Studio code editor when the cursor are placed where the action may take. For this code action, it can be invoked from the interface declaration file when the cusor is over the interface name or it's body, except when you are over a method name or other symbol.

There are several ways you can invoke the code action, you can use the Intellisense Suggestions or the `Option/Alt` + `Enter` keyboard shortcut:

![Invoking the Generate Interface Implementation Code Action from the Intellisense Suggestions or Keyboard Shortcut](/img/csharp/code-actions/generate-interface-implementation-01.png)

Or using the context menu from the right click of the mouse:

![Invoking the Generate Interface Implementation Code Action from the Context Menu](/img/csharp/code-actions/generate-interface-implementation-02.png)

Either way will display the _Generate Interface Implementation_ dialog, that allows you to setup a few options and see a preview of the code that will be generated:

![The Generate Inteface Implementation Dial](/img/csharp/code-actions/generate-interface-implementation-03.png)

The available options on this dialog are:

* **Name**: the name of the class that will implement the interface. Defaults to the name of the interface without the `I` prefix, in case this convention is used, or empty if the name omits the prefix.
* **Project**: you can select the destination project where the implementation will be created from the project where the interface is declared itself or any project that references this one.
* **Folder**: the folder in the destination project where the class will be created. Defaults to the same folder where the interface resides. You can type sub-folders separated by slash `/`.

In the right-side you can preview the code implementation. The tool will generate stubs depending on the type of interface element being implemented:

* **Methods**: provide an empty method with a single `throw new NotImplementedException()` call stub.
* **Properties**: provide an auto-property implementation including `get` and/or `set` declarations.
* **Events**: provides the default event implementation.

When clicking on the `Generate` button the new class will be generated and automatically opened on the code editor.
