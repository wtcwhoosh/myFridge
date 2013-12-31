OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['727270763950828'], ENV['4a526d2c0ca23080d5d7616b9705b98f']
end
