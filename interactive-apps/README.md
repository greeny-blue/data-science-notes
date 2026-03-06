# Interactive **R / Shiny** apps

These are substantial `R` / `Shiny` projects, both of which I authored and developed. Only screenshots are available at the moment but but I am happy to demo if you contact me on the email address given at the bottom of this document. I will get round to uploading them at some point.

## Chemometric analysis

I used be a researcher where a core part of my role was chemometric analysis, specifically analysing chemical spectra. I wrote this app to save me having to do endlessly edit fiddly scripts. It's feature-rich, easy to use, free and open source, and has been adopted by several labs internationally. 

<img src="images/SpxSpl stack screenshot.png">

Highlights:
  - **Flexible preprocessing using a `sortable` widget** that allows a variety of processing steps to be carried out in any order, with a minumum of fuss
  - Includes many commonly-used chemometric analyses, including **unsupervised (PCA, correlation, HCA) and supervised learning (RF, kNN, LDA)**
  - **A record of all the relevant parameters is saved** when an analysis is performed so you never need to remember what was done
  - **Interactive `Plotly` plots throughout, enriched with metadata** to aid interpretation
  - **All objects can be exported** so further analysis can be performed in `R`
  - Produces customisable, **publication-ready plots**, though objects exported also carry plotting metadata and can be easily edited and/or manipulated with helper functions
  - **State saving** so analyses can be shared and restored; useful for collaboration and review
  - **Reproducible seeds** used for all functions that use any randomisation (e.g., supervised learning algorithms); all analyses are reproducible


## Analysis of NFL team and player performance

I'm a big fan of the NFL, and I wanted more insight on the teams and their performance. It uses `nflfastR`, `ggplot2`, `Plotly` to produce an attractive and user-friendly interface, with **loads of stats** to help you decide what the outcome of the next week's games might be!

<img src="images/NFL app screenshot.png">

*Screenshot of v2, Week 17 of the 2024 season*

---

<img src="images/greeny-blue-email.png width="350">
