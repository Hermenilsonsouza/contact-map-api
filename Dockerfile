FROM ruby:2.5

# Instala as dependências do sistema
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Atualiza o RubyGems para uma versão compatível
RUN gem update --system 3.2.3

# Cria o diretório de trabalho
WORKDIR /myapp

# Copia os arquivos do Gemfile e Gemfile.lock
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

# Instala as gems do projeto
RUN bundle install

# Copia o restante da aplicação para o container
COPY . /myapp
