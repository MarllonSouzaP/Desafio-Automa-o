# Projetos pock simples em ruby com cucumber e capybara .
automação que faz o fluxo em um site de compras.

# Versões
Utilizando:
Ruby versão 2.4
Cucumber 2.4.0

## Arquivo de configuracoes do projeto ###################################################
##
## Marllon de Souza Pereira - 26/07/2018 
## Versão 1.00
##
##########################################################################################

#### Instalando Ruby, Cucumber e Capybara no Windows 10 x64 ####

# Instalando Cmder
- baixar o instalador (pacote versão FULL) no site http://cmder.net/
- descompactar na pasta C:\Developer\Ferramentas\cmder
- criar um atalho na area de trabalho pra ficar mais pratico (cmder.exe)

# Instalando Ruby 64 Bits com o DevKit
- baixar o instalador (WITH DEVKIT Ruby+Devkit 2.4.4-1 (x64)) no site  https://rubyinstaller.org/downloads/
- instalar no diretório C:\Ruby24-x64
- ao finalizar, no CMD digitar o comando "ruby –v" 

# Instalando Node.js
- baixar o instalador (Windows Installer (.msi) versão 64-bit) no site https://nodejs.org/en/download/
- instalar no diretório padrao
- ao finalizar, no CMD digitar o comando "node -v"
- ao finalizar, no CMD digitar o comando "npm -v"

# Instalando chromedriver via CMD
- no CMD digitar o comando "npm install chromedriver"

# Instalando geckodriver via CMD
- no CMD digitar o comando "npm install geckodriver"

# Instalando Gem Bundler via CMD
- no CMD digitar o comando "gem install bundler"

# Instalando Git
- baixar o instalador do site https://git-scm.com/download/win
- instalar no diretório padrao

# Instalando Tortoise Git
- baixar o instalador (for 64-bit Windows) do site https://tortoisegit.org/download/
- instalar no diretório padrao

# Instalando e configurando Visual Studio Code
- baixar o instalador do site https://code.visualstudio.com/
- instalar no diretório padrao
- baixar as extensoes:
    > Cucumber (Gherkin) Full Support (Alexander Krechik)
    > file-icons (file-icons)
    > Path Autocomplete (Mihai Vilcu)
    > Ruby (Peng Lv)
    > ruby-rubocop (misogi)
    > rufo-vscode (siliconsenthil)
- configurar em file > preferences > settings:
    {
    "workbench.iconTheme": "file-icons",
    "window.zoomLevel": 0,
    "ruby.rubocop.onSave": true,
    "editor.autoIndent": true
    }

# Abrir a pasta do projeto no Visual Studio Code

# Abrir o CMD dentro do caminho da pasta do projeto

# Rodar o comando : 

1 - gem install bundle

2 - bundle (aguardar a instalação das gems do projeto)

3 - Rodar o cenário de teste :
   Opção:
   1 = λ cucumber -t @cenario_test  BROWSER=chrome
   2 = rake -t cenario_test
   3 = λ cucumber -t @cenario_test --format html --out log/report.html BROWSER=chrome

##########################################################################################
