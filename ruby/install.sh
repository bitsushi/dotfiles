if [[ ! -x "$(which rbenv)" ]]
then
  eval "$(rbenv init -)"
  LATEST_RUBY_VERSION="$(rbenv install -l | grep -v - | tail -1 | tr -d '[[:space:]]')"
  echo
  echo "Installing Ruby tools and Ruby $LATEST_RUBY_VERSION"
  rbenv install $LATEST_RUBY_VERSION --skip-existing
  rbenv global $LATEST_RUBY_VERSION
  gem install bundler
  gem install rails
  rbenv rehash
fi
