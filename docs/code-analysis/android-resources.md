## Check For Invalid Android Xml Elements

Inspects an xml file for unknown elements. For example, a res/menu xml file may only contain 'menu', 'item' and 'group' elements.

## Check Public Android Resource Usage

Inspects Android resource usages and ensure that the resource referenced has been declared as public.

## Declarative ID In Style

Defining a style which sets android:id to a dynamically generated id can cause many versions of aapt, the resource packaging tool, to crash. To work around this, declare the id explicitly with &lt;item type="id" name="..." /&gt; instead.

## Detect Duplicate Plurals Entries

Inspects a 'plurals' resource entry for 'item' elements that have the same 'quantity' value.

## Check For Required Value

Checks that the input argument for an XML attribute matches the required value for that attribute. For example, 'xmlns:android' must always be 'http://schemas.android.com/apk/res/android'.

## Check For Invalid Characters In Value Resource Names

Checks that the 'name' attribute for value based resources do not contain invalid characters. Any character apart for 0-9, a-z, A-Z, '.' and '_' are considered to be an invalid character. This check prevents characters that are also operators (such as +, * or &) from being baked into the Resource.Designer.cs file when the resource ids are generated.

## Validate Flag Input

Validates that any flags provided to an xml attribute are valid.

## Valid Keyword Input

Validates that a keyword or sequence of flags provided to an xml attribute are valid. For instance, the installation location is doen by the 'android:installLocation' manifest attribute. This attribute only accepts 'internalOnly', 'auto' and 'preferExternal', any other value is a compilation error.

## Item Value Resource Is Valid

Checks that the content contained within an <item> tag that declares a value resource declaration is a valid format for its type.

## Mispelt Resource Type References

Checks that the resource references (EG: @string/myString) have a valid resource type component and suggests an auto-correction if possible.

## Multiple <uses-sdk> usages in manifest

Inspects the <application> element within the Android manifest for multiple declarations of the <uses-sdk> element. Only a single <uses-sdk> element is allowed.

## Drawable 9-patch reference check.

Checks that a drawable reference does not end with '.9'.

## Node Missing Required Attributes

Checks that a given resource node has all the mandatory attributes.

## Check Reference Type

Verifies that an attribute that expects a resource reference is provided a reference expression (@type/value) rather than a literal value.

## Validate quotations in <string> elements.

Verifies that quotation marks (' and ") are properly escaped when inside a string resource. For instance, single quotes (') must be escaped by a preceeding '\' unless the whole string is wrapped within double quotes ("). Furthermore, the use of double quotes must be escaped unless they enclose the entire string.

## Resource Value Format

Validates that a resource value (such as a dimension, color or percentage) is entered in the correct format.

## Values Resource Is Valid

Checks that the content contained within a value resource declaration is a valid format for its type.

## Verify Input Type

Checks that a xml attribute accepts the resource type used in a reference expression (EG: @string/myString).

## Verify Max API Feature Usages

Checks that xml resources use Android SDK features that are within the projects Target API level.

## Verify Resource Exists

Checks that a resource used via a reference expression (EG: @string/myString) exists within the project or its references.

## Check for Duplicate Attributes.

Checks for duplicate attributes on an xml node and then automatically removes the duplicates.

## TextView 'textSize' uses non-sp dimension

Inspects 'textSize' attributes for usages of non-sp dimensions

## Validate Animated Vectors Reference Vector Drawables

Verifies that the 'android:drawable' attribute on an 'animated-vector' drawable resource points to a 'vector' base drawable.

## AppWidget Layout Is Valid

Analyses the layout file referenced by the 'android:initialLayout' attribute for an AppWidget configuration and ensures that it only contains allowed view types.

## Circular Resource Usage

Detects when a resource usage (@type/value) that points to a file based resource (such as a layout or drawable) will generate a circular reference when it is inflated. A common example of this is using &lt;include&gt; or &lt;merge&gt; tags inside a layout that also references other layouts via merging or including.

## Inconsistent Array Sizes

Checks that 'array', 'string-array' and 'integer-array' resources with multiple declarations all have the same number of elements across all locales they are declared in.

## Layout <include> exists in configuration

Checks that usages of 'include' tags within a Android layout reference a layout that is available within the current configuration.

## Layout Width And Height Required

Checks that layout elements have both the 'android:layout_width' and 'android:layout_height' attributes declared. Elements that are missing these attributes will generate a runtime exception when the layout is inflated.

## Check NFC Tech-List for whitespace

Looks at the 'tech' elements inside an nfc 'tech-list' definition and verifies that they do not containi whitespace. The loader for tech-list elements is very strict and will cause a runtime exception when this tech-list is used. See https://code.google.com/p/android/issues/detail?id=65351

## Detect Resource Self Reference

Analyses resources usages to detect when a usage attempts to reference itself. This error is most likely to occur when using animations, drawables and particularly for layout includes.

## Scroll View Has Multiple Children

Verifies that a ScrollView only has 1 direct child; multiple children will cause a runtime exception when the layout is inflated. If you want more children, encapsulate the child elements into a layout container.
