#!/bin/bash
N=2 #150
DIR=../test/ALL #ALL/
#mkdir ALL && mkdir ../valid/ALL && mkdir ../test/ALL
./move-first-n.sh Atelectasis/ $DIR $N && ./move-first-n.sh Cardiomegaly/ $DIR $N && ./move-first-n.sh  Consolidation/ $DIR $N && ./move-first-n.sh Edema/ $DIR $N && ./move-first-n.sh Effusion/ $DIR $N && ./move-first-n.sh Emphysema/ $DIR $N && ./move-first-n.sh Hernia/ $DIR $N && ./move-first-n.sh Infiltration/ $DIR $N && ./move-first-n.sh Mass/ $DIR $N && ./move-first-n.sh Nodule/ $DIR $N && ./move-first-n.sh No_Finding/ $DIR $N && ./move-first-n.sh Pleural_Thickening/ $DIR $N && ./move-first-n.sh Pneumonia/ $DIR $N && ./move-first-n.sh Pneumothorax/ $DIR $N
ls $DIR | wc -l
