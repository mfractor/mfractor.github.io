## Sort Xaml Attributes

*Configuration Id: com.mfractor.code_gen.forms.xaml.sorted_attributes*

Given a collection of Xaml attributes this code generator sorts them by namespace and name.

## Rename Xaml Namespace Generator

*Configuration Id: com.mfractor.code_gen.forms.xaml.rename_xaml_namespace*

Generates a series of replace text fixes to rename a namespace

## Generate Grid Column Definition

*Configuration Id: com.mfractor.code_gen.forms.xaml.grid_column_definition*

Generates a `ColumnDefinition` Xaml node that is used inside a `Grid.ColumnDefinitions` node.

### Configurable Properties

| Name | Type | Defaults To | Description |
|------|------|-------------|-------------|
| **DefaultWidthValue** | System.String | `"*"` | When creating a new `ColumnDefinition` for a grid, what is the  |

## Generate Grid Row Definition

*Configuration Id: com.mfractor.code_gen.forms.xaml.grid_row_definition*

Generates a `RowDefinition` Xaml node that is used inside a `Grid.RowDefinitions` node.

### Configurable Properties

| Name | Type | Defaults To | Description |
|------|------|-------------|-------------|
| **DefaultHeightValue** | System.String | `"*"` | When creating a new `RowDefinition` for a grid, what is the default height of a newly created row? |
