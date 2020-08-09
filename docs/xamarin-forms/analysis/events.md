!!! quote "Code inspections that verify EventHandler usages in XAML"

## Empty Event Handler Assignment

This code inspection checks that the callback method  event handler assignment is not empty; empty event handler assignments will cause a compilation error.

![The empty event handler inspection](/img/xamarin-forms/empty-event-handler.png)

## Verify Event Handler Exists In Code Behind Class

This code inspection checks that an event callback referenced referenced by an attribute value exists in the code behind class.

![The unknown event handler inspection](/img/xamarin-forms/missing-event-handler.png)

MFractor will also provide code fixes where you can:

 * Fix the event handler reference using a closely named method in the code-behind class.
 * Generate a new event handler callback method in the code-behind class.

## Event Handler Signature Mismatch

This code inspection checks that the signature for the event callback in the code behind class matches the expected signature for the event it is bound to.

![Event handler binding mismatch](/img/xamarin-forms/event-handler-arg-mismatch.png)
