
##Configuring MFractor

**Premium Only**

*Changing the behaviour of MFractor's code generation and code actions*

## Introduction

The configuration engine allows you to customise the internals of MFractor to generate code specific to your project. Initially the amount of options that are exposed will be limited but over time I will drastically increase the flexibility of MFractors code generation engine.

If you have a

## Configuration Basics

How does it work? Let's consider the following configuration file:

**config.mfc.xml**
```
<?xml version="1.0" encoding="UTF-8" ?>
<mfractor>
	<configure id="com.mfractor.code_gen.forms.csharp.instance_property">
		<property name="CodeSnippet" value="Snippets/property.txt"/>
	</configure>
	<configure id="com.mfractor.code_action.forms.implement_view_model">
			<property name="BaseClass" value="MyNamespace.ViewModels.ViewModelBase"/>
	</configure>
</mfractor>
```

MFractor configuration files are xml based and end with the extension `.mfc` or `.mfc.xml` (add `.xml` if you'd like the IDEs default IntelliSense and xml highlighting). Conceptually, MFractor has *Configurables*, extensible components within MFractor itself that expose properties that can be edited by a configuration file.

Let's examine each of the each element in the above configuration in depth:

   - We open a configuration file with the `<mfractor>` tag; this is just ceremony to denote to MFractor this is it's config file.
   - We **target** a configurable by using the `<configure>` element:
    - The `id` attribute specifies the unique identifier of the configurable we wish to modify. This could be a code action, a code generator or an analysis routine.
   - We **modify** a property using the `<property>` element:
    - The `name` attribute specifies the configurable property we wish to edit.
    - The `value` attribute specifies the value we wish to set the property to.
	 - We **group** configurations within the `<collection name="CollectionName">` element. These groups are hard coded into the product itself and relate to how the code actions, code generation and code analysis documentation folders are structured in this site.

Some configurables expose lots of properties, some expose none. If you want the behaviour for a code action or code generator to be customisable, please get in touch. It's trivial to expose new configuration settings so just ask! :)

You might notice that the structure of docs.mfractor.com has drastically changed. This new site structure enables you to easily explore the code actions, analysis and code generation exposed by MFractor; they are logically grouped in the same way the configuration engine groups elements. We now include the configuration identifier for **all** code actions, code generators and analysers and list the configurable properties for each element in MFractor.

## Configuration Identifiers

Every element inside MFractor that can be configured has it's own unique **configuration identifier**. This a java-style, package based string that indicates the software, element type and element name inside the name.

For example, the Xamarin.Forms [Implement View Model](/code-actions/xamarin-forms-xaml/generate.md#implement-view-model) code action has the configuration identifier `com.mfractor.code_actions.forms.implement_view_model`.

## Configurable Properties

## Configuration Dependencies

## Configuration Groups
