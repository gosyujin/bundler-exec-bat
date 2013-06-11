Automatin bundle exec for Winsdows batch.

referred to: https://github.com/gma/bundler-exec

# Installation.

1. Copy `bundler-exec.bat` (PATH passed)
1. Register `COMMAND` alias.

## ex

※ COMMAND: `ruby`, `rspec`, `heroku`, `jekyll` etc...

- 1.1: for Command prompt

```
>doskey COMMAND=bundler-exec COMMAND $*
```

- 1.2: read macro file(register-macros.txt)

```
>doskey /macrofile=register-macros.txt
```

- 2.1: for nyaos (https://sites.google.com/site/chishikinoyaclldcool/home/ckw-nyaos)

```
$ vi _nya

alias COMMAND bundler-exec COMMAND $*
```

# Usage

1. make Gemfile `gem 'rake'`
1. `bundle install --path vendor/bundle`
1. execute. without `bundle exec`

```
$ rake
 #=> bundle exec rake
```
