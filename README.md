1. Clone this repo.
2. `bundle install`
3. `bundle exec rake db:drop db:create db:schema:load RAILS_ENV=test`
4. `spring stop` (in case you have one running already)
5. `spring rspec spec/models/product_spec.rb`

Above should produce 
```
Failure/Error:
  matcher :match_fixture do |fixture_file_name, update: false|
  end

NoMethodError:
  undefined method `matcher' for RSpec::ExampleGroups::Product:Class
# ./spec/models/product_spec.rb:4:in `block in <main>'
# ./spec/models/product_spec.rb:3:in `<main>'
# -e:1:in `<main>'
No examples found.
```


Remove `enumerize` from `Gemfile` and remove reference to `enumerize` in `app/models/product.rb`.
Try running step 5 again, it should pass.
