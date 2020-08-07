!!! quote "Copy the identifier an embedded resource to the clipboard"

## Introduction

In .NET, we can bundled assets into our assemblies through embedded resources. Embedded resources can be retrieved at runtime as a stream usings it's **Resource ID**.

Consider the following code snippet:

```
var assembly = Assembly.GetExecutingAssembly();
var resourceName = "MyCompany.MyProduct.MyEmbeddedResource.txt";

using (Stream stream = assembly.GetManifestResourceStream(resourceName))
using (StreamReader reader = new StreamReader(stream))
{
    string result = reader.ReadToEnd();
}
```

In this example, we are retrieving the resource with the **Resource ID** of `"MyCompany.MyProduct.MyEmbeddedResource.txt"` from the current assembly. This resource ID is specified in a project items **Properties**, located in the

To locate the resource ID for a given embedded resource, we need to open the solution items **Property Explorer** and locate the resource ID field.

To make it easier to retrieve the resource ID for an embedded resource, MFractor provides the **Tools** menu shortcut **Copy Resource ID To Clipboard**.

## Using Copy Resource ID To Clipboard
To access the **Copy Resource ID To Clipboard** shortcut, right click on a file that is an embedded resource in the solution explorer, navigate to the **Tools** menu and choose **Copy Resource ID To Clipboard**.

![Using the Copy Resource ID to clipboard shortcut](/img/utilities/copy-resource-id-to-clipboard.png)

The resource ID for that project file is copied to your clipboard, ready for use in code.
