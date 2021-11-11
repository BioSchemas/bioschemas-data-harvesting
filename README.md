# Bioschemas Data Harvesting

Details of the harvesting of Bioschemas markup from live deployments on the Web.

The initial purpose is to track the harvesting of data for use in [Project 29](https://github.com/elixir-europe/biohackathon-projects-2021/tree/main/projects/29) at the [BioHackathon-Europe 2021](https://biohackathon-europe.org/). The harvesting will be conducted with [BMUSE](https://github.com/HW-SWeL/BMUSE) and the data hosted on a server at Heriot-Watt University.

## BioHackathon 2021 Harvest

We aim to harvest data from the sites on the Bioschemas live deploy page for which we have a sitemap. We will also include sites where we have a list of URLs. Full details of the datasets to be harvested and their progress can be found on the [project board](https://github.com/BioSchemas/bioschemas-data-harvesting/projects/1).

We have loaded the harvested data into a GraphDB triplestore:
- [SPARQL Endpoint](https://swel.macs.hw.ac.uk/data/repositories/bioschemas)
- [Snorql Extended Interface](https://swel.macs.hw.ac.uk/bioschemas/)
- [Data directory](https://swel.macs.hw.ac.uk/bioschemas-data/)

Notes about datasets included in the collection:
1. DisProt: 2,044 pages harvested using the dynamic scraper (v0.4.0) on 20 October 2021
1. MobiDB: 2,083 pages harvested using the dynamic scraper (v0.4.0) on 27 October 2021
1. Paired Omics: 78 pages harvested using the dynamic scraper (v0.5.0) on 28 October 2021
1. BridgeDb: 2 pages harvested using the static scraper (v0.5.1) on 2 November 2021
1. PCDDB: 1,402 pages harvested using the static scraper (v0.5.1) on 2 November 2021
1. MassBank: 76,253 pages harvested using the static scraper (v0.5.0) on 4 November 2021; 10,326 pages did not harvest due to errors in the JSON-LD. For loading into the triplestore, the nquad files were merged using the command `find . -name *.nq -exec cat {} \; > massbank.nq` as detailed [here](https://stackoverflow.com/questions/18695105/how-to-concatenate-huge-number-of-files).
1. Cosmic: 2,424 pages harvested using the static scraper (v0.5.2) on 4 November 2021
1. Nanocommons: 3 pages harvested using the static scraper (v0.5.2) on 4 November 2021
1. Alliance of Genomes: 12 pages harvested using scraper (v0.5.2) on 5 November 2021
1. BioVersions: 3 pages harvested using the static scraper (v0.5.2) on 5 November 2021
1. EGA: 11,834 pages harvested using scraper (v0.5.2) on 5 November 2021; 745 pages could not be harvested
1. IFB: 87 pages harvested using scraper (v0.5.2) on 5 November 2021
1. PDBe: 672 pages harvested using scraper (v0.5.2) on 5 November 2021
1. Prosite: 5,859 pages harvested using scraper (v0.5.2) on 5 November 2021
1. UniProt: 3 pages harvested using the static scraper (v0.5.2) on 5 November 2021
1. FAIRsharing: 6,351 pages harvested using scraper (v0.5.2) on 6 November 2021
1. COVID19 Portal: 20 pages harvested using the dynamic scraper (v0.5.2) on 7 November 2021
1. GBIF: 68,167 pages harvested using the static scraper (v0.5.2) on 7 November 2021
1. TeSS: 13,940 pages harvested using scraper (v0.5.2) on 7 November 2021
1. Scholia: 
    - 5,345 pages harvested out of 660k supplied URLs using dynamic scraper (v0.5.2) on 8 November 2021; 1 page did not scrape
    - 68,974 pages harvested using dynamic scraper (v0.5.2) on 10 November 2021; 21 pages did not scrape
3. Protein Ensembl (PED): 187 pages harvested using the dynamic scraper (v0.5.2) on 9 November 2021
4. Bgee: statically scraped (v0.5.2) on 9-10 November
    - https://bgee.org/sitemap_main.xml 22 pages
    - https://bgee.org/sitemap_gene1.xml 49,001 pages
5. COVIDmine (no longer maintained): 49,959 pages scraped using the dynamic scraper (v0.5.2) on 8 November 2021
6. MetaNetX: statically scraped (v0.5.2) on 11 November 2021
    - https://www.metanetx.org/sitemap_main.xml 12 pages
    - https://www.metanetx.org/sitemap_chem1.xml 49,001 pages
