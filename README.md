# Codaisseurify

Ruby Application for displaying artists and songs.
[CarrierWave](https://github.com/carrierwaveuploader/carrierwave) was used for uploading the images to [Cloudinary](http://cloudinary.com/)

**Features:**
  * Sort artists by name or by date of creation
  * Add and delete songs using Ajax
  * Delete artist

**To Do:**
  * Create and update artist
  * Update song
  

<img src="https://github.com/floris09/codaisseurify/blob/master/app/assets/images/Screen%20Shot%202017-12-04%20at%2013.41.29.png" alt="codaisseurify" width="45%" align="left"/>
<img src="https://github.com/floris09/codaisseurify/blob/master/app/assets/images/Screen%20Shot%202017-12-04%20at%2013.42.08.png" alt="codaisseurify" width="45%" align="left"/>

<br clear="left" />


## Database Structure

1. Artists
  * name: string
  * bio: string

2. Photos
  * artist_id: integer
  * image: string

3. Songs
  * name: string
  * artist_id: integer

## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:floris09/codaisseurify.git
cd codaisseurify
bundle install
rails db:create db:migrate db:seed
rails server
```

## Test Suite

The following gems were used for testing:
  * [RSpec](http://rspec.info/) as the main testing library
  * [Capybara](http://teamcapybara.github.io/capybara/) to simulate how the user interacts
  * [Factory Girl](http://www.rubydoc.info/gems/factory_girl/file/GETTING_STARTED.md) to generate model instances for testing
  * [Faker](https://github.com/stympy/faker) to generate fake data for testing
  * [Selenium Webdriver](http://www.seleniumhq.org/) to automate the browser
  * [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/) to communicate with the browser
