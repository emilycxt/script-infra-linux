Desafio da formação Linux Fundamentals

Descritivo:

Para atender às exigências do desafio, desenvolvi um script bash que automatiza a criação de diretórios, grupos e usuários, assegurando a aplicação correta das permissões. Primeiramente, criei os diretórios necessários para os departamentos: /publico (acessível a todos), /adm (para o grupo administrativo), /ven (para vendas) e /sec (para segurança), todos com o dono definido como root para garantir controle total.

Em seguida, criei três grupos correspondentes aos departamentos: GRP_ADM para usuários administrativos, GRP_VEN para vendas e GRP_SEC para segurança. Adicionei usuários a cada grupo utilizando o comando useradd, inserindo o nome completo na opção -c e definindo um shell padrão (/bin/bash). As senhas foram criptografadas com openssl passwd. Os usuários criados foram: maria, carlos e joao_ para GRP_ADM; sebastiana, roberto e debora para GRP_VEN; e josefina, amanda e rogerio para GRP_SEC.

Para as permissões, configurei o acesso restrito aos membros de cada grupo (chmod 770 para /adm, /ven e /sec), enquanto a pasta /publico foi definida com acesso irrestrito (chmod 777). Além disso, alterei o dono e o grupo de cada pasta para garantir que apenas os usuários do grupo correspondente tenham acesso (chown root:GRP_ADM /adm, etc.).

Por fim, adicionei mensagens de feedback (echo) para indicar o progresso do script, confirmando que cada etapa foi concluída com sucesso. O resultado foi um ambiente organizado, com diretórios, grupos e usuários devidamente configurados, garantindo controle e segurança conforme solicitado no desafio.
