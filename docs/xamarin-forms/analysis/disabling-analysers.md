!!! quote "How to disable code analysers in MFractor"

## Introduction

MFractor includes several code analysers that aid in managing various parts of you app and in surfacing issues at design time.

Sometimes you will want to control whether these run on particular files; this is possible with a suppression comment.

## Disabling A Code Analyser

You can disable XAML analysers at the document level by adding a suppress comment, structured as `MFractor: Suppress(ID)`, to top of your document. MFractor supports disabling analysers by both it's Diagnostic ID (EG: `MF1001`) or its MFractor ID (EG: `com.mfractor.analysis.xaml.binding_expression_resolves`)

**Disabling Using Diagnostic ID**
```
<!-- [MFractor: Suppress(MF1000)] -->
```

**Disabling Using MFractor ID**
```
<!-- [MFractor: Suppress(com.mfractor.analysis.xaml.binding_expression_resolves)] -->
```

![Disable Anaysis](/../../img/analysis/disable-analyser.gif)

### Links

- [Tweet](https://twitter.com/matthewrdev/status/1261521640799657985)
