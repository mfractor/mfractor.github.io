!!! quote ""
    Inspects XAML `Grid` child elements to identify if positioning or span is out of boundarys.

## Introduction

Grids are one of the most versatile and used layouts provided by Xamarin.Forms. Despite being easy to use, it sometimes hard to keep track of its child elements. MFractor introduces a few Grid Code Analysis to aid on composing your layouts.

## Row and Column Analysis

These analysers are applied to the `Grid.Row` and `Grid.Column` attached properties applied to the child element of a Grid. MFractor inspects the rows and columns definitions of the Grid and check each child element position to check if it's within it's defined bounds.

### Row Outside Grid Boundary

If a `Grid.Row` definition is beyond the Rows Definitions of the parent Grid, MFractor will show a warning for the faulty location:

![](/img/xamarin-forms/grid-analysis-row-out-bounds.png)

### Column Outside Grid Boundary

If a `Grid.Column` definition is beyond the Columns Definitions of the parent Grid, MFractor will show a warning for the faulty location:

![](/img/xamarin-forms/grid-analysis-column-out-bounds.png)

## Row and Column Span Analysis

These analysers are applied to the `Grid.RowSpan` and `Grid.ColumnSpan` attached properties applied to the child element of a Grid. MFractor inspects the rows and columns definitions of the Grid and check each child element that declares spans to check if they doesn't go beyond the defined bounds.

### Row Span Outside Grid Boundary

If a `Grid.RowSpan` definition goes beyond the Rows Definitions from the current Row where the element is placed, MFractor will show a warning for the faulty span size:

![](/img/xamarin-forms/grid-analysis-row-span.png)

### Column Span Outside Grid Boundary

If a `Grid.ColumnSpan` definition goes beyond the column Definitions from the current Row where the element is placed, MFractor will show a warning for the faulty span size:

![](/img/xamarin-forms/grid-analysis-row-span.png)

## Row and Column Span Is Zero Analysis

These analysers are applied to the `Grid.RowSpan` and `Grid.ColumnSpan` attached properties applied to the child element of a Grid. MFractor inspects that the provided span is not zero; using zero as a span value is invalid and may lead to a runtime crash.

### Row Span Is Zero

If a `Grid.RowSpan` is zero, MFractor will show a warning for the faulty span size:

![](/img/xamarin-forms/grid-row-span-zero.png)

### Column Span Is Zero

If a `Grid.ColumnSpan` is zero, MFractor will show a warning for the faulty span size:

![](/img/xamarin-forms/grid-row-span-zero.png)

## Redundant Row And Column Analysis

These analysers inspect when the `Grid.Row`, `Grid.RowSpan`, `Grid.Column` or `Grid.ColumnSpan` properties are applied an element that is not within a grid. They warn you that the Grid property is redundant and can be removed.

![](/img/xamarin-forms/redundant-grid-property.png)

To fix these issues, you can click on **Remove redundant grid properties** code fix to remove the unused properties.

If the parent of the XAML element is within a grid, you can click on the **Move reduntant grid properties to parent** code fix to push the grid properties up to the parent element.
