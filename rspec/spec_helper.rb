# spec/spec_helper.rb
RSpec.configure do |config|
  # Basic RSpec configuration
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end