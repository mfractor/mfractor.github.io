##Resource Expressions And Code Navigation

*Learn the C# and xml expressions that activate tooltips and go-to declaration in MFractor for Android*

##Overview
If you’re a Xamarin.Android developer building apps using the native APIs then chances are you spend a lot of time navigating resource code.

This becomes tedious when you are constantly doing manual searches for your target, browsing through the find results and then clicking the search result to jump to it. What’s more, using go-to declaration on a C# resource symbol takes you to its integer id! It’s tremendously frustrating and a massive time-waster.

And this problem gets worse the bigger your project is; large Android applications can have dozens to hundreds of xml resources that need to be scanned each time a search takes place.

MFractor addresses these navigation issues by overriding the default “go to declaration” keyboard shortcuts when you are in the context of a resource expression.

These expressions come in 2 flavours:

 * C#: Code expressions within C# that access the generated Resources class contained in the Resources.Designer.cs file. For instance; Resource.Layout.myLayout.
 * XML: Code expressions within Android xml resources that point to another resource. For instance; @layout/myLayout.

When MFractor detects the cursor is within one of these expressions, resource tooltips and go-to-declaration become active. This enables fast and efficient code navigation.

That is much faster than manual searching! Now lets go over each of these expression types.

##C# Resource Expressions

For C#, resource expressions are always resolved against the Resource.Designer.cs file that is generated alongside a project. This section assumes a basic familiarity of the Resource.Designer.cs file; if this is a new concept I suggested reading the [Android Resource Basics](https://developer.xamarin.com/guides/android/application_fundamentals/resources_in_android/part_1_-_android_resource_basics/) page in Xamarins documentation.

The components of a supported resource expression are formatted like so:

```
[Project Namespace].[Resource].[ResourceType].[ResourceName]
```

Where:

 * [Project Namespace] is the project namespace that the Resources designer class resides. This component is either:
  * Implicit: The encapsulating namespace is the same as the resource designers namespace or a using statement provides the resource designer class.
  * Explicit: The expression explicitly uses the namespace that owns the resource class.
 * Resource is the constant Resource class that wraps the declarations of the ResourceType sub-classes.
 * ResourceType is the nested resource type class.
 * ResourceName is the name of the resource being referenced. MFractor will only trigger its behaviour when your caret or mouse cursor is over this component of the c# resource expression.

An example of a valid expression would be:

```
Resources.String.my_string;
```

When your cursor is over the my_string component of this expression, MFractor will attempt to resolve a string resource named my_string.

##Xml Resource Expressions

Xml resource expressions come in 3 different categories:

 * Reference expressions point directly to a resource. They begin with the ‘@’ character.
 * Declarative expressions declare a new resource. These are only used with ids. They begin with a ‘@+’ character sequence.
 * Theme expression point to a component of the currently scoped theme. They begin with a ‘?’ character.

Reference and declarative expression are structured with the following syntax:

```
@[+][PackageName:]resourceType/resourceName
```

Where:

 * @[+] is the resource reference symbol.

 * PackageName is an optional component that points to the package the resource is within.
 * resourceType is the resource type.
 * resourceName is the name of the resource.

An example of this would be:

```
@string/my_string
```

When your cursor is any component of this expression, MFractor will attempt to resolve a pre-existing string resource named my_string.

Lastly, theme resource expressions point to a component of the current theme. These are structured with the following syntax:

```
?[PackageName:][ResourceType/]themeItemName
```

Where:

 * PackageName is the optional package name the theme component resides within.
 * ResourceType is the optional resource type of the theme component. This is typically inferred.
 * themeItemName the name of the theme item.

## Resource Go To declaration

## Find All Resource Usages

## Resource Tooltips

## Image Tooltips
