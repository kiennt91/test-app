class UploadS3
  attr_reader :original_filename, :new_filename, :public_url 

  def initialize(file)
    raise ArgumentError.new("file引数が必須です") if file.nil?

    @original_filename = file.original_filename
    @file_content      = file.read
  end

  # S3にアップロード
  def upload
    s3_obj = S3Bucket.object(generate_new_filename)
    s3_obj.put(body: @file_content)

    @public_url = s3_obj.public_url
  end

  private

    def generate_new_filename
      @new_filename = "#{SecureRandom.hex}_#{@original_filename}"
    end

end