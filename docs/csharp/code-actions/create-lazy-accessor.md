!!! quote "Create a property to access the result of a `Lazy<T>` field"

!!! info "This feature is available in [MFractor Professional](https://www.mfractor.com/products/mfractor-professional)"

## Introduction

In C#, developers can use the `Lazy<T>` feature to only initialise objects when they are used. This allows developers to defer the creation or resolution cost of components and make the creation of objects much faster. To access the resultant object of a `Lazy<T>`, developers use the `.Value` property.

When using class fields that use `Lazy<T>`, MFractor includes the **Create Lazy Accessor** refactoring to simplify the usage of Lazy.

For example, rather than always using `.Value` to access the inner object and then perform an action, it is common to provide a helper property that evaluates the lazy field and returns the value.

Let's consider the following code:

```
readonly Lazy<INavigation> navigation;

// Usage...
await navigation.Value.PushAsync(new LoginPage());
```

Each time the `navigation` field is used, we then need to invoke the `.Value` property to call a method on `INavigation`. While we get the benefits of `Lazy<T>`, we also pollute our code with the `.Value` property each time we need to use `INavigation`.

We can create a property that accesses the value of `navigation` and cleanup our code base:

```
readonly Lazy<INavigation> navigation;
INavigation Navigation => navigation.Value;

// Usage...
await Navigation.PushAsync(new LoginPage());
```

## Using the Code Action

To use the `Create Lazy Accessor` code action, place the cursor over a field declaration that uses `Lazy<T>` press `Alt+Return` or right click and select `Quick Fix`. In the menu that opens, choose `Create a property that accesses this fields value`.

![Invoking the Create Lazy Accessor code action](/img/csharp/code-actions/create-lazy-accessor.png)

MFractor will then create a wrapper property that accesses the `.Value` property of our field.

![The result of the Create Lazy Accessor code action](/img/csharp/code-actions/create-lazy-accessor-result.png)
