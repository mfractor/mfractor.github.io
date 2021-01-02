!!! quote "Quickly add C# 9 record type."

## Introduction

Visual Studio for Mac don't have an built-in template for creating new `record` types on the project, as it does for classes, interfaces, enums and structs. MFractor adds this missing template.

## Adding a new Record Type

The template for the new C# 9 record types is available on the New File dialog alongisde with the existing built-in templates in the _General_ section.

![](/img/csharp/cs9-record-template.png)

Just add this new record and it will have the name of the file that you set and be put on the namespace relative to the folder where the file is being added. The template is as follows:

```csharp
using System;

namespace HelloMFractor
{
    public record EmptyRecord
    {
    }
}
```