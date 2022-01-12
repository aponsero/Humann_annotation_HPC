##Steps Humann install

conda create --name humann
conda install pip
pip install humann
conda install -c bioconda metaphlan
# fix libtbb2 for bowtie2
conda install tbb=2020.2


INSTALL_LOCATION="/xdisk/bhurwitz/mig2020/rsgrps/bhurwitz/alise/my_data/database/HUmann"
humann_databases --download chocophlan full $INSTALL_LOCATION
humann_databases --download uniref uniref90_diamond $INSTALL_LOCATION
humann_databases --download utility_mapping full $INSTALL_LOCATION

