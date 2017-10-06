#! /bin/bash

counter=1
while (( $counter <= 16 ))
do
    if (( $counter < 10 ))
    then
        diff <(make test0$counter) <(make rtest0$counter)
    else
        diff <(make test$counter) <(make rtest$counter)
    fi
    ((counter++))
done
