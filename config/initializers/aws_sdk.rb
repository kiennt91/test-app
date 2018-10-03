s3 = Aws::S3::Resource.new(
  access_key_id: Rails.application.credentials.aws[:access_key_id],
  secret_access_key: Rails.application.credentials.aws[:secret_access_key],
  region: Rails.application.credentials.aws[:region]
)

S3Bucket = s3.bucket(Rails.application.credentials.aws[:s3_bucket])