# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

# BEGIN `commitment:install` generator
# This was added via commitment:install generator. You are free to change this.
task(
  default: [
    'commitment:rubocop',
    'commitment:jshint',
    'commitment:scss_lint',
    'commitment:configure_test_for_code_coverage',
    'test',
    'commitment:code_coverage',
    'commitment:brakeman'
  ]
)
# END `commitment:install` generator
