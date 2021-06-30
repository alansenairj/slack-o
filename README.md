# slack-o - Máquinas Vagrant provisionam através de roles do ansible uma infra para deploy de mongodb com integração de container mongodb-express

Aplicação para criação de playbook da tarefa final MBA Impacta

1 - Ser idempotente, ou seja, o plabook deve ser executado varias vezes sem alterar quaisquer características já presentes no servidor.

2 - A aplicação devera ter a capacidade de iniciar junto com o servidor em caso de reboot.(modulo systemd)

3 - A instalação do mongodb pode ser via docker ou instalação usando os repositórios do próprio sistema operacional. (modulo apt ou docker_container)

4 - A aplicação deve estar disponível assim que o playbook acabar.

5 - Após a instalação e start da aplicação deve-se efetuar um teste em algum endpoint da aplicação. (modulo shell ou command, executando o comando curl)

6 - Efetuar a instalação do mongo-express na sua versão docker. (imagem: mongo-express:0.54.0) (modulo docker_container)

7 - Se utilizando de Tags executar o playbook que seja capaz de atualizar a aplicação e efetuar o restart.

8 - O local de instalação deve-ser parametrizavel, na documentação ele pede que seja em /opt/slacko-api/ (modulo - fileinline)

Obs: A nota máxima será obtida ao atingir todos os objetivos.


Adequações importantes

Para transformar um script em serviço, ele deve constar como Restart=yes

Para o mondo db estar disponível para ser conectado ao mongodb-express ele deve ter sua configuração de IP aberta: 
sudo nano /etc/mongodb.conf
bind_ip = 0.0.0.0

O playbook realiza todas as tratativas para que o serviço suba sem problemas e de forma automatizada. 
Playbook ajusta Timezone para SP
Playbook instala e sincroniza NTP







