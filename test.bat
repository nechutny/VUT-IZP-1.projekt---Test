@echo off

SET pass=10
SET tests=10

::test_1
echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin porta diam vitae arcu hendrerit, nec pretium mi auctor. Proin sit amet consectetur diam. Mauris in faucibus quam, sed luctus nunc." | proj1.exe o > test/test_1.output
fc test\test_1.test test\test_1.output
if errorlevel 1 set /a "pass-=1"

::test_2
echo "I když se zpětný odběr vybitých tužkových baterií během posledních dvou let zdvojnásobil ze 458 tun v roce 2010 na loňských 921 tun" | proj1.exe : > test/test_2.output
fc test\test_2.test test\test_2.output
if errorlevel 1 set /a "pass-=1"

::test_3
echo "Relevantnější informace o pRavéM půvOdci e-mailu 123 lZe ZjistIt v doprovodné hlavičce zprávy, i když I tYto údaje lze ZFAlšOvat." | proj1.exe ^^ > test/test_3.output
fc test\test_3.test test\test_3.output
if errorlevel 1 set /a "pass-=1"

::test_4
echo "AbColutně o ničem neCímsC a nevím o niCom, kdo by něCo takového dělal." | proj1.exe C 3 > test/test_4.output
fc test\test_4.test test\test_4.output
if errorlevel 1 set /a "pass-=1"

::test_5
echo "AbColutně o ničemz neCímsC a nevím o niCom, kdo by něCo takového dělal." | proj1.exe . 3 > test/test_5.output
fc test\test_5.test test\test_5.output
if errorlevel 1 set /a "pass-=1"

::test_6
echo "I kdy_ se zpětnx_ odb_r vybitých tužkových baterií během_ posledních dvo_u let _ as_ zdvojnásobil ze 458_ tun" | proj1.exe _ 4 -d > test/test_6.output
fc test\test_6.test test\test_6.output
if errorlevel 1 set /a "pass-=1"

::test_7
echo "...Ani poté ale / - . !!! ####  mužova agresivita neustávala, a i když byl na zemi, snažil se alespoň nohou kopnout ... do !! ; zakročujících strážníků." | proj1.exe . -d > test/test_7.output
fc test\test_7.test test\test_7.output
if errorlevel 1 set /a "pass-=1"

::test_8
echo "Lorem!ipsum!dolor.sit,amet,consectetur=adipiscing´elit.Proin&porta$diam@vitae|arcu>hendrerit, nec<pre_tium@mi%%auctor. Proin&sit*amet(consectetur)diam. Mauris{in}faucibus quam, sed luctus _nunc" | proj1.exe r 003 -d > test/test_8.output
fc test\test_8.test test\test_8.output
if errorlevel 1 set /a "pass-=1"

::test_9
echo "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" | proj1.exe a 3 -d
if errorlevel 1 set /a "pass-=1"

::test_10
echo "" | proj1.exe e 1 -d  > test/test_10.output
fc test\test_10.test test\test_10.output
if errorlevel 1 set /a "pass-=1"

cls
echo Upesnost - %pass% / %tests%
pause
