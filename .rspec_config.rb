# https://github.com/rspec/rspec/blob/main/rspec-core/lib/rspec/core/configuration.rb

RSpec.configure do |config|
  config.failure_color = :bold_red # Color used when tests fail (default: :red)
  config.success_color = :green # Color used when tests pass (default: :green)
  config.pending_color = :yellow # Color used when tests are pending (default: :yellow)
  config.fixed_color = :blue # Color used when a pending block inside an example passes, but was expected to fail (default: :blue)
  config.detail_color = :cyan # Color used for miscellaneous test details (default: :cyan)
end
