

#!/bin/sh

# Commande pour assembler deux pages A4 (chacune étant une page A4_Paysage)
# en les disposant l'une en dessous de l'autre,
# afin de générer, non pas une page au format A3,
# mais une reduction au format A4

montage \
        -tile 1x2 \
        -density 150 \
        -geometry +0+0 \
        A4_Paysage_General.pdf \
        A4_Paysage_Detail.pdf \
        -resize "70.7%" \
        A4_Assemblage.pdf
