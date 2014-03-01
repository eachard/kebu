# Be sure to restart your server when you modify this file.

# Configure sensitive parameters which will be filtered from the log file.
Rails.application.config.filter_parameters += [:password]

HighVoltage.configure do |config|
  config.route_drawer = HighVoltage::RouteDrawers::Root
end

