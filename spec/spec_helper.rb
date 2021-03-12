require "volunteer"
require "project"
require "rspec"
require "pry"
require "pg"
require "spec_pass"

RSpec.configure do |config|
  config.after(:each) do
    DB.exec('DELETE FROM volunteers *;')
    DB.exec('DELETE FROM projects *;')
  end
end
