Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google, ENV['CLIENT_ID'], ENV['CLIENT_SECRET']
end
