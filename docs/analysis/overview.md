**Detect errors, improvements and maintainability suggestions with**

## Introduction

There are a number of analysers available in MFractor.

Click on the MFractor tab then "Preferences".

Scroll down to "Code Analysis" and you can search for a specific one or toggle to disable at an application level.

If you want to disable at a Solution/Project level see [Disabling Analysers](disabling-analysers.md).

| Code | Anayler | Link |
| -    | -       | -    |
| Ambiguous Static Resource Reference | MF1054 | |
| Binding Against Non-Public Property | MF1008 | |
| Binding Expression Return Type Mismatch | MF1010 | |
| Binding Expressions Resolve | MF1009 | [Help](/xamarin-forms/working-with-viewmodels/data-binding-analysis/) |
| | | |

TODO: Complete the list.

`/Users/{user}/Library/mfractor/.preferences`

```
com.mfractor.analysis.xaml.duplicate_automation_ids.enabled
com.mfractor.analysis.xaml.empty_automation_id.enabled
com.mfractor.analysis.xaml.code_behind_field_name_has_invalid_characters.enabled
com.mfractor.analysis.xaml.duplicate_code_behind_field_name.enabled
com.mfractor.analysis.xaml.empty_code_behind_field_name.enabled
com.mfractor.analysis.xaml.cell_usage_within_collection_view_item_template.enabled
com.mfractor.analysis.xaml.content_page_has_multiple_children.enabled
com.mfractor.analysis.xaml.content_view_has_multiple_children.enabled
com.mfractor.analysis.xaml.element_does_not_have_attached_property.enabled
com.mfractor.analysis.xaml.empty_value_assignment.enabled
com.mfractor.analysis.xaml.empty_event_handler_assignment.enabled
com.mfractor.analysis.xaml.event_handler_does_not_exist_in_code_behind_classs.enabled
com.mfractor.analysis.xaml.event_handler_signature_matches.enabled
com.mfractor.analysis.xaml.xreference_element_exists.enabled
com.mfractor.analysis.xaml.converter_input_type_mismatch.enabled
com.mfractor.analysis.xaml.converter_output_type_mismatch.enabled
com.mfractor.analysis.xaml.dotnet_symbol_resolves.enabled
com.mfractor.analysis.xaml.dotnet_symbol_namespace_resolves.enabled
com.mfractor.analysis.xaml.glyph_does_not_exist_in_fonts.enabled
com.mfractor.analysis.xaml.invalid_named_font_size.enabled
com.mfractor.analysis.xaml.generic_is_missing_type_arguments.enabled
com.mfractor.analysis.xaml.type_arguments_misuse.enabled
com.mfractor.analysis.xaml.unknown_type_provided_to_generic.enabled
com.mfractor.analysis.xaml.column_is_outside_grid_boundaries.enabled
com.mfractor.analysis.xaml.columnspan_is_outside_grid_boundaries.enabled
com.mfractor.analysis.xaml.columnspan_is_zero.enabled
com.mfractor.analysis.xaml.redundant_column_property.enabled
com.mfractor.analysis.xaml.redundant_column_span_property.enabled
com.mfractor.analysis.xaml.redundant_row_property.enabled
com.mfractor.analysis.xaml.redundant_row_span_property.enabled
com.mfractor.analysis.xaml.row_is_outside_grid_boundaries.enabled
com.mfractor.analysis.xaml.rowspan_is_outside_grid_boundaries.enabled
com.mfractor.analysis.xaml.rowspan_is_zero.enabled
com.mfractor.analysis.xaml.obsolete_property_used.enabled
com.mfractor.analysis.xaml.on_idiom_return_type_mismatch.enabled
com.mfractor.analysis.xaml.on_platform_return_type_mismatch.enabled
com.mfractor.analysis.xaml.property_setter_attribute_does_not_exist_in_parent.enabled
com.mfractor.analysis.xaml.property_setter_node_does_not_exist_in_parent.enabled
com.mfractor.analysis.xaml.property_setter_node_misuse.enabled
com.mfractor.analysis.xaml.property_setter_node_type_mistmatch.enabled
com.mfractor.analysis.xaml.duplicate_resource_dictionary_key.enabled
com.mfractor.analysis.xaml.missing_resource_dictionary_key.enabled
com.mfractor.analysis.xaml.unused_resource_entry.enabled
com.mfractor.analysis.xaml.missing_microsoft_schema_reference.enabled
com.mfractor.analysis.xaml.scroll_view_has_multiple_children.enabled
com.mfractor.analysis.xaml.style_is_missing_target_type.enabled
com.mfractor.analysis.xaml.style_property_setter_does_not_exist.enabled
com.mfractor.analysis.xaml.unknown_field_modifier.enabled
com.mfractor.analysis.xaml.unknown_static_property_value.enabled
com.mfractor.analysis.xaml.value_type_input_not_valid.enabled
com.mfractor.analysis.xaml.multiple_namespace_assembly_references.enabled
com.mfractor.analysis.xaml.xml_namespace_does_not_resolve.enabled
com.mfractor.analysis.xaml.xmlns_assembly_does_not_resolve.enabled
com.mfractor.analysis.xaml.xaml_node_does_not_resolve.enabled
com.mfractor.analysis.xaml.trigger_is_missing_target_type.enabled
com.mfractor.analysis.xaml.trigger_target_type_does_not_match_parent.enabled
com.mfractor.analysis.xaml.invalid_thickness_attribute_value.enabled
com.mfractor.analysis.xaml.thickness_value_can_be_consolidated.enabled
com.mfractor.analysis.xaml.thickness_value_can_be_replaced_with_static_resource.enabled
com.mfractor.analysis.xaml.thickness_value_can_be_simplified.enabled
com.mfractor.analysis.xaml.element_can_use_available_style.enabled
com.mfractor.analysis.xaml.property_value_is_already_applied_by_style.enabled
com.mfractor.analysis.xaml.style_target_type_does_not_match_basedon_target_type.enabled
com.mfractor.analysis.xaml.ambiguous_static_resource.enabled
com.mfractor.analysis.xaml.no_key_provided_to_static_resource.enabled
com.mfractor.analysis.xaml.static_resource_return_type_mismatch.enabled
com.mfractor.analysis.xaml.static_resource_target_type_is_incompatible.enabled
com.mfractor.analysis.xaml.static_symbol_type_does_not_match_expected_type.enabled
com.mfractor.analysis.xaml.undefined_static_resource.enabled
com.mfractor.analysis.xaml.slider_minimum_set_before_maximum.enabled
com.mfractor.analysis.xaml.duplicate_shellitem_route.enabled
com.mfractor.analysis.xaml.empty_shell_route_scheme.enabled
com.mfractor.analysis.xaml.multiple_visual_elements_defined_in_shell_content.enabled
com.mfractor.analysis.xaml.shell_requires_at_least_one_shell_item.enabled
com.mfractor.analysis.xaml.validate_setter_attached_property.enabled
com.mfractor.analysis.xaml.setter_property_does_not_exist.enabled
com.mfractor.analysis.xaml.style_or_trigger_has_duplicate_setters.enabled
com.mfractor.analysis.xaml.resource_key_conflict.enabled
com.mfractor.analysis.xaml.missing_image_resource.enabled
com.mfractor.analysis.xaml.grid_row_column_setter_is_not_a_number.enabled
com.mfractor.analysis.xaml.no_key_provided_to_dynamic_resource.enabled
com.mfractor.analysis.xaml.binding_expression_does_not_return_a_property.enabled
com.mfractor.analysis.xaml.binding_expression_is_against_nonpublic_property.enabled
com.mfractor.analysis.xaml.binding_expression_resolves.enabled
com.mfractor.analysis.xaml.binding_expression_does_not_match_expected_type.enabled
com.mfractor.analysis.xaml.color_value_can_be_replaced_with_static_resource.enabled
com.mfractor.analysis.xaml.color_value_closely_matches_available_static_resources.enabled
com.mfractor.analysis.forms.hexadecimal_value_matches_named_color.enabled
com.mfractor.analysis.forms.malformed_hexadecimal_color.enabled
```
