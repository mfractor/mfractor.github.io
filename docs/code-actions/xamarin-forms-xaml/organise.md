## Collapse Attributes Onto Same Line

*Configuration Id: com.mfractor.code_actions.forms.collapse_attributes_onto_same_line*

This code action collapses all the attributes for a Xaml node onto the same line as the nodes name declaration.

## Expand Attributes Onto Separate Lines

*Configuration Id: com.mfractor.code_actions.forms.expand_attributes_onto_new_lines*

This code action expands all the attributes for a Xaml node onto a separate line for each attribute.

For example, gi

## Sort Xaml Attributes

*Configuration Id: com.mfractor.code_actions.forms.sort_attributes*

This code action sorts the attributes for a Xaml node and regenerates the xaml node based on the IDE's xml formatting policy.
MFractor uses the following rules when sorting:

 * Attributes that declare an xml namespace are ordered first, sorted alphabetically ascending. For example `xmlns:forms="http://xamarin.com/schemas/2014/forms"` will appear before `xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"`.
 * Attributes that belong to the Microsoft Xaml schema `http://schemas.microsoft.com/winfx/2009/xaml` are ordered next. For example, the `x:Class` or `x:Name` declaration.
 * Attributes belonging to the default namespace are ordered next, sorted alphabetically ascending.
 * Attributes belonging to the other namespaces are then ordered next, sorted by namespace ascending and then by attribute name ascending.


### Uses:

 * [Sort Xaml Attributes](/code-generation/xaml.md#sort-xaml-attributes)


## Format Xaml Document

*Configuration Id: com.mfractor.code_actions.forms.format_document*

Applies the xml formatting policy to the entire document. It will correctly indent nodes, sort attributes, align attributes under the parent node.

### Uses:

 * [Sort Xaml Attributes](/code-generation/xaml.md#sort-xaml-attributes)


## Collapse Node

*Configuration Id: com.mfractor.code_actions.forms.collapse_node_closing_tag*

When a Xaml node has a closing tag and no children (eg: `<MyNode> </MyNode>`), this refactoring allows the developer to remove the closing tag to make the node self-closing. For example, when applied to the node `<MyNode> ... </MyNode>`, the closing tag `</MyNode>` is removed and the element becomes self closing like so: `<MyNode/>`.

## Expand Node

*Configuration Id: com.mfractor.code_actions.forms.expand_node_with_closing_tag*

When a Xaml node is self-closing (EG `<MyNode/>`), this organise refactoring allows a developer to generate a closing tag for the node. For example, the node `<MyNode/>` would become `<MyNode> ... </MyNode>` after applying this refactoring.

## Remove Unused Namespaces

*Configuration Id: com.mfractor.code_actions.forms.remove_unused_namespaces*

When a xaml node has unused xml namespace declarations, this code action will remove all unused namespaces.

### Configurable Properties

| Name | Type | Defaults To | Description |
|------|------|-------------|-------------|
| **ShouldSort** | System.Boolean | `True` | If the attributes for this node should be sorted when the unused namespaces are removed |

### Uses:

 * [Sort Xaml Attributes](/code-generation/xaml.md#sort-xaml-attributes)

