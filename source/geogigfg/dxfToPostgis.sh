#!/bin/zsh

echo "#"
echo "# Transfert des données (fichiers dxf)"
echo "# stockés dans le repetoire "
echo "# /home/fred/f/CARTOGRAPHIE/Plans/1_Topo_Existants/4_Plans_conformes_CC46/Ottawa-rochepierre-créche/"
echo "# vers la base postgis origine"
echo "#"

#list=$(ls -1 /home/fred/f/CARTOGRAPHIE/Plans/1_Topo_Existants/4_Plans_conformes_CC46/Ottawa-rochepierre-créche/*.dxf)
#list=$(ls -1 /home/fred/f/CARTOGRAPHIE/Plans/1_Topo_Existants/4_Plans_conformes_CC46/Ottawa-rochepierre-créche/*.dxf)
list=("${(@f)$(ls -1 /home/fred/f/CARTOGRAPHIE/Plans/1_Topo_Existants/4_Plans_conformes_CC46/Ottawa-rochepierre-créche/*.dxf)}")
for file in $list[@] ;
do
    echo "# "$file ;
    iconv -f utf8 -t latin1 $file > test.dxf
    file='test.dxf'
    #ogrinfo $file ;
    #ogrinfo $file entities ;
    echo "# psql drop table"
    #psql -h localhost -d origine -U Fred -c "DROP TABLE if exists \"entities\";"
    #psql -h localhost -d origine -U Fred -c "DROP TABLE if exists \"dxf_point\";"
    #psql -h localhost -d origine -U Fred -c "DROP TABLE if exists \"dxf_multilinestring\";"
    #geomtypes=("${(@f)$'POINT MULTILINESTRING MULTIPOLYGON'}") ;
    geomtypes=("POINT" "MULTILINESTRING" "MULTIPOLYGON") ;
    #geomtypes=(POINT MULTILINESTRING MULTIPOLYGON) ;
    #echo $geomtypes ;
    #for geom in $geomtypes ;
        #echo $geom ;
        echo "POINT" ;
        echo "# psql drop table" ;
        #psql -h localhost -d origine -U Fred -c "DROP TABLE if exists \"dxf_"$geom"\";"
        psql -h localhost -d origine -U Fred -c "DROP TABLE if exists \"dxf_POINT\";"
        psql -h localhost -d origine -U Fred -c "DROP TABLE if exists \"dxf_MULTILINESTRING\";"
        psql -h localhost -d origine -U Fred -c "DROP TABLE if exists \"dxf_MULTIPOLYGON\";"
        #echo "# ogr2ogr "$geom ;
        echo "# ogr2ogr ""POINT" ;
        export PGCLIENTENCODING=utf8 ;
        ogr2ogr \
            -overwrite \
            -skipfailures \
            -a_srs 'EPSG:3946' \
            -f PostgreSQL PG:'host=localhost dbname=origine user=Fred password=Fred' \
            -sql "select *, OGR_STYLE from entities " \
            -nlt POINT \
            -nln "Dxf_POINT" \
            test.dxf \
            2> /dev/null ;
        echo "# ogr2ogr ""MULTILINESTRING" ;
        ogr2ogr \
            -overwrite \
            -skipfailures \
            -a_srs 'EPSG:3946' \
            -f PostgreSQL PG:'host=localhost dbname=origine user=Fred password=Fred' \
            -sql "select *, OGR_STYLE from entities " \
            -nlt MULTILINESTRING \
            -nln "Dxf_MULTILINESTRING" \
            $file \
            2> /dev/null ;
        echo "# ogr2ogr ""MULTIPOLYGON" ;
        ogr2ogr \
            -overwrite \
            -skipfailures \
            -a_srs 'EPSG:3946' \
            -f PostgreSQL PG:'host=localhost dbname=origine user=Fred password=Fred' \
            -sql "select *, OGR_STYLE from entities " \
            -nlt MULITPOLYGON \
            -nln "Dxf_MULTIPOLYGON" \
            $file \
            2> /dev/null ;
        #ogr2ogr \
        #    -overwrite \
        #    -skipfailures \
        #    -a_srs 'EPSG:3946' \
        #    -f PostgreSQL PG:'host=localhost dbname=origine user=Fred password=Fred' \
        #    -sql "select *, OGR_STYLE from entities " \
        #    -nlt $geom \
        #    -nln "Dxf_"$geom \
        #    $file \
        #    2> /dev/null ;
    #done ;
done


