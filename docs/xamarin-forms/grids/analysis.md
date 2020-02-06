!!! quote ""
    Inspects XAML Grids child elements to identify if positioning or span is out of boundarys.

## Introduction

Grids are one of the most versatile and used layouts provided by Xamarin.Forms. Despite being easy to use, it sometimes hard to keep track of its child elements. MFractor introduces a few Grid Code Analysis to aid on composing your layouts.

## Row and Column Analysis

Those Code Analysis are applied to the `Grid.Row` and `Grid.Column` attached properties applied to the child element of a Grid. MFractor inspects the rows and columns definitions of the Grid and check each child element position to check if it's within it's defined bounds.

### Row Outside Grid Boundary

If a `Grid.Row` definition is beyond the Rows Definitions of the parent Grid, MFractor will show a warning for the faulty location:

![](/img/xamarin-forms/grid-analysis-row-out-bounds.png)

### Column Outside Grid Boundary

If a `Grid.Column` definition is beyond the Columns Definitions of the parent Grid, MFractor will show a warning for the faulty location:

![](/img/xamarin-forms/grid-analysis-column-out-bounds.png)

## Row and Column Span Analysis

Those Code Analysis are applied to the `Grid.RowSpan` and `Grid.ColumnSpan` attached properties applied to the child element of a Grid. MFractor inspects the rows and columns definitions of the Grid and check each child element that declares spans to check if they doesn't go beyond the defined bounds.

### Row Span Outside Grid Boundary

If a `Grid.RowSpan` definition goes beyond the Rows Definitions from the current Row where the element is placed, MFractor will show a warning for the faulty span size:

![](/img/xamarin-forms/grid-analysis-row-span.png)

### Column Span Outside Grid Boundary

If a `Grid.RowSpan` definition goes beyond the Rows Definitions from the current Row where the element is placed, MFractor will show a warning for the faulty span size:

![](/img/xamarin-forms/grid-analysis-row-span.png)
