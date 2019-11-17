

It's also possible to explicitly specify a desired binding context by applying the DesignTimeBindingContext attribute to the code behind class.

To get started, add the following code file to your project:

**DesignTimeBindingContextAttribute.cs**

```
using System;

namespace MyApp.Attributes
{
    /// <summary>
    /// Apply the design time binding context attribute to your code-behind class to inform tools of your intended runtime binding context.
    /// </summary>
    [AttributeUsage(AttributeTargets.Class, AllowMultiple = false)]
    public class DesignTimeBindingContextAttribute : Attribute
    {
        /// <summary>
        /// Specifies the design time binding context using a fully qualified type name.
        ///
        /// For example: MyApp.ViewModels.LoginViewModel.
        /// </summary>
        /// <param name="typeName">The fully qualified type name for the design time binding context.</param>
        public DesignTimeBindingContextAttribute(string typeName)
        {
        }

        /// <summary>
        /// Specifies the design time binding context using typeof().
        ///
        /// For example: typeof(LoginViewModel)
        /// </summary>
        /// <param name="type">The <see cref="System.Type"/> for the design time binding context, using typeof().</param>
        public DesignTimeBindingContextAttribute(Type type)
        {
        }
    }
}
```

Next, apply this attribute onto the code-behind class for your XAML file:

**Applying By Type**

`[DesignTimeBindingContext(typeof(MyBindingContext))]`

**Applying By String**

`[DesignTimeBindingContext("MyApp.MyBindingContext")]`

Applying this attribute directs MFractor at your binding context to enable data-binding IntelliSense, code actions and code analysis for that XAML file.
