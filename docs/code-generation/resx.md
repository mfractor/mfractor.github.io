## ResX Code Generation
*Autogenerated by MFractor v3.5.23*
## Generate C# ResX Resource Lookup

**Configuration Id: com.mfractor.code_gen.resx.generate_csharp_resx_lookup**

Generates C# resource lookup such as `MyApp.Resources.Resources.MyLabel`


## Generate ResX Entry

**Configuration Id: com.mfractor.code_gen.resx.generate_resx_entry**

Generates a single ResX resource entry element containing the key, value and comment.


### Configurable Properties

| Name | Type | Defaults To | Description |
|------|------|-------------|-------------|
| **IncludeCommentWhenEmpty** | Boolean | False | When no comment for the new ResX entry has been provided, should an empty comment tag be included? |

## Generate ResX File

**Configuration Id: com.mfractor.code_gen.resx.resx_file**

Generates a new ResX file


### Configurable Properties

| Name | Type | Defaults To | Description |
|------|------|-------------|-------------|
| **ResXTemplate** | `Code Snippet`<br/><br/>**Arguments**:<ul><li>`values`: The values to insert</li></ul> | [View Code Snippet](/code-generation/resx/snippets/generate-resx-file/resxtemplate.txt) | The default .resx file template. |
| **ResXDesignerTemplate** | `Code Snippet`<br/><br/>**Arguments**:<ul><li>`namespace`: The namespace of the </li></ul> | [View Code Snippet](/code-generation/resx/snippets/generate-resx-file/resxdesignertemplate.txt) | The default designer file template for a .resx resource. |

### Uses:

 * [Generate ResX Entry](/code-generation/resx.md#generate-resx-entry)

