## Check Toast MakeText Has Show

**Premium Only**

**Configuration Id: com.mfractor.analysis.android.validate_toast_usage**

Sometimes when a Toast is created via MakeText, the Show method is accidently omitted. This analysis routine looks for invocations of Toast.MakeText() that don't then invoke the Show() method on the toast object in the same expression. If the MakeText() result is assigned into a variable or passed as a method argument then this check is skipped.

## Check Views Exist In Layout

**Premium Only**

**Configuration Id: com.mfractor.analysis.android.views_exist_in_layout**

When using FindViewById() to retrieve views from a layout, sometimes a developer will attempt to retrieve a view that does not exist within the inflated layout. This analyser inspects a class for the MFractor.Annotations.Android.UsesLayoutAttribute annotation and then cross-checks that all FindViewById invocations provide a Resource.Id that exist within the targetted layout(s).

## Validate Cheeseknife Attributes

**Premium Only**

**Configuration Id: com.mfractor.analysis.android.validate_cheeseknife_attributes**

This analyser inspect usages of attributes from the Cheeseknife view injection library; it validates that the Resource.Id.* exists in the layout provided into an MFractor.Annotations UsesLayout attribute.

## Warn Of Static Context References

**Premium Only**

**Configuration Id: com.mfractor.analysis.android.detect_static_context_reference**

This analyser inspects static variable declarations within classes and checks if the type derives from Android.Content.Context. Static context references have the potential to cause large memory leaks.

## Check Android.Content.Res.Resources Usages

**Premium Only**

**Configuration Id: com.mfractor.analysis.android.verify_resource_class_usage**

When using the Android.Content.Res.Resources class, all Get* expressions expect the correct resource type identifier. For example, when using Resource.GetString(), a resource identifier of Resources.String.myString is expected. Passing any other resource identifier such as Resource.Color.myColor may result in unintended data being used or runtime exceptions. This code analyser validates that the correct resource type is being provided to the API call.

