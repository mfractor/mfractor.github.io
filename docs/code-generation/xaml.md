*Autogenerated by MFractor v3.2.13*
## Generate Grid

**Configuration Id: com.mfractor.code_gen.forms.xaml.grid**

Generates a new `Grid` XAML element.


### Configurable Properties

| Name | Type | Defaults To | Description |
|------|------|-------------|-------------|
| **IncludeColumnDefinitions** | `System.Boolean` | `True` | Should the new grid include a `ColumnDefinitions` element by default? |
| **IncludeRowDefinitions** | `System.Boolean` | `True` | Should the new grid include a `RowDefinitions` element by default? |
| **DefaultRowsCount** | `System.Int32` | `1` | What is the default amount of rows that the new grid should have? |
| **DefaultColumnsCount** | `System.Int32` | `1` | What is the default amount of columns that the new grid should have? |

### Uses:

 * [Generate Grid Row Definition](/code-generation/xaml.md#generate-grid-row-definition)
 * [Generate Grid Column Definition](/code-generation/xaml.md#generate-grid-column-definition)


## Generate Grid Column Definition

**Configuration Id: com.mfractor.code_gen.forms.xaml.grid_column_definition**

Generates a `ColumnDefinition` Xaml node that is used inside a `Grid.ColumnDefinitions` node.


### Configurable Properties

| Name | Type | Defaults To | Description |
|------|------|-------------|-------------|
| **DefaultWidthValue** | `System.String` | `"*"` | When creating a new `ColumnDefinition` for a grid, what is the default width value. |

## Generate Grid Row Definition

**Configuration Id: com.mfractor.code_gen.forms.xaml.grid_row_definition**

Generates a `RowDefinition` Xaml node that is used inside a `Grid.RowDefinitions` node.


### Configurable Properties

| Name | Type | Defaults To | Description |
|------|------|-------------|-------------|
| **DefaultHeightValue** | `System.String` | `"*"` | When creating a new `RowDefinition` for a grid, what is the default height of a newly created row? |

## Rename Xaml Namespace Generator

**Configuration Id: com.mfractor.code_gen.forms.xaml.rename_xaml_namespace**

Generates a series of replace text fixes to rename a namespace

