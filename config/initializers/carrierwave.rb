require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESS_KEY_ID'],
    # Rails.application.secrets.aws_access_key_id,
    aws_secret_access_key: ENV['SECRET_KEY_ID'],
    # Rails.application.secrets.aws_secret_access_key,
    region: 'us-east-1'
  }

  config.fog_directory  = 'wantedly-upload'
  config.asset_host = 'https://s3.amazonaws.com/wantedly-upload'
end
