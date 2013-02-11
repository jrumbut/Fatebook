=begin
  A class to represent a complete hMixer document.
  Joshua Rumbut, iMedia Solutions, LLC
  josh@myimedia.com
=end

class Mixer
  include Mongoid::Document
  include Mongoid::Timestamps
  
  embeds_one :demographics, class_name: "Demographic"
  embeds_many :conditions, class_name: "Condition"
  embeds_many :vaccinations, class_name: "Vaccination"
  embeds_many :medications, class_name: "Medication"
  embeds_one :submitter, class_name: "Submitter"
  embeds_one :core, class_name: "Core"

  

end


class Submitter
  include Mongoid::Document
  
  field :name, type: String
  field :email, type: String
  field :message, type: String

end


class Demographic
  include Mongoid::Document
  
  field :gender, type: String
  field :age, type: 
  field :height, type: String

end
