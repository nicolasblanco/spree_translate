# Spree Translate

This gem is very experimental. If you use it now, you will encounter bugs.

This gem is basically the equivalent of `spree_globalize` but it's using `json_translate` instead of `globalize` to translate models attributes. `globalize` uses translations tables and joins to perform translations of attributes whereas `json_translate` uses PostgreSQL JSON columns directly on the models tables.

Why use JSON attributes to store translations? Here are - for me - some advantages:

* No additional tables,
* No joins, easier to query and therefore better performance,
* The code base of `json_translate` is a lot smaller than `globalize`,
* Overall : easier to maintain...

I honestly don't see a lot of disavantages of using JSON attributes aside that this will of course only work with PostgreSQL...

This library is still being developed right now and I used `spree_globalize` as the base.

Happy translating!

---

## Installation

Add the following to your `Gemfile`:

```ruby
gem 'spree_translate', github: 'nicolasblanco/spree_translate', branch: 'master'
```

Run `bundle install`

You can use the generator to install migrations and append spree_translate assets to
your app spree manifest file.

    rails g spree_translate:install

This will insert these lines into your spree manifest files:

```
vendor/assets/javascripts/spree/backend/all.js
//= require spree/backend/spree_translate

vendor/assets/javascripts/spree/frontend/all.js
//= require spree/frontend/spree_translate

vendor/assets/stylesheets/spree/frontend/all.css
*= require spree/frontend/spree_translate
```

---

## Migrate from spree_globalize

TO BE WRITTEN

---

## Model Translations

This feature uses the [json_translate][3] gem to localize model data.
So far the following models are translatable:

    Product, Promotion, OptionType, Taxonomy, Taxon, Property and ShippingMethod.

Start your server and you should see a TRANSLATIONS link or a flag icon on each
admin section that supports this feature.

There are two configs that allow users to customize which locales
should be displayed as options on the translation forms and which should be
listed to customers on the frontend. You can set them on an initializer. e.g.

```ruby
SpreeI18n::Config.available_locales = [:en, :es, :'pt-BR'] # displayed on frontend select box
SpreeTranslate::Config.supported_locales = [:en, :'pt-BR'] # displayed on translation forms
```

PS. Please use symbols, not strings. e.g. `:'pt-BR'` not just `'pt-BR'`. Otherwise
you may get unexpected errors

Or if you prefer they're also available on the admin UI general settings section.

---

## Contributing

[See corresponding guidelines][7]

---

Copyright (c) 2010-2015 [Spree Commerce Inc.][1] and other [contributors][5]. released under the [New BSD License][6]

[1]: http://spreecommerce.com
[2]: http://guides.spreecommerce.com/developer/i18n.html
[3]: https://github.com/cfabianski/json_translate
[5]: https://github.com/nicolasblanco/spree_translate/graphs/contributors
[6]: https://github.com/nicolasblanco/spree_translate/blob/master/LICENSE.md
[7]: https://github.com/nicolasblanco/spree_translate/blob/master/CONTRIBUTING.md
[8]: https://github.com/spree-contrib/spree_i18n
