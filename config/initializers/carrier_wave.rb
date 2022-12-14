require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_directory = 'tearip-backet'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/tearip-backet'
  config.fog_public = true
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    # aws_access_key_id: Rails.application.credentials.aws[:access_key_id],
    # aws_secret_access_key: Rails.application.credentials.aws[:secret_access_key],
    region: 'ap-northeast-1'
  }
end
