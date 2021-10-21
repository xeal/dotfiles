# https://relishapp.com/rspec/rspec-core/docs/formatters/configurable-colors
# https://github.com/rspec/rspec-core/blob/main/lib/rspec/core/formatters/console_codes.rb


RSpec.configure do |config|
  # use :cyan instead of :bold_red until this is released: https://github.com/rspec/rspec-core/pull/2914
  config.failure_color = :cyan # Color used when tests fail (default: :red)
  config.success_color = :green # Color used when tests pass (default: :green)
  config.pending_color = :yellow # Color used when tests are pending (default: :yellow)
  config.fixed_color = :blue # Color used when a pending block inside an example passes, but was expected to fail (default: :blue)
  config.detail_color = :cyan # Color used for miscellaneous test details (default: :cyan)
end
