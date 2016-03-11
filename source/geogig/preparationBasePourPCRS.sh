#/bin/sh

psql -h VLR6180Y -d sandbox -U "Fred" -f "create_schema.sql"
psql -h localhost -d sandbox -U "Fred" -f "create_schema.sql"

psql -h VLR6180Y -d sandbox -U "CDA" -f "create_table.sql"
psql -h VLR6180Y -d sandbox -U "Departement" -f "create_table.sql"
psql -h VLR6180Y -d sandbox -U "DGFiP" -f "create_table.sql"
psql -h VLR6180Y -d sandbox -U "erdf" -f "create_table.sql"
psql -h VLR6180Y -d sandbox -U "SDE" -f "create_table.sql"
psql -h VLR6180Y -d sandbox -U "SDEER" -f "create_table.sql"
psql -h VLR6180Y -d sandbox -U "Soluris" -f "create_table.sql"
psql -h VLR6180Y -d sandbox -U "VLR" -f "create_table.sql"
psql -h VLR6180Y -d sandbox -U "Fred" -f "create_table.sql"
psql -h localhost -d sandbox -U "Fred" -f "create_table.sql"
