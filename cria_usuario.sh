nano iacl.sh
#!/bin/bash
echo "criando diretorios.."
mkdir /publico
mkdir /adm
mkdi /ven
mkdir /sec

echo "criando grupos de usuarios..."

groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios.."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G groupadd GRP`_ADM 
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G groupadd GRP`_ADM 
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G groupadd GRP`_ADM 

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G groupadd GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123)-G groupadd GRP_VEN
useradd roberta -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G groupadd GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G groupadd GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G groupadd GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G groupadd GRP_SEC

echo "Especificando permissões da cada usuario"

chown root:GRP_ADM /sec
chown root:GRP_VEN /sec
chown root:GRP_SEC /sec


chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM..."