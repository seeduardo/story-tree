# Welcome to Story Tree!

This application gives users the opportunity to create multi-path stories, based on sentences or 'tree branches' which lead to further branches making up the entire story tree. After the first 'root' sentence giving an initial prompt for the story, users input up to four branches each time, with each one forming the 'trunk' from which the next branches can in turn sprout, and so on.

Story Tree can be run from the command link on a UNIX-like OS via the following steps:

* if necessary, install Ruby and Rails - instructions available [here](https://www.tutorialspoint.com/ruby-on-rails/rails-installation.htm)

* clone the Story Tree repository to your machine, and move into the root directory

* from the root directory, run `rails db:create db:migrate db:seed` to get the database working

* run the Rails server with the `rails s` command

* navigate to [http://localhost:3000/tree_branches/1](http://localhost:3000/tree_branches/1)

* create your stories!
