FROM ruby:2.7.0

# Copia o código da aplicação
COPY . /application
# Muda o diretório da aplicação
WORKDIR /application

# Define o Rails em modo de produção
ENV RAILS_ENV production

# Instala as gems, nodejs e pré compila os ativos
RUN bundle install --deployment --without development test \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt install -y nodejs

# Inicia o servidor da aplicação
ENTRYPOINT ["./entrypoint.sh"]


