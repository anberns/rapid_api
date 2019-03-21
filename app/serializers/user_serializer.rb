class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :students
  has_many :students
end
