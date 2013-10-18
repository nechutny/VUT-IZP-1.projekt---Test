#!/bin/sh

#
# 	Autor:			Stanislav Nechutný (xnechu01)
#	Název:			1. projekt IZP na FIT VUT - Test
#	Repozitář:		git@github.com:nechutny/VUT-IZP-1.projekt---Test.git
#

echo "\n[test_1] Test na znak o na libovolne pozici";
echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin porta diam vitae arcu hendrerit, nec pretium mi auctor. Proin sit amet consectetur diam. Mauris in faucibus quam, sed luctus nunc." | ./proj1 o > test/test_1.output
diff test/test_1.test test/test_1.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_1.output;
else
	echo " ... Chyba";
fi

echo "\n[test_2] Test na znak cisla na libovolne pozici";
echo "I když se zpětný odběr vybitých tužkových baterií během posledních dvou let zdvojnásobil ze 458 tun v roce 2010 na loňských 921 tun" | ./proj1 : > test/test_2.output
diff test/test_2.test test/test_2.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_2.output;
else
	echo " ... Chyba";
fi

echo "\n[test_3] Test na znak velké písmeno na libovolne pozici";
echo "Relevantnější informace o pRavéM půvOdci e-mailu 123 lZe ZjistIt v doprovodné hlavičce zprávy, i když I tYto údaje lze ZFAlšOvat." | ./proj1 ^ > test/test_3.output
diff test/test_3.test test/test_3.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_3.output;
else
	echo " ... Chyba";
fi

echo "\n[test_4] Test na znak C na 3 pozici ";
echo "AbColutně o ničem neCímsC a nevím o niCom, kdo by něCo takového dělal." | ./proj1 C 3 > test/test_4.output
diff test/test_4.test test/test_4.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_4.output;
else
	echo " ... Chyba";
fi

echo "\n[test_5] Test na minimální délku 3 písmena";
echo "AbColutně o ničemz neCímsC a nevím o niCom, kdo by něCo takového dělal." | ./proj1 . 3 > test/test_5.output
diff test/test_5.test test/test_5.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_5.output;
else
	echo " ... Chyba";
fi

echo "\n[test_6] Test na podtržítko na 4. pozici s debug modem";
echo "I kdy_ se zpětnx_ odb_r vybitých tužkových baterií během_ posledních dvo_u let _ as_ zdvojnásobil ze 458_ tun" | ./proj1 _ 4 -d > test/test_6.output
diff test/test_6.test test/test_6.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_6.output;
else
	echo " ... Chyba";
fi

echo "\n[test_7] Počítání slov s debug modem";
echo "...Ani poté ale / - . !!! ####  mužova agresivita neustávala, a i když byl na zemi, snažil se alespoň nohou kopnout ... do !! ; zakročujících strážníků." | ./proj1 . -d > test/test_7.output
diff test/test_7.test test/test_7.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_7.output;
else
	echo " ... Chyba";
fi

echo "\n[test_8] Pozice začíná nulama s debug modem";
echo "Lorem!ipsum!dolor.sit,amet,consectetur=adipiscing´elit.Proin&porta$diam@vitae|arcu>hendrerit, nec<pre_tium@mi%auctor. Proin&sit*amet(consectetur)diam. Mauris{in}faucibus quam, sed luctus _nunc" | ./proj1 r 003 -d > test/test_8.output
diff test/test_8.test test/test_8.output

if [ "$?" = "0" ]; then
  echo " ... OK";
  rm test/test_8.output;
else
	echo " ... Chyba";
fi

echo "\n[test_9] Kontrola, zda aplikace nespadne na slove delsim, nez 80 znaku";
echo "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" | ./proj1 a 3 -d  > /dev/null
if [ "$?" = "0" ]; then
  echo " ... OK";
else
	echo " ... Chyba";
fi

