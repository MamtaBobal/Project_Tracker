# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string
#  cid        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Project < ApplicationRecord

  # Associations
  belongs_to :user, primary_key: :user_id
  belongs_to :category, primary_key: :cid, foreign_key: :cid

end
