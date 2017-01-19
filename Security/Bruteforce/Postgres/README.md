#Bruteforcer
The purpose of this project is to try to bruteforce the password of a known account. By default, the program tries to attack an instance on the same machine. If it isn't running on the same machine change <localhost> with the IP address (in the python file) 

## i-bruteforcer.sh
 This file will loop through your wordlist and call the python script

## bruteforce.py
 this file will try to make a request to the postgres instance.

## Wordlist
 In order to execute the program needs a wordlist. Bigger is the wordlist, more time it will take. If you don't know which wordlist to take, use simply rockyou.txt.
 On certain OS, you can find it at **/usr/share/wordlist/**

# Usage 
 - Replace <wordlist> in the bash file
 - Replace <username> in th python file


````bash
chmod u+x i-bruteforcer.sh bruteforce.py
./i-bruteforcer.sh
```