#!/bin/bash

if [ ! -f "exercise.txt" ]; then
  echo downloading http://stanford.edu/~mcfrank/corpus/objects.txt...
   curl -s http://stanford.edu/~mcfrank/corpus/objects.txt -o exercise.txt
  echo download successful!
else
  echo exercise.txt already exists, skipping download...
fi

PHRASE1="book bird rattle mirror bunny"
PHRASE1_COUNT=`grep "$PHRASE1" exercise.txt | wc -l`

PHRASE2="rattle"
PHRASE2_COUNT=`grep "$PHRASE2" exercise.txt | wc -l`

echo the phrase "$PHRASE1" ocurred $PHRASE1_COUNT times
echo the word "$PHRASE2" ocurred $PHRASE2_COUNT times

COUNTER=0
while read LINE; do
  if [ "$LINE" == "bird" ]; then
    COUNTER=$(( $COUNTER + 1 ))
    echo bird \#$COUNTER
  fi
done < exercise.txt

