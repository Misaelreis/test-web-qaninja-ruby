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
Na pasta raiz do projeto rode o comando com o navegador chrome:
```shell
rake specs["","-p chrome"]
```

Na pasta raiz do projeto rode o comando com o navegador chrome headless:
```shell
rake specs["","-p chromeheadless"]
```

Na pasta raiz do projeto rode o comando com o navegador firefox:
```shell
rake specs["","-p firefox"]
```

Na pasta raiz do projeto rode o comando com o navegador firefox headless:
```shell
rake specs["","-p firefoxheadless"]
```