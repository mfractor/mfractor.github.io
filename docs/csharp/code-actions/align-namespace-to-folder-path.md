!!! quote "Correct a files namespace so that it matches its folder path"

!!! info "This feature is available in [MFractor Professional](https://www.mfractor.com/products/mfractor-professional)"

## Introduction

The _Align Namespace To Folder Path_ code action allows you to change a files namespaces so that it uses the projects default namespace joined with name of each folder. This code action allows you to correct a files namespace so that it represents the folder path it lives within the project.

Consider the following project and folder path:

 * MyCompany.MyApp.csproj (Default namespace =  `MyCompany.MyApp`)
   * Services/
      * Login/
          * AuthenticationService.cs

In `AuthenticationService.cs`, the current contents are:

```
namespace MyCompany.MyApp
{
  public class AuthenticationService
  {
  }
}
```

The namespace in the `AuthenticationService.cs` file is `MyCompany.MyApp`, which differs to the folder path `Services/Login/`.

## Using the Code Action

This code action appears in quick actions menu when the cursor is placed on a namespace declaration that does not aligned to the **ProjectDefaultNamespace.FolderPath** structure.

![Invoking the Align Namespace To Folder Path from the Quick Fix or Keyboard Shortcut](/img/csharp/code-actions/align-namespace-before.png)

After confirming the code action, MFractor will change the namespace to use the project default namespace and each folder the file is placed within:

![The result of the Align Namespace To Folder Path code action](/img/csharp/code-actions/align-namespace-after.png)
