## Example of reevoomark library integration

### Installation

```bash
git clone git@github.com:robinbortlik/reevoomark-embedded-example.git
```

```bash
rbenv install
```

```bash
bundle install
```

```bash
bundle exec rails s -p 3000
```

```bash
open http://localhost:3000
```


# Using the local mark server for serving css

- go to app/views/layouts/application.html.erb
- change stylesheet link pointing to *http://mark.reevoo.com/stylesheets/reevoomark/embedded_reviews.css* to point to your local mark instance
