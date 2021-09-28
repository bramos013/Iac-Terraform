Repositório voltado a estudo dirigido em Iac(Infra As Code), possui como função criar uma VM pelo GCP utilizando Terraform como Aplicação, nele será criado a VM, um firewall liberando as portas 21,22,80 e 443 e por fim será realizada a instalação do webserver Nginx.

Para verificar se foi criado e está funcional, basta rodar o script(test.sh)

Requisitos, ajustar o arquivo credentials.json e algumas variaveis do seu projeto no arquivo variables.tf

Exemplo de retorno caso as configurações derem tudo certo

bruno@bruno-OptiPlex-9020:~/Documentos/Git/Iac-Terraform$ ./test.sh 
Domínio 35.247.239.152 retornando status 200
Passa na pipeline