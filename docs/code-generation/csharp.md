## Generate Assignment Expression

*Configuration Id: com.mfractor.code_gen.csharp.member_assignment_expression*

Generates an assignment expresssion

### Configurable Properties

| Name | Type | Defaults To | Description |
|------|------|-------------|-------------|
| **IncludeThisForMembers** | System.Boolean | `False` | When assigning to a class member, should a `this.` be added to the variable being assigned? |

## Create AttributeUsage Annotation

*Configuration Id: com.mfractor.code_gen.csharp.attribute_usage_annotation*

Create an `[System.AttributeUsage()]` annotation that can can be attached to a class declaration that derives from `System.Attribute`.

## Generate Event Handler Declaration

*Configuration Id: com.mfractor.code_gen.csharp.event_handler_declaration*

Generates an `event EventHandler<EventArgs>` declaration that can be bound against by a callback.

## Generate Event Handler Method Callback

*Configuration Id: com.mfractor.code_gen.csharp.event_handler_method*

Generates a method that's compatible for registration with an `EventHandler<EventArgs>` as a callback.

## Generate Instance Property

*Configuration Id: com.mfractor.code_gen.csharp.instance_property*

Generates a instance property with a getter and setter.

### Configurable Properties

| Name | Type | Defaults To | Description |
|------|------|-------------|-------------|
| **UseBackingFields** | System.Boolean | `False` | When creating the implementation for a property with a public getter and setter, should the property generator create a backing field? |
| **UnderscoreOnBackingField** | System.Boolean | `False` | When creating a backing field for a property, should the field have an underscore appended to the start of the field name? |

### Uses:

 * [Generate Member Initialiser](/code-generation/csharp.md#generate-member-initialiser)


## Generate Member Initialiser

*Configuration Id: com.mfractor.code_gen.csharp.member_initialiser_expression*

Generates an initilisation expression for a class/struct member (such as a property or field).

### Configurable Properties

| Name | Type | Defaults To | Description |
|------|------|-------------|-------------|
| **ForceStringLiteral** | System.Boolean | `False` | Should the code generator always attempt to assign members with a string literal? |
