!!! quote "Code analysers that the usage of the Slider control"

## Slider Maximum Must Be Set Before Minimum

A limitation of the `Slider` control in Xamarin.Forms is that it's `Maximum` value must be set before it's `Minimum` value in XAML; failing to do so will result in a runtime exception.

MFractor will inspect usages of Slider and verify that it's maximum value is set before it's minimum:

![Slider Max Before Min Analysis](/img/xamarin-forms/slider-max-min.png)

To resolve this issue, MFractor can swap the ordering so that the slider `Maximum` value will be initiliased before it's minimum.

To learn more about this restriction, please see the [official Xamarin.Forms Slider documentation](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/user-interface/slider#precautions).
