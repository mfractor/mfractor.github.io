!!! quote "Inspections "

## Introduction

This documentation article outlines the XAML analysers and code fixes that are available for static resource expressions.

## Missing Static Resource

When referencing a resource using a `StaticResource` expression, MFractor will validate that the given resource key is available in the current

![Example of the undefined static resource analyser](/img/xamarin-forms/undefined-static-resource.png)

### Using A Nearly Named Resource

When MFractor detects that key provided to a `StaticResource` expression is unresolved, however, it closely matches another the name of another available resource name, MFractor suggests that resource and provides a code-fix to

![Example of the nearly named static resource fix](/img/xamarin-forms/nearly-named-static-resource.png)

## Static Resource Return Type Mismatch

When a static resource expression returns a type that does not match the expected type of the targeted attribute, it will warn of a type mismatch between the expected type of that attribute and the expressions return type.

![Example of the static resource return type mismatch analyser](/img/xamarin-forms/static-resource-return-type-mismatch.png)

!!! info "If the property type has a `TypeConverterAttribute` applied to it (EG: to enable converting a string value into a LayoutOptions), MFractor will not analyse the type flow."

## Ambiguous Static Resource

When two or more resources are defined using the same name but in different scopes, the final result of a `StaticResource` expression is ambiguous.

For example, if a page defines a resource named `primaryColor` and the App.xaml also defined a resource named `primaryColor`, we now have two resources with the same name available to the page. It is *ambiguous* which one we are referencing when we use the expression `{StaticResource primaryColor}`.

The **Ambiguous Static Resource** analyser detects when an expressions resource key resolves to more than one available resource and provides a warning that the referenced resource is ambiguous.

![Example of the nearly ambiguous static resource analyser](/img/xamarin-forms/ambiguous-static-resource.png)

## No Key Provided For Static Resource

When declaring a new resource inside a `ResourceDictionary`, we include an `x:Key` attribute to define the key that is used to lookup the resource with a `StaticResource` expression.

Unless the element is a style, all resources must include a resource key.

![Example of the undefined static resource analyser](/img/xamarin-forms/missing-resource-key.png)

To fix this issue, hover over the code issue and in the tooltip, click on the **Generate a key for this resource** fix.

## Resource Key Conflict

When declaring a new resource for a page or control, it is common to accidentally use the same key multiple times (either in the same page or )

This analyser inspects the `x:Key` attribute of each resource definition and verifies that it is unique within the current scope.

![Example of the nearly ambiguous static resource analyser](/img/xamarin-forms/resource-key-conflict.png)

## OnPlatform Return Type Mismatch

When a static resource expression returns an `OnPlatform` element, MFractor will verify that the type specified by the `x:TypeArguments` is compatible with the expected type of the attribute.

![Example of the OnPlatform return type mismatch](/img/xamarin-forms/onplatform-return-type-mismatch.png)
