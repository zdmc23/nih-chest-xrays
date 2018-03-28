#!/bin/bash
N=50 #150
SRC_DIR=bak/valid/
DST_DIR=valid/ALL 
#mkdir ALL && mkdir ../valid/ALL && mkdir ../test/ALL
./copy-first-n.sh $SRC_DIR/Atelectasis/ $DST_DIR $N && ./copy-first-n.sh $SRC_DIR/Cardiomegaly/ $DST_DIR $N && ./copy-first-n.sh  $SRC_DIR/Consolidation/ $DST_DIR $N && ./copy-first-n.sh $SRC_DIR/Edema/ $DST_DIR $N && ./copy-first-n.sh $SRC_DIR/Effusion/ $DST_DIR $N && ./copy-first-n.sh $SRC_DIR/Emphysema/ $DST_DIR $N && ./copy-first-n.sh $SRC_DIR/Hernia/ $DST_DIR $N && ./copy-first-n.sh $SRC_DIR/Infiltration/ $DST_DIR $N && ./copy-first-n.sh $SRC_DIR/Mass/ $DST_DIR $N && ./copy-first-n.sh $SRC_DIR/Nodule/ $DST_DIR $N && ./copy-first-n.sh $SRC_DIR/No_Finding/ $DST_DIR $N && ./copy-first-n.sh $SRC_DIR/Pleural_Thickening/ $DST_DIR $N && ./copy-first-n.sh $SRC_DIR/Pneumonia/ $DST_DIR $N && ./copy-first-n.sh $SRC_DIR/Pneumothorax/ $DST_DIR $N
ls $DST_DIR | wc -l
