!!! quote "Code analysers that verify the usage CollectionView's in XAML"

## CollectionView Requires IsGrouped
When using grouping features of a CollectionView through `GroupHeaderTemplate` or `GroupFooterTemplate`, CollectionView's require that the `IsGrouped` property is set to true. If grouping

MFractor will inspect `CollectionView`'s and

![CollectionView IsGrouped analysis](/img/xamarin-forms/collection-view-is-grouped.png)

## ViewCell Used Within CollectionView ItemTemplate
One of the benefits of the CollectionView over list view is that we no longer need to use the `ViewCell` control inside our `ItemTemplate`.

However, when we are porting ListView's to CollectionView's, we may forget to remove the ViewCell.

To help avoid this, MFractor will inspect the `DataTemplate` provided to it's `ItemTemplate` property and verify that the inner element is not a ViewCell:

![CollectionView ViewCell analysis](/img/xamarin-forms/collection-view-view-cell.png)
