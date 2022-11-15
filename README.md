# Heroku Capture Postgresql Database

This GitHub action makes a database dump of heroku postgresql database.

## Usage

In order to use this action in your workflow, add this file to `.github/workflows/YOURACTION.yml`

```yml
name: Heroku Capture PG DB

on:
  schedule:
    - cron: "*/30 * * * *"

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: mjerem34/heroku_capture_pgdb@1.0.0
        with:
          heroku_email: "" # ADD YOUR HEROKU EMAIL HERE
          heroku_api_key: "" # ADD YOUR HEROKU API KEY HERE
          heroku_app_name: "" # ADD YOUR HEROKU APP NAME HERE
```

## License

MIT.
