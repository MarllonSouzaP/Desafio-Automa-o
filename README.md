# Projetos pock simples em ruby com cucumber e capybara .
automação que faz o fluxo em um site de compras.

# Versões
Utilizando:
Ruby versão 2.4
Cucumber 2.4.0


#Configuração
Configuração do Projeto:

1) faça download do projeto

2) instale as versões ditas acima do ruby e do cucumber

3) instale a gem do bundler usando o comando: gem install bundler

4) rode o comando: bundle install

5) após a instalação de todas as gems do projeto

Abra a linha de comando e rode o seguinte comando:
cucumber -t @cenario_test --format html --out log/cenario_test_report.html BROWSER=chrome
ou
rake -t cenario_test

Que vai rodar o cenário de teste e criar o report dentro da pasta log do projeto
