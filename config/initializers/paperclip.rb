
Paperclip::Attachment.default_options[:storage] = :s3
Paperclip::Attachment.default_options[:s3_credentials] = {
    bucket: ENV["S3_BUCKET_NAME"],
    access_key_id: ENV["AWS_ACCES_KEY_ID"],
    secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
    s3_region: ENV["AWS_REGION"],
    s3_host_name: ENV["S3_HOST_NAME"],
    s3_permissions: :public,
}
