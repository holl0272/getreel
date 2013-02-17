# == Schema Information
#
# Table name: collections
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Collection < ActiveRecord::Base
    attr_accessible :name, :description, :movie_ids
    has_many :movies
end
