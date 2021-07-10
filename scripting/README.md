# scripting

in a single script:  
1. download http://stanford.edu/~mcfrank/corpus/objects.txt to a filename called exercise.txt  
2. only download this file if exercise.txt does not yet exist  
3. count the number of occurences of the phrase "book bird rattle mirror bunny", and print  
4. count the number of occurences of the word "rattle" and print  
5. loop through the lines of exercise.txt. if the line only contains the word "bird", print "bird #<number of occurence>"  
6. send the script to me


sample first run output:
```
[root@localhost exam]# ./a.sh
downloading http://stanford.edu/~mcfrank/corpus/objects.txt...
download successful!
the phrase "book bird rattle mirror bunny" ocurred 9 times
the word "rattle" ocurred 199 times
bird #1
bird #2
bird #3
...
bird #N
```

sample second run output:
```
[root@localhost exam]# ./a.sh
exercise.txt already exists, skipping download...
the phrase "book bird rattle mirror bunny" ocurred 9 times
the word "rattle" ocurred 199 times
bird #1
bird #2
bird #3
...
bird #N

```

commands you'll use in your script: curl, echo, grep, wc, while, if, else


