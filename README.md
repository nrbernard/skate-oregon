#Oregon Skateparks
If you're an old guy who still likes to skate, this Oregon skateparks directory is for you. This Rails app uses AJAX, image upload with Paperclip and storage with Amazon S3, and Compass and Sass for styling.

The project is for the [Rails with AJAX assessment](http://www.learnhowtoprogram.com/lessons/rails-with-ajax-assessment) for [Epicodus](http://www.epicodus.com/).

##Setup
In your terminal, clone this repo and navigate to the directory:

```console
$ clone https://github.com/nrbernard/skate-oregon.git
$ cd skate-oregon/
```

Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

Run Bundler to install the dependencies:

```console
$ bundle
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:schema:load
```

Finally, start the rails server:

```console
$ rails s
```
It should now be available at `localhost:3000`.

Alternatively, the live app is on Heroku at [http://skate-oregon.herokuapp.com](http://skate-oregon.herokuapp.com/).

##Author
[Nick Bernard](http://nrbernard.com)

##License
MIT
