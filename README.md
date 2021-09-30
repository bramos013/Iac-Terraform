## Iac(Infra As Code) 
![Build Status](https://github.com/bramos013/Iac-Terraform/actions/workflows/terraform.yml/badge.svg?branch=master)

Esse repositório foi desenvolvido com o objetido de realizar um estudo dirigido em Iac(Infra As Code), no qual sua função é criar uma VM através do Compute Engine do GCP(Google Cloud Plataform) utilizando Terraform como Aplicação de provisionamento de infraestrutura. Ele será o responsável por criar uma VM e um firewall liberando as portas 21,22,80 e 443, por fim será realizada a instalação do webserver Nginx.

#### Requisitos

- Possuir um projeto no GCP e API do Compute Engine ativa;
- Chave da Conta de Serviço Google(Formato .json);
- Terraform Instalado;

Ajustar o arquivo *credentials.json* com os dados da sua chave criada por você, alterar as variáveis do seu projeto no arquivo *variables.tf*.

#### Build

Para darmos inicio a nossa infraestrutura, primeiramente será necessário você acessar o clone desse repositório em sua maquina local e iniciar o Terraform com o comando `terraform init`. Com o ambiente configurado e o Terraform iniciado, podemos analisar quais são as tasks no qual o Terraform simplesmente com `terraform plan`, feito isso podemos enfim provisionar a nossa infra `terraform apply --auto-approve`.

Para verificar se a VM foi criada e está funcional, basta rodar o script `./test.sh`, ele irá realizar um teste utilizando cURL no qual irá apresentar na tela o status http do IP pela porta 80. Caso o status retornar 200, significa que a nossa VM está funcional.

#### Exemplo de retorno caso as configurações derem tudo certo

`bruno@bruno-OptiPlex-9020:~/Documentos/Git/Iac-Terraform$ ./test.sh`
*Domínio 35.247.239.152 retornando status 200*



