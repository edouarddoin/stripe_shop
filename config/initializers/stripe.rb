Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_51LY5hvLeVNdCkyHLd5NpIgd6pHbyPT9dqCEn4ETdMt4T1u2hJ5vszJ6tjtxdQcHndbyO7pUZ0one8RiUQpGCIpVZ00usgngDQM'],
  secret_key:      ENV['sk_test_51LY5hvLeVNdCkyHLNFCj4Yodi1RYADinhP6yrTAOxloa4XQKPk5OnV7sEXMWtDfrDUKx2HY6jSkXrja0bca9QhMW00FgqXiDRf']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
