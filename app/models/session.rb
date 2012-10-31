class Session < ActiveRecord::Base
  attr_accessible :description, :name, :title, :type
end
