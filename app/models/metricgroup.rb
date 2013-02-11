=begin
  A class to represent the current hMixer document.
  Joshua Rumbut, iMedia Solutions, LLC
  josh@myimedia.com
=end

class MetricGroup
  include Mongoid::Document
  
  field :gender, type: String
  embeds_many :metrics, class_name: "Metric"

end


class Metric
  include Mongoid::Document
  
  field :name, type: String
  field :dayvalue, type: Integer
  embeds_many :features, class_name: Feature

end


class Feature
  include Mongoid::Document
  
  field :healthyrange, type: Array
  field :totalrange, type: Array
  field :boundaryflags, type: Array
  field :weight, type: Integer
  field :unitlabel, type: String

end
