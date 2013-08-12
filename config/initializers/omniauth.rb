OmniAuth.config.logger = Rails.logger
OmniAuth.config.test_mode = true if Rails.env == "test"
# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, "646135975411452", "c68cef4665a5e259b97f4fd2eab86417"
# end