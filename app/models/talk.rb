class Talk < ActiveRecord::Base
  has_attached_file :document,
    :storage => :s3,
    :bucket => 'studentframe-assets',
    :s3_credentials => {
      :access_key_id => ENV['AWS_ACCESS_KEY'],
      :secret_access_key => ENV['AWS_SECRET_KEY']
    },
    :path => '/talk/:id/:filename'
end
