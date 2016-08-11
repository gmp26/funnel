# funnel
Provides an R function to plot mortality rates in funnel or slice form.

**This is an R package under development and is not ready for use.**


## Usage

To use from another RStudio project, install the devtools package,
and then load the funnel package like this:

```
devtools::install_github("gmp26/funnel")
library(funnel)
?funnel4
```

## Development

### Setup
Create a new RStudio version controlled project from this distribution.

See [Package Development
Prerequisites](https://support.rstudio.com/hc/en-us/articles/200486498-Package-Development-Prerequisites). Generating documentation requires a working C++ compiler and \LaTeX. On MacOSX this amounts to installing [XCode](http://itunes.apple.com/us/app/xcode/id497799835?mt=12) and [LaTeX](http://www.tug.org/mactex/downloading.html) so the documentation can be built.

### Workflow
* Revise code
* Rebuild docs from inline code annotations with `devtools::document()`
* Rebuild package using Build > Build & Reload in the top right panel
* On errors, repeat the above two steps to make sure the NAMESPACE file
  is in sync
* Commit changes and push back to GitHub
* Test by loading the package into [shiny-funnel-app](https://github.com/gmp26/shiny-funnel-app)

We could do with adding some local tests in this package so we don't need
to push changes to test.

## Contributions

Unsolicited contributions are welcome as pull requests. Please first raise an
issue here in case the change is already planned.

## To do
* [ ] Rename `funnel4` to `funnel`?
* [x] Add local tests
* [ ] Finish basic plot function, and stabilise parameters
* [ ] Improve inline docs
* [ ] Add vignettes
