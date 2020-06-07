!!! quote "Create a constructor to initialise all readonly fields in a class or struct"

!!! info "This feature is available in [MFractor Professional](https://www.mfractor.com/products/mfractor-professional)"

## Introduction

In C#, developers can use *immutability* to prevent the state of objects from changing after initialisation. Immutability is useful as it helps to prevent bugs caused by unexpected state changes and simplifies threading considerations.

To accomplish immutability in C#, we can use the `readonly` keyword on fields and use `get`-only properties.

```
public class MyImmutable
{
  public string ImmutableProperty { get; }
  public readonly string immutableField;

  public MyImmutable(string a, string b)
  {
    ImmutableProperty = a;
    immutableField = b;
  }
}

var instance = new MyImmutable("Hello", "World"); // Valid, immutable field/property setup in constructor.

instance.ImmutableProperty = "Hello"; // Invalid, compilation error.
instance.immutableField = "World"; // Invalid, compilation error.

```
When we build types that are immutable, readonly fields and properties may only be initialised in the types constructor. This means we must create a constructor to initialise all readonly members.

To assist, MFractor provides the **Generate Readonly Constructor** refactoring to generate a constructor that inclues a parameter for each readonly member that initialises it.

## Using the Code Action

To use the `Generate Readonly Constructor` code action, place the cursor over a type declaration and press `Alt+Return` or right click and select `Quick Fix`. In the menu that opens, choose `Create constructor to initialise all readonly members`.

![Invoking the Generate Readonly Constructor code action](/img/csharp/code-actions/create-lazy-accessor.png)

MFractor will then create a constructor to initialise each readonly property or field using a constructor argument.

![The result of the Generate Readonly Constructor code action](/img/csharp/code-actions/create-lazy-accessor-result.png)
