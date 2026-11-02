# Watch All Sports

A small Ruby on Rails app that pulls football match events from the iSports API, lets a signed-in user save the ones they care about to a personal list, and remove them later.

## Context

Learning project built over three days in January 2021 (9 commits, 9 to 11 Jan). It started from the [Le Wagon Rails template](https://github.com/lewagon/rails-templates) with Devise. The UI copy is in Spanish.

## What it does

- Sign-up and login with Devise; users have a first name, last name and unique username.
- `/esports` calls the iSports football events endpoint and lists each event's id, player id and player name.
- A "Guardar" (save) button stores an event against the current user; `/events` shows the saved list with a delete action.

Not finished: `/events` lists every saved event (`Event.all`) and any signed-in user can delete any event, since neither action is scoped to the current user; `events#show` redirects to the index; the generated test files are empty.

## Stack

Ruby 2.6.6, Rails 6.0, PostgreSQL, Devise, Simple Form, RestClient, Webpacker 4, Bootstrap 4.

## Running locally

Requires Ruby 2.6.6, PostgreSQL, Yarn and an iSports API key in an `EVENT_KEY` environment variable (a `.env` file works, via `dotenv-rails`).

```bash
bundle install
yarn install
rails db:create db:migrate
rails server
```

## Status

Archived learning project, not maintained.
