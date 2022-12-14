FROM ruby:3.1.1

# yarnパッケージ管理ツールをインストール(yarnはwebpackerをインストールする際に必要)
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

# 必要なライブラリをインストール(nodejsはwebpackerをインストールする際に必要)
RUN apt-get update -qq && apt-get install -y nodejs build-essential libpq-dev postgresql-client

WORKDIR /tea_party
COPY Gemfile Gemfile.lock /tea_party/
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
# 一番最初に実行するコマンドを指定
ENTRYPOINT ["entrypoint.sh"]
# コンテナがリッスンするポート番号を指定
EXPOSE 3000
# railsサーバーを起動
CMD ["rails", "server", "-b", "0.0.0.0"]
