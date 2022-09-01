Rails.configuration.stripe = {
  publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
  secret_key: ENV['STRIPE_SECRET_KEY'],
  stripe_signing_secret: ENV['STRIPE_SIGNING_SECRET'] # e.g. whsec_...
}
