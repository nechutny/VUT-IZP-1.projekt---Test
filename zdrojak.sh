#!/bin/sh
echo "Kontrola zakazanych funkci\n"

echo "\nNalezeno scanf: "
grep "scanf" proj1.c -c

echo "\nNalezeno atoi: "
grep "atoi" proj1.c -c

echo "\nNalezeno isalnum: "
grep "isalnum" proj1.c -c

echo "\nNalezeno isdigit: "
grep "isdigit" proj1.c -c

echo "\nNalezeno isalpha: "
grep "isalpha" proj1.c -c

echo "\nNalezeno strtol: "
grep "strtol" proj1.c -c

echo "\nNalezeno strtoul: "
grep "strtoul" proj1.c -c

