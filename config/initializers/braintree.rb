Braintree::Configuration.environment = :sandbox
Braintree::Configuration.logger = Logger.new('log/braintree.log')
Braintree::Configuration.merchant_id = ENV['7qc4fmb4ktgp97jq']
Braintree::Configuration.public_key = ENV['dys8bnjy4kyyb572']
Braintree::Configuration.private_key = ENV['230bec06a7375473b46680034d772b47']