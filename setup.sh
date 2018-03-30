#!/bin/sh

# inital development enviornment config
./initial.sh

# set up env config
source ~/.bashrc

# set up tool config
for f in ./bin/*; do
    ./$f
done
