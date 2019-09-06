# [Zé Delivery] QA Challenge - Android automation test

Projeto de automação de testes criado utilzando Appium, Cucumber e Ruby.

O framework escolhido para automação mobile foi o Appium, por poder ser utilizado tanto para Android como IOS (apps nativos ou híbridos), aparelhos físicos ou emuladores, podendo utilizar qualquer tipo de linguagem.

Obs: Não foi possível finalizar devido a validação do telefone

### Passos para configuração do projeto:

<p>1- Intalar e configurar o Appium</p>

<p>2- Clonar projeto</p>

> git clone https://github.com/luisasauerbronn16/zedelivery.git

<p>3- Instalar o bundler </p>

> gem install bundler

<p>4- Acessar a pasta do projeto</p>

> cd /zedelivery/android-automation

<p>5. Instalar as dependências </p>

>bundle install


### Passos para executar o teste

<p>1- Iniciar o appium</p>

> appium

<p>2- Abrir emulador ou device físico</p>

<p>3- Acessar a pasta do projeto</p>

> cd /zedelivery/android-automation

<p>4- Executar o comando abaixo</p>

> cucumber

Obs: Na pasta /android-automation/reports/historic_reports consta um relatório com a execução dos testes e após cada execução um novo relatório é criado.