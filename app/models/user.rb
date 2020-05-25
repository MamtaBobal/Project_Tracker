class User < ApplicationRecord

  def self.encrypt(pass, salt)
    Digest::MD5.hexdigest(pass+salt)
  end

end
