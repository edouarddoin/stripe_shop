Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_51LY5hvLeVNdCkyHLd5NpIgd6pHbyPT9dqCEn4ETdMt4T1u2hJ5vszJ6tjtxdQcHndbyO7pUZ0one8RiUQpGCIpVZ00usgngDQM'],
  secret_key: ENV['sk_test_51LY5hvLeVNdCkyHLNFCj4Yodi1RYADinhP6yrTAOxloa4XQKPk5OnV7sEXMWtDfrDUKx2HY6jSkXrja0bca9QhMW00FgqXiDRf'],
  stripe_signing_secret: ENV['whsec_9116a46624382f88422561a868c15bafa3072a5e3f61f6acd8d197b0c5a9e109'] # e.g. whsec_...
}
