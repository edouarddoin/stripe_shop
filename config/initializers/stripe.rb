Rails.configuration.stripe = {
  publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
  secret_key: ENV['STRIPE_SECRET_KEY'],
  signing_secret: ENV['STRIPE_SIGNING_SECRET'] # whsec_...
}

StripeEvent.signing_secret = Rails.configuration.stripe[:signing_secret]

# StripeEvent.configure do |events|
#   events.subscribe 'checkout.session.completed'
#   # StripeCheckoutSessionService.new
# end

StripeEvent.configure do |events|
  # events.all ValidatingEventLogger.new(Rails.logger)
  events.subscribe 'checkout.session.completed' do |event|
    StripeCheckoutSessionService.new.call(checkout_session_id: event.data.object.id)
  end
  # StripeCheckoutSessionService.new
end

# reprendre l'intégration du webhook comme indiqué dans la vidéo de presentation a 1:15:50
# done
# faire en sorte de creer le produit aau moment de la creation de sessions afin d'avoir un paiement pour le produit créé
# => Done !
