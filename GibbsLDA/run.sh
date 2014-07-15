#!/usr/bin/env bash

for((n=10; n<=200; n=n+10))
do
	./src/lda -est -alpha 0.5 -beta 0.1 -ntopics $n -niters 1000 -savestep 100 -twords 30 -dfile /home/alber/lda/GibbsLDA/jd/after_cixing.dat	
	mv ~/lda/GibbsLDA/jd/model-final.twords ~/lda/GibbsLDA/jd/stats/model-final-${n}.txt
done
