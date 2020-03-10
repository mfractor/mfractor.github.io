
This documentation is written using [MkDocs](https://www.mkdocs.org/).

To contribute you will need to install a few things.

First install [Python](https://www.python.org/).

Next install [pip](https://pip.readthedocs.io/en/stable/installing/).

Now you can install *mkdocs*:

`pip install mkdocs`

This uses a custom theme, [material][material] which needs installing:

`pip install mkdocs-material`

If this isn't installed when you try to run the project it won't work and you'll get the following error:

```
mkdocs serve
INFO    -  Building documentation... 
ERROR   -  Config value: 'theme'. Error: Unrecognised theme name: 'material'. The available installed themes are: readthedocs, mkdocs 
```

Now you can fork this [repo](https://github.com/mfractor/mfractor.github.io) and begin working on some missing documentation.

Check the [open issues](https://github.com/mfractor/mfractor.github.io/issues) and comment on any to show you are working on them so there isn't duplication.

### Extensions

`admonition` and `codehilite` are part of the [material][material] theme.

```yml
markdown_extensions:
  - attr_list
  - admonition
  - codehilite
```

[material]: https://squidfunk.github.io/mkdocs-material/