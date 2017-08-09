
## Using MFractor.Annotations

*Using the MFractor.Annotations library to power mobile-specific C# code diagnostics*

## Introduction

The MFractor.Annotations library is a Nuget package that powers a suite of mobile-specific code diagnostics. When this library is installed and used in a .NET project, developers can annotate their code with MFractor attributes to activate features like the [Check Views Exist In Layout](/code-analysis/csharp/android/#check-views-exist-in-layout) C# code analyser.

## Installing the MFractor.Annotations NuGet

To add the MFractor.Annotations library into your project:

**Right click on 'Packages' and select 'Add Packages...'**

![Adding a package to a project](/img/annotations/add-packages.png)

**Search for 'MFractor.Annotations' and select 'Add Package'**

![Adding a package to a project](/img/annotations/mfractor-annotations.png)

## Targeting A Layout In Xamarin.Android

When working in Xamarin.Android, developers use layouts to define the UI contents for an `Activity`, `Fragment`, `View` etc. A layout is connected to these UI components by either an `SetContentView` call (for Activities) or a `Inflate` call. Developers then retrieve views from within that layout using the `FindViewById` method.

For example:

**Main.axml**
```
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:orientation="vertical"
    android:layout_width="match_parent"
    android:layout_height="match_parent">
    <Button
        android:id="@+id/myButton"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="@string/hello" />
</LinearLayout>
```

**MainActivity.cs**
```
[Activity(Label = "HelloMFractor", MainLauncher = true, Icon = "@mipmap/icon")]
public class MainActivity : Activity
{
    protected override void OnCreate(Bundle savedInstanceState)
    {
        // Set our view from the "main" layout resource
        SetContentView(Resource.Layout.Main);

        Button button = FindViewById<Button>(Resource.Id.myButton);
        Button otherButton = FindViewById<Button>(Resource.Id.myOtherButton);
    }
}
```

In the **MainActivity.cs** example above, the second `FindViewById` call points to the `Button` declaration, `myOtherButton`, that is not declared in the Main.axml layout. At runtime the `FindViewById` call will fail

MFractor.Annotations includes the attribute `UsesLayout` that we can attach to a class declaration to tell MFractor what the expected layout for a call is
**MainActivity.cs**
```
[MFrator.Annotations.Android.UsesLayout(Resource.Layout.Main)]
[Activity(Label = "HelloMFractor", MainLauncher = true, Icon = "@mipmap/icon")]
public class MainActivity : Activity
{
  // ...
}
```

 This activates the [Check Views Exist In Layout](/code-analysis/csharp/android/#check-views-exist-in-layout) C# analyser; uses of `FindViewById` will be inspected and check that the view referenced by the `Resource.Id` expression inspected exists in the layout specified by the `UsesLayout` attribute:

 ![Validating id usages with the UsesLayout attribute](/img/annotations/missing-view.png)
