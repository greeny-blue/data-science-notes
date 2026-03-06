## Interactive R / Shiny apps

These are substantial R / Shiny projects that I authored and developed.

For now, only screenshots are available, but I am happy to demo them if you contact me at the email address listed at the bottom of this document. I will upload the full projects here when I get the chance.

## [A Shiny application for exploratory chemometric analysis of spectral data](https://github.com/greeny-blue/data-science-notes/blob/main/interactive-apps/chemometric-app/README.md).

I used to work as a researcher where a core part of my role was chemometric analysis, specifically analysing chemical spectra. I wrote this app to save myself from endlessly editing fiddly scripts. It is feature-rich, easy to use, free and open source, and has been adopted by several labs internationally.

<img src="images/SpxSpl stack screenshot.png">

*Screenshot showing a stack of spectra with the Plotly "hover" output enriched with metadata*

#### Highlights:
- **Flexible preprocessing using a `sortable` widget**, allowing a variety of processing steps to be applied in any order with a minimum of fuss
- Includes many commonly used chemometric analyses, including **unsupervised (PCA, correlation, HCA) and supervised learning (RF, kNN, LDA)**
- **A record of all relevant parameters is saved** whenever an analysis is performed, so you never need to remember exactly what was done
- **Interactive `Plotly` plots throughout**, enriched with metadata to aid interpretation
- **All objects can be exported** so further analysis can be performed in `R`
- Produces customisable **publication-ready plots**; exported objects also carry plotting metadata and can be easily edited or manipulated with helper functions
- **State saving** allows analyses to be shared and restored, which is useful for collaboration and review
- **Reproducible seeds** are used for any functions involving randomisation (e.g. supervised learning algorithms), ensuring analyses are reproducible


## A Shiny application for the analysis of NFL team and player performance

I'm a big fan of the NFL, and I wanted a bit more insight into team and player performance. This app uses `nflfastR`, `ggplot2`, and `Plotly` to produce an attractive, user-friendly interface with **loads of stats** to help you decide what the outcome of next week's games might be!

<img src="images/NFL app screenshot.png">

*Screenshot of v2, Week 17 of the 2024 season*

#### Highlights:
- Clickable team selector using a very hacked `Plotly` + `png` output and team logos downloaded from Wikipedia
- Automatically scrapes results and roster data, some via `nflfastR`
- Lots of stats!

---

<img src="images/greeny-blue-email.png" width="300">
