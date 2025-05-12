# Quarto templates for NBA website synthesis content

This repository contains the necessary files for NBA content contributors to set up and test their individual pages for the NBA website. It is not intended to function as a website. Therefore the overall website setup, such as the top and side navigation bars are not configured in _quarto.yml.

### quarto-templates

This folder contains two different templates:

- **basic.qmd** - a simple template for users contributing pages with mostly text and images as content.
- **scientific.qmd** - a template containing all relevant functionality for scientific content such as author crediting, and example code blocks for figures and tables. It also lays out the general order of content for these pages.

Both these templates require **custom.scss** which sets up the custom styling applied in the NBA webpage to match the look and feel of the SANBI website (as far as possible - not all Quarto elements are easily customizable).

This folder also contains a recommended subfolder structure for storing input data and images used in the Quarto files.

- **data** - for storing small (<50 MB) input data files. For example summary statistics in .csv format feeding into the generation of tables and graphs of headline indicators.
- **imgs** - store all image files (.png or .webp) used within your quarto files here.

### csv-templates

This folder contains recommended structure for input data files to be used with the [NBA graphs package]( https://github.com/SANBI-NBA/nbaR).


