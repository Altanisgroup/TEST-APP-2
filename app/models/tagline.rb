class Tagline < ActiveRecord::Base
  attr_accessible :phrase
  
  
  def self.random_phrase
	self.all.sample	
  end
  
  def to_s
  	self.phrase
  end
  
end
