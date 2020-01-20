!!! quote "Create a property to access the inner value of a Lazy<> field"

!!! info "This feature is available in [MFractor Professional](https://www.mfractor.com/products/mfractor-professional)"

## Introduction

In .NET, the `System.Lazy<T>` class can be used to provide *lazy initialisation*. That is, `System.Lazy<T>` defers the creation cost of something until the first time it's used.

Please refer to the [System.Lazy documentation](https://docs.microsoft.com/en-us/dotnet/api/system.lazy-1?view=netframework-4.8#examples) for more in-depth documentation.

Each time we use `Lazy<T>`, we use the `.Value` property to retrieve the underlying object. When the `Lazy<T>` is a field, it's common to create a property that accesses the value.

For example:

```
readonly Lazy<IIconService> iconService;
public IIconService IconService => iconService.Value;
```

We would then use `IIconService` like so:

```
IconService.MyMethod(); // Equates to iconService.Value.MyMethod().
```

Accessor properties for lazy fields cleanup our code, making it easier to maintain and read as each time we use `IIconService` we . However, we now need to create a property each time we use a lazy field to ensure our code remains clean.

To simplify this, MFractor includes the `Create Lazy Field Property` code action to generate this code for us.

## Using Create Lazy Field Property

To use the code action, locate then name of a field whose type is `Lazy<T>` and press `Alt+Return` or right click and choose `Quick Fix` on the name. In the context menu that opens, choose `Create a property that access this lazy fields value`:

![Invoking the Create Lazy Field Property from the Quick Fix or Keyboard Shortcut](/img/csharp/code-actions/generate-lazy-field-property-01.png)

After confirming the code action, MFractor will generate a property to access the fields value:

![The result of the Create Lazy Field Property code action](/img/csharp/code-actions/generate-lazy-field-property-02.png)
