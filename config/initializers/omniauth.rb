Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, BathPlaybills::Application::TWITTER_KEY, BathPlaybills::Application::TWITTER_SECRET
end