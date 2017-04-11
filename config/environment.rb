# Load the Rails application.
require_relative 'application'
Dir[Rails.root.join('config', 'initializers', '*.rb')].each { |file| require file }

# Initialize the Rails application.
Rails.application.initialize!

