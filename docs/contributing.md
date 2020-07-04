!!! quote "Help us enhance and fix MFractor docs so everyone can get the most of this tool."

## Introduction

The MFractor Documentation site is an open source project created and maintained by MFractor. Our goal is to provide rich documentation and reference to our users and customers so they can get the most of the tool. The docs is not only about the tool features itself, but we always try to bring knowledge on development platforms that MFractor assists.

!!! abstract "Mission"
    Our readers must learn something new beyond the product feature they're searching information itself and enrich their knowledge of the platforms that our tool assists.

Documenting a product is critical and hard to do right and keep up to date. The MFractor team is very small and strive to keep up with the ever changing product features. Community contribution is very desired and welcome to achieve the goal of having this site not only as a source of information for MFractor but also as an important knowledge base for developers.

## Contribution Workflow

Contributing to MFractor Documentation is much like any Git hosted open source project:

1. Pick an [issue](https://github.com/mfractor/mfractor.github.io/issues) you wish to contribute and comment on
2. Fork the [project repository at GitHub](https://github.com/mfractor/mfractor.github.io/)
3. Make your changes to your forked repository
4. Open a Pull Request to merge your changes to the main repo
    * If your changes are accepted we'll merge it and notify you about it.
    * We may ask you for additional changes or reply with suggestions through comments on the Pull Request.

In case we add suggestions to your Pull Request we will provide a 3 day time-frame for you to review before merging your changes. We may decide to apply the suggestions internally after the merge.

This is the high level diagram of the Contribution Workflow:

![](/img/contribution-workflow.png)

!!! important
    All the work to this repository is tracked through issues. We can't track forks to know about ongoing contributions to the project, so please keep your comments on the issues you may be working on so we can manage conflicts. If you've found a problem or a missing documentation that is not listed on the issues, please open one before starting your work.

!!! info
    We may change parts of your contribution to fix typos, correct data or add missing information. This will be done without notice.

Accepted contributions will be acknowledge on a specific section of the home page. **Don't add the acknowledgements to your Pull Requests**, otherwise they will be rejected. Citations will be only handled internally by our moderation team.

## Requirements

This documentation is written using [`mkdocs`](https://www.mkdocs.org/), a popular platform for software documentation sites, and takes advantage of the [`mkdocs-material`](https://squidfunk.github.io/mkdocs-material/) a plugin that adds material design concepts and themes to the site.

To contribute you can use the mkdocs-material docker image (preferred) or will need to install a few things:

* Install [Python](https://www.python.org/).
* Install [pip](https://pip.readthedocs.io/en/stable/installing/).
* Depending on your terminal shell, configure `PATH` to point to pips binary folder:
    * For `zsh`, create the file `~\.zshrc` with the contents: `export PATH="$PATH:/Users/matthewrobbins/Library/Python/2.7/bin"`
    * For `bash`, create the file `~\.bash_profile` with the contents: `export PATH="$PATH:/Users/matthewrobbins/Library/Python/2.7/bin"`
* Install *mkdocs* from the pip tool `pip install mkdocs`.
* Install the [Material Theme for mkdocs] from `pip install mkdocs-material`
*

!!! important
    Make sure to install mkdocs and the material theme both using `pip`. If you install `mkdocs` from Homebrew and them install the material theme from `pip` (the only place where its available as a package) you will get errors trying to compile the docs or running it locally.

Local installation is error prone. Consider using the docker image for faster and simpler setup. The script file `dsrv` at the root of the repository (`docs` branch) will try to download the correct image and run the local server.

!!! note
    The `publish.sh` and `dpub` scripts are intended for publishing are only used internally. Trying to use them without the required permissions will fail.

### Extensions

`admonition` and `codehilite` are part of the [material][material] theme.

```yml
markdown_extensions:
  - attr_list
  - admonition
  - codehilite
```

[material]: https://squidfunk.github.io/mkdocs-material/

### Troubleshooting

If the Material Theme isn't installed when you try to run the project it won't work and you'll get the following error:

```
mkdocs serve
INFO    -  Building documentation...
ERROR   -  Config value: 'theme'. Error: Unrecognised theme name: 'material'. The available installed themes are: readthedocs, mkdocs
```

Make sure to install mkdocs and material theme from `pip`.

## Get in touch

If you need further assistance on contribution please refer to [Matthew Robins](https://twitter.com/matthewrdev) or [Rafael Veronezi](https://twitter.com/ravero) or open an issue. We'll be glad to assist.
