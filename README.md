Automatin bundle exec for Winsdows batch.

# Installation.

1. Copy bundle-exec.bat, (PATH passed)
1. Register alias.
  - ex1) for Command prompt
     > doskey COMMAND=bundle-exec COMMAND $*
     use macro file
     > doskey /macrofile=register-macros.txt
  - ex2) for nyaos etc
     > alias COMMAND bundle-exec COMMAND $*
     COMMAND: ruby, rspec, heroku, jekyll... 

Usage
...
