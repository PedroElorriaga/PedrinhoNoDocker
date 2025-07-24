# Semana do docker

###### *Aqui irei colocar alguns comando uteis do docker para relembrar*







### Passos para instalar o Ubuntu corretamente:

&nbsp;	

&nbsp;	Vá no Microsoft Store e instale o Ubuntu

&nbsp;	Abra o Ubuntu que acabou de ser instalado

&nbsp;	Insira seu usuario e senha novos

&nbsp;	De um "**sudo apt update**" para atualizar e verificar se foi instalado corretamente



### Passos para instalar Docker, seguimos com a documentação do docker

###### *Mas vou colocar o resumo aqui*



&nbsp;	Remova pacotes que podem dar conflitos

&nbsp;		"**for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done**"



&nbsp;	Instalar as dependências 

&nbsp;		"**# Add Docker's official GPG key:**

		**sudo apt-get update**

		**sudo apt-get install ca-certificates curl**

		**sudo install -m 0755 -d /etc/apt/keyrings**

		**sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc**

		**sudo chmod a+r /etc/apt/keyrings/docker.asc**



		**# Add the repository to Apt sources:**

		**echo \\**

  		**"deb \[arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \\**

  		**$(. /etc/os-release \&\& echo "${UBUNTU\_CODENAME:-$VERSION\_CODENAME}") stable" | \\**

  		**sudo tee /etc/apt/sources.list.d/docker.list > /dev/null**

		**sudo apt-get update**"



&nbsp;	Instalar os pacotes do docker

&nbsp;		"**sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin**"



&nbsp;	Rode o "**sudo docker run hello-world**" para verificar se a instalação foi executada com sucesso, se sim ira receber algo como

&nbsp;		**Hello from Docker!**

		**This message shows that your installation appears to be working correctly.**



	Criar o grupo do docker(*O grupo docker é um grupo de usuários do sistema Linux que tem permissão para executar comandos do Docker sem precisar usar sudo.*)

&nbsp;		"**sudo groupadd docker**"



&nbsp;	Adicione seu usuário para o grupo

&nbsp;		"**sudo usermod -aG docker $USER**"



&nbsp;	Salve as mudanças

&nbsp;		"**newgrp docker**"

&nbsp;	

&nbsp;	Rode novamente o "**docker run hello-world**" para verificar se você pode rodar o docker sem o sudo

&nbsp;	

### Comando para o docker iniciar ao executar o Ubuntu no windows

&nbsp;	sudo systemctl enable docker.service

&nbsp;	sudo systemctl enable containerd.service



### Comandos úteis

&nbsp;	service docker status -> Para verificar status do docker

&nbsp;	

&nbsp;	service docker start -> Para iniciar o docker	













