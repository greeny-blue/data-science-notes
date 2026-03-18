## Interactive R / Shiny apps

These are substantial R / Shiny projects that I authored and developed.

For now, only screenshots are available, but I am happy to demo them if you contact me at the email address listed at the bottom of this document. I will upload the full projects here when I get the chance.

## [A Shiny application for exploratory chemometric analysis of spectral data](https://github.com/greeny-blue/data-science-notes/blob/main/interactive-apps/chemometric-app/README.md).

I used to work as a researcher where a core part of my role was chemometric analysis, specifically analysing chemical spectra. I wrote this app to save myself from endlessly editing fiddly scripts. It is feature-rich, easy to use, free and open source, and has been adopted by several labs internationally.

<img src="images/SpxSpl stack screenshot.png">

*Screenshot showing a stack of spectra with the Plotly "hover" output enriched with metadata*

#### Highlights:
- **Flexible preprocessing using a `sortable` widget**, allowing a variety of processing steps to be applied in any order with a lot of control and a minimum of fuss; the control panel automatically displays/hides relevant parameters based on your desired workflow.
- Includes many commonly used chemometric analyses, including **unsupervised (PCA, correlation, HCA)** and **supervised learning (RF, kNN, LDA)**.
- **A record of all relevant parameters is saved** whenever an analysis is performed, so you never need to remember exactly what was done.
- **Interactive `Plotly` plots throughout**, where hovering on data brings up enriching metadata or further plots to aid interpretation.
- **All objects can be exported** so further analysis can be performed in **R**.
- Produces customisable **publication-ready plots**; exported objects also carry plotting metadata and can be easily edited or manipulated with helper functions.
- **State saving** allows analyses to be shared and restored, which is useful for collaboration and review.
- **Reproducible seeds** are used for any functions involving randomisation (e.g., supervised learning algorithms), ensuring analyses are reproducible.


## A Shiny application for the analysis of NFL team and player performance

I'm a big fan of the NFL, and I wanted a bit more insight into team and player performance. This app uses `nflfastR`, `ggplot2`, and `Plotly` to produce an attractive, user-friendly interface with **loads of stats** to help you decide what the outcome of next week's games might be!

<img src="images/NFL app screenshot.png">

*Screenshot of v2, Week 17 of the 2024 season*

#### Highlights:
- Clickable team selector using a very hacked `Plotly` + `png` output and team logos downloaded from Wikipedia
- Automatically scrapes results and roster data, some via `nflfastR`
- Lots of stats!


## [PacketScopeR: Interactive PCAP Explorer](https://github.com/greeny-blue/packetscoper)  

PacketScopeR is a lightweight interactive application for exploring network traffic data from PCAP files. It enables rapid inspection of network behaviour for triage and anomaly detection by transforming parsed packet data into structured summaries and visualisations. The tool focuses on clarity and usability, allowing users to filter traffic by network scope and quickly identify key features such as frequently observed IPs or other variables of interest. This is a less substantial app (it took a couple of hours) but is a precursor to a more sophisticated app.

<img src="images/PacketScopeR screenshot.png">
<i>PacketScopeR screenshot</i>

#### Highlights:

- Interactive exploration of parsed PCAP data through a web-based interface  
- Dynamic classification of traffic (internal, external, and mixed) based on user-defined network ranges  
- Flexible filtering to isolate relevant subsets of network activity  
- Real-time aggregation and visualisation of selected variables  
- Numerical IP sorting for meaningful ordering of network entities  
- Integrated tabular and graphical views for complementary analysis  
- Dark mode support
- Designed as a foundation for future extensions such as IP enrichment, DNS resolution, and anomaly detection  

---

<img src="images/greeny-blue-email.png" width="300">
