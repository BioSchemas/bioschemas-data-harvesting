# Bioschemas Data Harvesting

Details of the harvesting of Bioschemas markup from live deployments on the Web.

The initial purpose is to track the harvesting of data for use in [Project 29](https://github.com/elixir-europe/biohackathon-projects-2021/tree/main/projects/29) at the [BioHackathon-Europe 2021](https://biohackathon-europe.org/). The harvesting will be conducted with [BMUSE](https://github.com/HW-SWeL/BMUSE) and the data hosted on a server at Heriot-Watt University.

## BioHackathon 2021 Harvest

We aim to harvest data from the sites on the Bioschemas live deploy page for which we have a sitemap. We will also include sites where we have a list of URLs. Full details of the datasets to be harvested and their progress can be found on the [project board](https://github.com/BioSchemas/bioschemas-data-harvesting/projects/1).

Notes about datasets:
- DisProt: 2,044 pages harvested using the dynamic scraper (v0.4.0) on 20 October 2021
- MobiDB: 2,083 pages harvested using the dynamic scraper (v0.4.0) on 27 October 2021
- Paired Omics: 78 pages harvested using the dynamic scraper (v0.5.0) on 28 October 2021
- MassBank: 76,253 pages harvested using the static scraper (v0.5.0) on 4 November 2021; 10,326 pages did not harvest due to errors in the JSON-LD. For loading into the triplestore, the nquad files were merged using the command `find . -name *.nq -exec cat {} \; > massbank.nq` as detailed [here](https://stackoverflow.com/questions/18695105/how-to-concatenate-huge-number-of-files).
