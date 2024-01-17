#!/bin/bash

echo "1- Iniciando criação de diretórios..."

mkdir /adm /publico /ven /sec

echo "Procedimento 1 finalizado."


echo "2- Iniciando criação de grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Procedimento 2 finalizado."


echo "3- Iniciando criação de usuários"

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

useradd debora -m -c "Débora" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd Rogerio -m -c "Rogério" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

echo "Procedimento 3 finalizado."


echo "4- Alterando permissões de repositórios criados"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Procedimento 4 finalizado"
