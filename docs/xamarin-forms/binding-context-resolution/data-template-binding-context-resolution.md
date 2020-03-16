# Data Template Binding Context Resolution

Data templates are used to provide a nested XAML view to a view that displays many occurrences of that view. For example, a ListView uses a DataTemplate to specify the view appearance of each instance provided through the ItemsSource property.

MFractor will attempt to infer the BindingContext for a data templates view by resolving the ItemsSource property on the wrapping view.

Consider the following code:

```
  <ListView ItemsSource="{Binding Contacts}">
      <ListView.ItemTemplate>
        <DataTemplate>
          <TextCell Text="{Binding DisplayName}" />
        </DataTemplate>
      </ListView.ItemTemplate>
  </ListView>
```

The inner DataTemplate has a TextCell where the Text property is provided by the binding expression {Binding DisplayName}. To analyse this expression, MFractor requires a binding context; MFractor will walk out to the encapsulating view (ListView), locate the ItemsSource property and evaluate the expression.

When the return type is an `IEnumerable` or array, MFractor unwraps the generic or array and grabs the inner type. This provides the binding context type for the binding expressions used within the data template.
