# == Schema Information
#
# Table name: users
#
#  user_id            :integer          not null
#  username           :string
#  email              :string
#  encrypted_password :string
#  salt               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class User < ApplicationRecord

  # Associations
  has_many :projects

  def self.encrypt(pass, salt)
    Digest::MD5.hexdigest(pass+salt)
  end

end
