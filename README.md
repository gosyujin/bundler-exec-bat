Automatin bundle exec for Winsdows batch.

# Installation.

1. Copy bundler-exec.bat, (PATH passed)
1. Register alias.

  - ex1) for Command prompt

     > doskey COMMAND=bundler-exec COMMAND $*
     
     use macro file
     
     > doskey /macrofile=register-macros.txt

  - ex2) for nyaos etc

     > alias COMMAND bundler-exec COMMAND $*
     
     COMMAND: ruby, rspec, heroku, jekyll... 

Usage
...
