# Calabash-android
Test Automation with an android environment and cucumber report/profile/background


### Instalação Ambiente MAC

```ruby
a. Instalar o Homebrew:
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

b. Instalar JDK para o Mac:
http://www.oracle.com/technetwork/java/javase/downloads/index.html

c. Instalar rbenv:
brew install rbenv

d. Inclua no bash_profile:
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

e. Instalando e Configurando o rvm:
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm
type rvm | head -n 1
echo 'source ~/.rvm/scripts/rvm' >> ~/.bash_profile

f. Instalando rbenv configurando:
rbenv install -l
rbenv install 2.3.1
rbenv local 2.3.1

h. Instalar Android Studio
https://developer.android.com/studio/index.html?hl=pt-br

NOTE: Consultar [CONFIGURANDO_AMBIENTE.pdf] para maiores informações
```

### Instalando Gems do Ruby

```ruby
gem install bundler
gem install calabash-android
gem install mini_magick
```

### Instalando mini_magic

```ruby
gem install mini_magick
brew install graphicsmagick
```

### Váriaveis de ambiente do Android

```ruby
Abrir arquivo de configuração
open ~/.bash_profile

export ANDROID_HOME=/Users/<usuario>/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME:/tools:$ANDROID_HOME/platform-tools/adb:$ANDROID_HOME/emulator/

NOTE: Trocar o <usuario> pelo nome do seu usuário

--> Listar Emuladores <--
emulator -list-avds
```


### Executando o projeto :dart:

```ruby
0. Faça um clone do projeto:
git clone https://github.com/FebsMira/CalculadoraCalabash

1. Emulando android virtual device: 
emulator -avd "<Nome do seu emulator>"

2. Vá até a pasta do projeto Calculadora.

3. Executando feature calcular: 
calabash-android run Calculator.apk features/calcular.feature

4. Executando feature com report: 
calabash-android run Calculator.apk features/calcular.feature -p report
```
