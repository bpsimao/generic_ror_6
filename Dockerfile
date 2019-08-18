FROM ruby:2.6.0

RUN apt-get update -qq && apt-get install -y apt-transport-https && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends build-essential libpq-dev \
    postgresql-client mysql-client yarn nodejs locales wget cron vim \
    && rm -rf /var/lib/apt/lists/*

RUN echo "America/Sao_Paulo" > /etc/timezone && \
  dpkg-reconfigure -f noninteractive tzdata && \
  sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
  sed -i -e 's/# pt_BR.UTF-8 UTF-8/pt_BR.UTF-8 UTF-8/' /etc/locale.gen && \
  echo 'LANG="pt_BR.UTF-8"'>/etc/default/locale && \
  echo 'LC_ALL="pt_BR.UTF-8"'>/etc/default/locale && \
  echo 'LANGUAGE="pt_BR.UTF-8"'>/etc/default/locale && \
  dpkg-reconfigure --frontend=noninteractive locales && \
  update-locale LANG=pt_BR.UTF-8

ENV LC_ALL=pt_BR.UTF-8
ENV LANG=pt_BR.UTF-8
ENV LANGUAGE=pt_BR.UTF-8

RUN echo 'set number' > ~/.vimrc
RUN printf "require 'awesome_print'\nAwesomePrint.irb!" >> ~/.irbrc

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN bundle install --jobs 10 --retry 5

EXPOSE 3000

CMD bash start.sh
