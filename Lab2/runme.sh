#!/usr/bin/bash
javac test.java
java test
g++ `wx-config --cppflags` `wx-config --libs` wxtest.c -o wxtest
./wxtest
gmcs test.cs
mono test.exe
wish testgui.tcl
ruby osoba.rub
firefox testjs.html
sqlite3 baza.db
.read testsql.sql
latex relativnost
kdvi relativnost
firefox test.html
ngspice -b primjer.cir
haskell-compilerv fact.hs
./a.out













