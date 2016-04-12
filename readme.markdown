# Week Five Project - MVC From Scratch(-ish)

## Requirements

1. At least three models, with relationships between them:
  + At least one *one-to-many* relationship
  + At least one *many-to-many* relationship
2. Full CRUD actions for each model, organized along RESTful patterns
3. A front end using Bootstrap, Foundation, Materialize, Primer, or some other
   front-end framework (even if you're already good with CSS, use a framework to
   make your life easier).
4. A full `db/seeds.rb` file, which you run using `rake db:seed` -- this
   pre-populates your database with data, which is really handy when you need to
   dump your database and restart.
5. Tests for your validations
6. All models, controllers, and views should live in the `app/` folder,
   organized per conventions we discussed on Week 05, Day 01 and Day 02.

Before you start writing code, you'll need to bring a full development plan to
me, including:

+ A brief description of the project proper. Describe the heart of the project
  in a sentence or two, and use this to guide you.
+ Your models, their schema (attributes and data types), their relationships,
  and their validations (if any), as well as any custom methods you anticipate.
+ A sketch of all your routes and their associated views (these can be brief
  descriptions, sketches, or something else)
+ A tentative development plan.
+ Any other goals or worries you might have for this project.

I can help you create this development plan. If you want to write out your plan
in great detail, consider checking in with me before you get too far -- you may
be preparing yourself to put in work beyond the point of diminishing returns.

## Suggestions

The biggest thing you can do here is decide what your core features are, then
build those first (and everything else later). It doesn't matter how
awesome-looking your home page is if you can't actually use the application. It
doesn't matter (for now) how bland your site looks if the application works
perfectly.

Decide what's most important, and do that first. Once that's done, pick the next
most important thing, and do that until it's done. And so on. Ask yourself,
frequently, "Am I working on the most important thing I can be working on?" It's
easy to get distracted.

+ Make use of the `/pry` route when you can to get things working on the command
  line. (Delete this route before you deploy to Heroku, if you decide to do
  that).
+ Decide whether you want to build top-down (start with views and routes, then
  build the model) or bottom-up (build the model first, then routes, then
  views), or some other path. It might be worth experimenting with different
  combinations.
+ Make use of GitHub issues, Waffle.io, and/or other tools to help you stay
  focused.
+ Make frequent commits, and use feature branches liberally.
+ Check in with me as often as you like, even if it's just to get the
  `:thumbsup:` to go ahead to the next section.
+ Periodically evaluate your cognitive load. Are you trying to do too many
  things at once? If so, scale it back. There's nothing wrong with building your
  view, then (once it's working) adding in Bootstrap styling later if that's
  what you can handle at this time.
+ Google the error message, read the documentation, and collaborate with
  classmates (or with me) when you get stuck. Consider [rubber duck
  debugging](https://en.wikipedia.org/wiki/Rubber_duck_debugging)
+ Don't feel like you need to build a really ambitious project right away. It's
  okay if your ambition for this project is "I'd like to get a sweet project
  done and working."

## Extensions

Here are some extensions you might enjoy, but are in no way obligated to try.

Don't start on these until you're done

1. Augment the stylings provided by the framework with styling of your own
   devise, i.e. write some CSS from scratch.
2. Consider trying out CodeClimate if you haven't already.
3. Consider integrating a third-party service. For example, you can have your
   code fetch weather information for a location, or fetch movie information, or
   screen-scrape from a remote site, or interact with GitHub, or create cards on
   a Trello board, or tweet on your behalf, or (etc.). Come talk to me before
   you try this, as there are a few things you may need to learn beforehand.
4. Consider spending time with more advanced ActiveRecord queries, e.g. named
   scopes, eager loading, or joins. Learn more about `N + 1` queries and see
   what you can do to avoid them.
5. Spend more time with ActiveRecord validations -- can you write a custom
   validator for business logic? Learn more about the different validation
   options that exist. What are the limits of the built-in validators?
5. Add more models. Add more sophisticated controller actions. Improve your view
   logic. Make things better. Come find me if you want more direction on this.
6. Refactor: move as much logic from your views and controllers into your models
   as possible.
7. Learn about how user authentication from scratch works (ask me before you
   start this and I'll give you a link to a video). Implement it.
8. Learn how to [deploy to
   Heroku](https://devcenter.heroku.com/articles/rack#database-access)
9. **Advanced** See if you can figure out how to switch from ActiveRecord to
   [Data Mapper](http://datamapper.org/).
10. Learn more about software development methodology. Do some reading on
    *agile*, *scrum*, *waterfall*, *kanban*, and so on.
11. Learn how to define your own `404` error page. (It may be worthwhile to look
    up *HTTP status codes* while you're at it).
12. Try out a different templating language. Perhaps replace ERB with HAML? (I
    really like HAML).
13. **Advanced**: Go through [Thoughtbot's "Let's Build a
    Sinatra"](https://robots.thoughtbot.com/lets-build-a-sinatra) tutorial. See
    what you learn about the inner workings of Sinatra. Read through [Sinatra's
    source
    code](https://github.com/sinatra/sinatra/blob/master/lib/sinatra/base.rb)
    (it's not too bad). See what you learn there.
14. **Advanced**: You may recall running `bin/setup` during the prep work. Go
    back to the prep work repositories and examine `bin/setup` -- can you do the
    same for this project? Typing `bin/setup` should:
    1. Run `bundle install`
    2. Run `rake db:create`
    3. Run `rake db:migrate`
    4. Run `rake db:seed`

    You'll have to do some work to get it to work with the database.
14. Learn how to submit information using checkboxes. Can you submit information
    about a HABTM relationship using checkboxes? (as a hint, do this at object
    creation, rather than after a record already exists. But you can also, with
    some work, do this after the record already exists).
14. Whatever your heart desires. Come check in with me first.
