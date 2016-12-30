if [[ ! -x "$(which rbenv)" ]]
then
  echo
  echo "Installing Ruby tools and Ruby 2.4.0"
  eval "$(rbenv init -)"
  rbenv install 2.4.0 --skip-existing
  rbenv global 2.4.0
  gem install bundler
  rbenv rehash
fi
