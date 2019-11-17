MFractor uses automatic ViewModel resolution to infer the relationship between your view models and XAML views. This is done by looking for classes and XAML views that follow industry standard naming convention.

Let's consider the following files:

 * **LoginPage.xaml** - The XAML view.
 * **LoginPage.xaml.cs** - The code behind for the XAML view.
 * **LoginViewModel** - The a C# class that is the view model for the LoginPage view.

Because these pages share the prefix Login and each has a distinct file extension or suffix, MFractor assumes the following relationships:

 * The `.xaml` extension denotes that LoginPage.xaml is a xaml view.
 * The `.xaml.cs` extension and the LoginPage component denotes that LoginPage.xaml.cs is the code behind implementation LoginPage view.
 * The `ViewModel` suffix implies that LoginViewModel is a view model. When `ViewModel` is removed from LoginViewModel and Page is removed from LoginPage, the Login component implies that the LoginViewModel is related to the LoginPage XAML view and it's code behind file.

MFractor uses these common naming conventions of Page.xaml, Page.xaml.cs and ViewModel to decide that LoginViewModel will probably be the BindingContext for LoginPage. The Page <-> ViewModel naming convention is used by several popular MVVM frameworks such as Prism and FreshMVVM.

The following suffixes are supported for XAML views:

 * Page: EG LoginPage.xaml <-> LoginViewModel
 * View: EG LoginView.xaml <-> LoginViewModel

The following suffixes are supported for View Models.

 * ViewModel: LoginPage.xaml <-> LoginViewModel
 * PageModel: LoginView.xaml <-> LoginPageModel
 * PageViewModel: LoginView.xaml <-> LoginPageViewModel
 * Model: LoginView.xaml <-> LoginModel
 * VM: LoginView.xaml <-> LoginVM
 * PageVM: LoginView.xaml <-> LoginPageVM
