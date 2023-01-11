# Weezy Repository

The Weezy Repository indexes Lil Wayne songs and provides convenient links for listening in order to lessen the burden on the Wayne fans and Wayne novices to track down his work. I decided to build this project when I was confronted with how few people knew about his mixtape.

This is the backend of the project, built with Ruby on Rails. It uses the bcrypt, jwt and rack-cors gems, which will automatically install when you run a bundle.

## Installation

Clone down the repository. Navigate to the project directory and run the following commands:

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

In the repository, run the following commands:

```bash
rails server

You now have a functioning backend for Weezy Repository.

You can test web requests as documented in the `requests.http` file.

## Roadmap

The backend for Weezy Repository is feature-complete. Changes in the future would only be made to the seeds file to include more of Lil Wayne's discography. This is subject to change if I can find an api that would automate the process.
```
