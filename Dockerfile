# Base image com Ruby 3.2.0
FROM ruby:3.2.0

# Instalar dependências do sistema operacional
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client yarn

# Instalar bundler globalmente
RUN gem install bundler

# Criar e definir o diretório de trabalho
WORKDIR /app

# Copiar os arquivos Gemfile e Gemfile.lock para o container
COPY Gemfile Gemfile.lock ./

# Instalar as gems necessárias
RUN bundle install

# Copiar o script de entrada para o container
COPY bin/docker-entrypoint /app/bin/docker-entrypoint

# Dar permissão de execução ao script de entrada
RUN chmod +x /app/bin/docker-entrypoint

# Copiar todo o restante do projeto
COPY . .

# Expor a porta padrão da aplicação
EXPOSE 3000

# Definir o script de entrada padrão
ENTRYPOINT ["./bin/docker-entrypoint"]

# Comando padrão ao iniciar o container
CMD ["rails", "server", "-b", "0.0.0.0"]
