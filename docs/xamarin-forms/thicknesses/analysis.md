!!! quote "Code inspections to spot various common issues in thickness usage"

## Introduction

When developing user interfaces with Xamarin.Forms `margin` and `padding` are constantly applied to elements to provide the desired spacing. Turns out that this spacing definitions are very standard among views on a carefully crafted design. So we keep declaring those constants tens of times which is tedious and error prone.

It's useful to have those spacings declared in a single place and referenced by a descriptive name, like we usually do with colors, but it comes harder being an even more abstract kind of asset.

!!! tip "Thickness Analysis to the rescue!"

## Avaliable Tools

MFractor provides a few handful code analysis to aid in managing thicknesses declarations:

* [**Thickness Consolidation**](../consolidation): watches for duplicate declaration of thicknesses values and suggest consolidation.
* [**Validate and Simplify**](../invalid-thickness): validates thickness declaration suggesting simplifications where appliable and informing of mismatches.
