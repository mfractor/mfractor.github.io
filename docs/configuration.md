
##Configuring MFractor

**Premium Only**

*Changing the behavior of MFractor's code generation and code actions*

## Introduction

The configuration engine allows you to customize the internals of MFractor to generate code specific to your project. Initially, the amount of options that are exposed will be limited but over time I will drastically increase the flexibility of MFractors code generation engine.

If you wish to have a piece of code generation customizable, please submit a feature request at [MFractor Feedback](https://github.com/mfractor/mfractor-feedback/issues/new).

## Configuration Basics

Conceptually, MFractor has *Configurables*, extensible components that expose properties that can be edited by a configuration file. *Configurables* can be C# code actions



MFractor configuration files are XML based and end with the extension `.mfc.xml`. You can name a configuration file whatever you'd like as long as it ends in the extension `.mfc.xml`.

How does it work? Let's consider the following configuration file:

**config.mfc.xml**
```
<?xml version="1.0" encoding="UTF-8" ?>
<mfractor>
    <configure id="com.mfractor.code_action.forms.implement_view_model">
            <property name="BaseClass" value="MyNamespace.ViewModels.ViewModelBase"/>
    </configure>
</mfractor>
```


Let's examine each of the each element in the above configuration in depth:

   - We open a configuration file with the `<mfractor>` tag; this is ceremony to denote to MFractor this is a config file.
   - We **target** a configurable by using the `<configure>` element:
    - The `id` attribute specifies the unique identifier of the configurable we wish to modify. An id could refer a code action, a code generator or an analysis routine.
   - We **modify** a property using the `<property>` element:
    - The `name` attribute specifies the configurable property we wish to edit.
    - The `value` attribute specifies the value we wish to set the property to.
     - We **group** configurations within the `<collection name="CollectionName">` element. These groups are hard coded into the product itself and relate to how the code actions, code generation and code analysis documentation folders are structured in this site.

## Configuration Identifiers

Every element inside MFractor that can be configured has it's own unique **configuration identifier**. This a java-style, package based string that indicates the software, element type and element name inside the name.

For example, the Xamarin.Forms [Implement View Model](/code-actions/xaml/generate.md#implement-view-model) code action has the configuration identifier `com.mfractor.code_actions.forms.implement_view_model`.

If we wanted to change the behaviour of the *Implement View Model* code action, we add a `configure` element into our `.mfc.xml` and target the identifier for the

```

<configure id="com.mfractor.code_action.forms.implement_view_model">
</configure>

```

## Configurable Properties



## Configuration Dependencies

Configurables can also use other configurables to


## Configuration Groups
