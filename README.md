# Rukuli

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/andreanastacio/rukuli/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
[![Code Climate](https://codeclimate.com/github/andreanastacio/Rukuli.png)](https://codeclimate.com/github/andreanastacio/Rukuli)

This project is a fork of [sikuli_ruby](https://github.com/chaslemley/sikuli_ruby)!

[SikuliX](http://www.sikulix.com/) allows you to interact with your application's user interface using image based search to automate user actions.

## Requirements

* [SikuliX 1.0.1](https://launchpad.net/sikuli/+download) (Install sikuli-java.jar (option 4) via sikuli-setup.jar)
* [JRuby](http://jruby.org/download) or ```rvm install jruby```

## Compatibility

Make sure to set SIKULIX_HOME to the Sikuli installation directory.

### Windows

```
 setx SIKULIX_HOME C:/path/to/folder-containing-sikuli-java.jar
```

### Linux / OSX
```bash
 export SIKULIX_HOME="~/path/to/folder-containing-sikuli-java.jar"
```

# Installation
```
  gem install rukuli
```

# Usage

```ruby
  require 'java'
  require 'rukuli'

  Rukuli::Config.run do |config|
    config.image_path = "#{Dir.pwd}/images/"
    config.logging = false
  end

  screen = Rukuli::Screen.new
  screen.click(10, 10) # should open your apple menu

  app = Rukuli::App.new("iPhone Simulator")
  app.window.click('ui_element.png') if app.window.find('ui_element.png')
```

# Running the test suite

1. You need to open `test_area.jpg` in **Preview** from `spec/support/images/` directory
before running tests.
2. You also need to open the **TextEdit** app

# Examples

* [Cucumber Suite](https://github.com/chaslemley/cucumber_sikuli)

# Contributing

* Fork it
* Create your feature branch (git checkout -b my-new-feature)
* Commit your changes (git commit -am 'Add some feature')
* Push to the branch (git push origin my-new-feature)
* Create new Pull Request
