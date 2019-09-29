Teste web | Ruby | BDD
----------| -----|----
# Testes automatizados #
![ruby](http://compsci.ca/blog/wp-content/uploads/2007/04/ruby_logo.gif)
## Automação web com Ruby ##

## Pré-requisitos

* Possuir ruby instalado **> 2.0.0**
* https://www.ruby-lang.org/pt/downloads/

## Configurando o Chromedriver
Para o teste funcionar o chromedriver deve esta a path do sistema:
```shell
Linux: bin
Mac: bin
Windows: system
```

## Instalando gem Bundler
Para instalação da gem Bundler, rode o comando:
```shell
gem install bundler
```

## 1)  Instalando dependências ##
Para instalação das dependências do projeto rode o comando na raiz do projeto:
```shell
bundle install
```

## 2) Executando Projeto ##
Na pasta raiz do projeto rode o comando:
```shell
cucumber
```
## 2) Executando Projeto e gerando relatório  ##
Na pasta raiz do projeto rode o comando:
```shell
rake specs
```