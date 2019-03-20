class PhonemeSerializer < ActiveModel::Serializer
  attributes :id, :characters, :classification
end
