function help {
    echo "$0 expects the follwoing arguments:"
    echo "\t-d to give the location of the datadump as a URL"
    echo "\t-n the named graph in which the data is to be loaded"
}

function get_data {
    echo "Retrieving data from $datadump"
    wget $datadump
    filename=`basename $datadump`
    echo "Filename $filename"
}

function load_data {
    echo "Loading data to $namedgraph"
    # Move datadump to GraphDB server data folder
    mv $filename "/data0/graphdb-import-dir"
    # GraphDB REST API call to import from server data folder
    curl -X POST --header "Content-Type: application/json" \
        --header "Accept: application/json" \
        -d '{"fileNames": ["'$filename'"], "importSettings": {"context": "'$namedgraph'"}}' \
        "https://swel.macs.hw.ac.uk/data/rest/data/import/server/bioschemas"
}

function add_datadump_provenance {
    echo "Adding provenance data for the datadump"
    date=`date '+%Y-%m-%d'`
    provfile="/data0/graphdb-import-dir/prov-$filename-$datetime.ttl"
    # Write triples to file for loading into server (easier than curl update)
    echo "<$namedgraph> <http://purl.org/pav/retrievedFrom> <$datadump> ." > $provfile
    echo "<$namedgraph> <http://purl.org/pav/retrievededOn> \"$datetime\"^^<http://www.w3.org/2001/XMLSchema#dateTime> ." >> $provfile
    echo "<$namedgraph> a <http://schema.org/Dataset> ." >> $provfile
    filename=`basename $provfile`
    curl -X POST --header "Content-Type: application/json" \
        --header "Accept: application/json" \
        -d '{"fileNames": ["'$filename'"]}' \
        "https://swel.macs.hw.ac.uk/data/rest/data/import/server/bioschemas"
}

while getopts d:n: flag
do
    case "${flag}" in
        d) datadump=${OPTARG};;
        n) namedgraph=${OPTARG};;
    esac
done

if [[ -z ${datadump} ]] || [[ -z ${namedgraph} ]]; then
    help
fi
filename=`basename $datadump`
datetime=`date '+%Y-%m-%dT%H:%M:%S%Z'`
get_data
load_data
add_datadump_provenance
echo