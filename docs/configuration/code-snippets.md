## Code Snippets

*Using Code Snippets to completely customise the code that MFractor generates*

## Introduction

As a software developer and MFractor user you'll likely find that MFractor, by default, doesn't quite generate code that's suited to your projects conventions.

Luckily, we can configure many of MFractor's code actions to use a custom code snippet when generating code!

## Code Snippet Basics

MFractor uses the same conventions for code snippets as the Visual Studio family; you write a C# code block and replace areas that can be substituted with arguments enclosed in `$`.

For example, the following code snippet specifies the body for a property that calls the `NotifyPropertyChanged` method:

```
private $type$ _$name$;
public $type$ $name$
{
    get
    {
        return _$name$;
    }
    set
    {
        _$name$ = value;
        NotifyPropertyChanged(nameof($name$));
    }
}
```

To control the type of the new property, we've replaced each spot where the property type would be used with the code snippet argument `$type$`. Likewise, we've done the same with the `$name$` argument.

If the new property was a `string` with the name `Message`, MFractor would subsitute each occurance of `$type$` with `string` and each occurance of `$name$` with `Message` like so:

```
private string _Message;
public string Message
{
    get
    {
        return _Message;
    }
    set
    {
        _Message = value;
        NotifyPropertyChanged(nameof(Message));
    }
}
```

When possible, MFractor's internal code generators use a code snippet to create code. These code snippets are exposed as configurable properties and are named `Snippet`.

We can link

We can customise MFractor by providing code snippets through two sources: [Visual Studio for Macs snippets](#using-visual-studio-macs-code-snippets) and [code snippets included within your project](#using-project-code-snippets).

## Using Visual Studio Macs Code Snippets

To enable MFractor to use a code snippet from Visual Studio Mac, we need to create a code snippet inside Visual Studio Mac and then link it up through an MFractor config file.

In the top menu bar, click on **Visual Studio** and then **Preferences**:

![Access Visual Studio Macs code snippet editor through the preferences menu](/img/code-snippets/code-snippets-preferences-menu.png)

In the preferences window that opens, browse to **Code Snippets...** and then select **Add**:

![Visual Studio for Macs code snippets pane](/img/code-snippets/code-snippets-preferences-window.png)

This will open the **New template** wizard. For this code snippet we'll, define our code as below:

![Visual Studio for Macs code template pane](/img/code-snippets/code-template-window.png)

Next, create an MFractor project configuration file named `app.mfc.xml` in the root directory with the following content:

```
<mfractor>
  <configure id="com.mfractor.code_gen.forms.csharp.view_model_property"
    <property name="Snippet" source="ide" value="notify_changed_property"/>
  </configure>
</mfractor>
```

This will connect MFractor's [View Model Property Generator](/code-generation/xamarin-forms.md#view-model-property-generator) `Snippet` to the `notify_changed_property` code snippet.

## Using Project Code Snippets

MFractor can also use code snippets that are included within your project. This is useful as it allows you to include  code snippets amongst you team

To do this, create a new folder named **Snippets** in the root of your project:

Next,

 - Create an `*.mfc.xml` file.
 - Create a `Snippets` folder.
 - Identify the code action we want to replace
