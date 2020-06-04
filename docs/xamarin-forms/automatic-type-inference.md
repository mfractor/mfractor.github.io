!!! quote "Use Type Inference to automatically select the desired type from a given component name."

## Automatic Type Inference

Automatic Type Inference allows you to enter the desired name of a component and MFractor will guess the desired type. This dramatically simplifies and speeds up the process of creating new bindable properties, value converters or any component where the name often represents its given type.

Once you adjust to type inference, you can simply enter the name of a new component and MFractor automatically sets up the type information based on known conventions. This makes it fast and intuitive to create new components and not need to worry about provide the type information.

## Rules

Here is a full list of the rules the type inference engine uses when deducing types:

  * **Bool**:
    * Name starts with: `is`, `can`, `has`, `should` `allow`, `show`, `include`, `accepts`.
    * Name ends with: `boolean`, `bool`, `enabled`.
  * **String**:
    * Name ends with: `text`, `label`, `string`, `title`, `message`, `name`, `character`.
  * **Int**:
    * Name ends with: `number`, `id`, `int`, `integer`, `count`, `size`, `width`, `height`, `spacing`, `length`.
  * **Double**:
    * Name starts with: `double`.
    * Name ends with: `decimal`.
  * **Char**:
    * Name starts with: `char`.
  * **Enum**:
    * Name starts with: `enum`.
  * **Xamarin.Forms.ImageSource**:
    * Input value ends with: `.png`, `.gif`, `.jpg`, `.jpeg`.
    * Name ends with: `image`, `icon`, `picture`, `photo`.
  * **EventHandler**:
    * Name ends with: `callback`, `handler`, `event`.
  * **System.IO.FileInfo**:
    * Name ends with: `file`.
  * **System.Windows.Input.ICommand**:
    * Name ends with: `command`.
  * **System.DateTime**:
    * Name starts with: `date`, `time`.
    * Name ends with: `date`, `time`.
  * **System.TimeSpan**:
    * Name ends with: `timespan`.
  * **Xamarin.Forms.Color**:
    * Name ends with: `color`, `colour`.
  * **List<T>**:
    * When the input name ends with `s` (IE: Is pluralised) and the name can be matched to a known type in the project, returns `List<Name>`.
