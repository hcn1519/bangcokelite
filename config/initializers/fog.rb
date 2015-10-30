CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJRU233KLY5RQ4TXQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'                  # optional, defaults to 'us-east-1
  }
  config.fog_directory  = 'image-of-room'                          # required
end