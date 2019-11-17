# Cross Project Binding Context Resolution

If your views and view models are in separate projects and you'd like to use implicit MVVM resolution, you'll need to give MFractor a nudge in the right direction.

Unfortunately, it is too expensive to scan the solution to match view models to pages; the scan takes anywhere between 10's to 100's of milliseconds in a moderately sized solution. Therefore, for efficiency reasons, you need to use an MFractor configuration to enable cross-project MVVM resolution.

To make MFractor use View Models in a project separate to your views, you'll need to create an MFractor config for each project.

In the project that contains your views, create a file named app.mfc.xml with the following content:

```
<?xml version="1.0" encoding="UTF-8" ?>
<mfractor>
    <configure id="com.mfractor.configuration.forms.mvvm_resolution">
        <property name="ViewModelsProjectName" value="TODO: Insert the name of your view models project as it appears in the solution explorer"/>
    </configure>
</mfractor>  
```

In the project that contains your view models, create a file named app.mfc.xml with the following content:

```
<?xml version="1.0" encoding="UTF-8" ?>
<mfractor>
    <configure id="com.mfractor.configuration.forms.mvvm_resolution">
        <property name="ViewsProjectName" value="TODO: Insert the name of your views project as it appears in the solution explorer"/>
    </configure>
</mfractor>
```
