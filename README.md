# README

## Installation

Installing ruby 2.4.1 with rvm or other ruby version management tools is only requirement to explore toy robot project.

## Usage

Commands can come from command line or user specified file.

To use with command line inputs:

```ruby simulator.rb``` and prompt commands like (MOVE, LEFT, etc.) sequentially.

To use with file option just run simulator ruby file with input file:

```ruby simulator.rb path/to/file```

e.g. ```ruby simulator.rb sample.txt``` or
     ```ruby simulator.rb /Users/abc/sample.txt```

## Tests

To run tests install required gems with

```bundle install```

Then run specs with

```bundle exec rspec spec```
