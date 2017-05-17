## Unused Xml Namespace

Validate that xmlns attributes that declare a namespace and assembly that is used within the current document.

## Obsolete Property Used

Checks for attributes that are marked as obsolete/deprecated.

## x:Name Has Invalid Characters

Checks that x:Name expressions define a valid code-behind variable name. A value declared by an x:Name attribute must start with a @, _ or a-Z character followed by underscores or alpha-numeric characters.

## Duplicate Code Behind Field Declarations

Checks that the value assigned to an `x:Name` attribute is unique within the scope of the document.

## Event Handler Exists In Code Behind Class

Checks that an event callback referenced referenced by an attribute value exists in the code behind class.

## Event Handler Signature Mismatch

Checks that the signature for the event callback in a code behind class matches the expected signature for the property it is assigned to.

## Validate Binding Expressions Return A Property

Evaluates a `Binding` expression and validates that it points to property within the binding context. This analyser requires an explict or implicit binding context.

## Binding Expressions Resolve

Inspects `Binding` expressions and validates that the symbol referred to in the binding context exists. This analyser requires an explict or implicit binding context.

## Binding Expression Return Type Mismatch

Validates that the .NET symbol returned by a binding expression matches the expected type for the property.

## Value Converter Input Type Mismatch

Inspects the `Converter` property of a `Binding `expression and validates that the input type is correct. This analyser requires that the `IValueConverter` implementation uses the [`ValueConversion`](/xamarin-forms/value-converter-type-safety.md) attribute to declare it input type.

## Value Converter Output Type Mismatch

Inspects the `Converter` component of a `Binding` expression and validates that the returned output type is valid for the parent attribute. This analyser requires that the `IValueConverter` implementation uses the [`ValueConversion`](/xamarin-forms/value-converter-type-safety.md) attribute to declare it input type.

## Unresolved .NET Symbols Within Xaml Expression

Inspects a .net symbol reference (eg `local:MyClass.MyProperty`) and validates that the symbol portion ('MyClass.MyProperty') resolves to a .NET symbol within the current project and it's references.

## Unresolved Namespace Within Xaml Expression

Inspects a .net symbol reference (eg `local:MyClass.MyProperty`) and validates that the namespace portion ('local') resolves to a xmlns declaration in the current document.

## x:Static Return Type Mismatch

Validates that the .NET symbol returned by an `x:Static` expressions matches the expected type for the property.

## StaticResource Return Type Mismatch

Validates that the symbol returned by a `StaticResource` expression matches the expected type for the property.

## Undefined Static Resource Usage

Validates that the element referenced by a `StaticResource` expression resource lookup resolves to a resource defined in the xaml file.

## Generic Usage Is Missing x:TypeArguments

Inspects generic classes that are instantiated through Xaml and validates that an `x:TypeArguments` attribute or property assignment node is present.

## x:TypeArguments Used On Non-Generic Class

Inspects for usages of `x:TypeArguments` on elements that are non-generic classes.

## Unknown Type Provided To Generic

Inspects usages of `x:TypeArguments` and validates that the type provided exists.

## Referenced Attribute Member Exists In Parent Type

Checks that an attribute resolves to a member within its parent type.

## Property Setter Attribute Has Value

Checks that a value has been provided to an attribute property. This check is skipped if the property type is a string or a valueconverter or type converter is in use.

## Property Node Maps To Member In Parent Type

Checks that a property node resolves to a member within its parent type.

## Property Setter Node Has Value

Checks that a value has been provided to a node Property setter (EG `<MyClass.MyProperty></MyClass.MyProperty>`).

## Property Setter Type Mismatch

When using MyClass.MyProperty node setter syntax, validate that the inner child node returns a .NET object of the correct type for the property.

## Duplicate Resource Dictionary Keys

Validates the each resource entry within a resource dictionary has a unique key.

## Resource Entry Does Not Define Key

Validates the elements provided to a resource dictionary supply an `x:Key` attribute to declare their resource dictionary key.

## Missing Microsoft Schema

Inspects at the root xaml node and verifies that it references the Microsoft Xaml schema: `http://schemas.microsoft.com/winfx/2009/xaml`. This schema is required for Xamarin Forms Xaml documents.

## Unresolved Xml Namespace

Checks that the namespace used on the xml nodes is defined within the current document.

## Unresolved Xmlns Assembly

Checks that the 'assembly' component of an xmlns statement resolves to an assembly referenced by the project.

## Class Does Not Have Attached Property

Looks for attached properties (for example `Grid.Row`) and validates they exist in the class that they are attempting to use.

## Xaml Node Cannot Be Instantiated

Checks that an xml node can be instantiated; xaml elements must resolve to a non-abstract, concrete class implementation.

## Unknown Static Property Value

For attributes that accept a class object, inspects that the literal value maps to a static property or field in the class type. For example, the `LayoutOptions` class has the static fields `Fill` or `CentreAndExpand` that can be used a literal attribute values. If `CentreAndFill` was provided (an invalid value), this analyser would inspect the `LayoutOptions` class for a static field named `CentreAndFill` and trigger an analysis error when it couldn't be found.

## Validate Value Types

Inspects the input provided to attributes that expect value types (int, bool, double etc) and validates that the input is valid.

## Xaml Node Resolves

Checks that xaml nodes map to a valid .NET symbol.

## OnPlatform Return Type Mismatch

Checks the type returned by a `Xamarin.Forms.OnPlatform` element is valid with the parent property type.

## OnIdiom Return Type Mismatch

Checks the type returned by a `Xamarin.Forms.OnIdiom` element is valid with the parent property type.

## Property Setter Node Misuse

Inspects for property setters that don't apply to the outer class. For example, if a developer used OnIdiom.Phone inside a OnPlatform element, the OnIdiom.Phone property setter makes no sense within the given context.

## Duplicate AutomationIds

Inspects a Xaml document for occurances of duplicate `AutomationId` declarations.

## Empty Code Behind Field Declaration

Inspects occurances of the `x:Name` attribute and validates that a value is assigned; empty `x:Name` expressions generate an empty named code-behind field, causing compilation errors.

## Redundant Code Behind Field On Root Node

Inspects the root Xaml node for a redundant code behind declaration (`x:Name="fieldName"`); a code behind field should not be declared on the root element as the code behind class can already be accessed using `this`

## Duplicate Namespace Declaration

Checks that an xml namespace points to a unique namespace and assembly. For example if both `xmlns:local="clr-namespace:MFractor.Licensing.MobileApp"` and `xmlns:myassembly="clr-namespace:MFractor.Licensing.MobileApp"` were declared, this analyser would warn that they both reference the same assembly and namespace.

## Code Behind Class Type Mismatch

Inspects the type defined by the root Xaml node and compares it against the base type of the code behind class to check for a type-mismatch.

## Root Element Defines Code Behind Class

Checks that the root xaml node defines a code behind class using the `x:Class` directive

## Unused Resource

Inspects that resource dictionary entries are used via the `StaticResource` markup extension expression within this document.

## ContentView Has Multiple Direct Children

Inspects usages of the `ContentView` element and checks that it only has a single child view. Assigning multiple children into a `ContentView` is a common mistake where the developer usually intended to wrap the chid views with a `Grid` or a `StackLayout`.

## ContentPage Has Multiple Direct Children

Inspects usages of `ContentPage` and checks that it only has a single child view. Assigning multiple children into a `ContentPage` is a common mistake where the developer usually intended to wrap the chid views with a `Grid` or a `StackLayout`.

## Inner Element Is Not Resource Dictionary

Inspects the inner element(s) of a `MyView.ResourceDictionary` property setter node  and checks that a resource dictionary is the inner element. It is common to forget to use a resource dictionary before adding resources

## Referenced Code Behind Field Exists

Inspects usages of the `x:Reference` expression and validates the referenced element has been declared within the document. `x:Reference` expressions are used to resolve another Xaml node has a code behind field defined using the `x:Name` attribute.
