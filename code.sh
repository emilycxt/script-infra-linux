#!/bin/bash

echo "Criando diretórios..."

echo "Criando pasta publico"
mkdir /publico
echo "pasta publico  criada com sucesso"

echo "Criando pasta adm"
mkdir /adm
echo "pasta adm  criada com sucesso"

echo "Criando pasta ven"
mkdir /ven
echo "pasta ven  criada com sucesso"

echo "Criando pasta sec"
mkdir /sec
echo "pasta sec  criada com sucesso"

echo "Criando grupos..."

groupadd GRP_ADM

echo "grupo GRP_ADM criado, adicionando usuários..."

useradd -m -s /bin/bash -G GRP_ADM -p $(openssl passwd 123) maria -c "Maria Oliveira"

useradd -m -s /bin/bash -G GRP_ADM -p $(openssl passwd 123) carlos -c "Carlos Souza"

useradd -m -s /bin/bash -G GRP_ADM -p $(openssl passwd 123) joao_ -c "Joao Junior"

echo "Usuários do setor adm criados: maria, carlos, joao_"

groupadd GRP_VEN

echo "grupo GRP_VEN criado, adicionando usuários..."

useradd -m -s /bin/bash -G GRP_VEN -p $(openssl passwd 123) sebastiana -c "Sebastiana de Paula"

useradd -m -s /bin/bash -G GRP_VEN -p $(openssl passwd 123) roberto -c "Roberto Dantas"

useradd -m -s /bin/bash -G GRP_VEN -p $(openssl passwd 123) debora -c "Debora Brunetti"

echo "Usuários do setor ven criados: sebastiana, roberto, debora"

groupadd GRP_SEC

echo "grupo GRP_SEC criado, adicionando usuários..."

useradd -m -s /bin/bash -G GRP_SEC -p $(openssl passwd 123) josefina -c "Josefina Almeida"
useradd -m -s /bin/bash -G GRP_SEC -p $(openssl passwd 123) amanda -c "Amanda Ribeiro"
useradd -m -s /bin/bash -G GRP_SEC -p $(openssl passwd 123) rogerio -c "Rogério Santos"

echo "Usuários do setor sec criados: josefina, amanda, rogerio"

echo "Definindo permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Configuração concluída com sucesso!"
