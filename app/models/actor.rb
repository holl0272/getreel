# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  birthplace :string(255)
#  dob        :date
#  dod        :date
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Actor < ActiveRecord::Base
    attr_accessible :name, :birthplace, :dob, :dod, :image, :movie_ids
    has_and_belongs_to_many :movies
end

