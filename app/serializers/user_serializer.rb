class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :profile_id
  def profile_id
    object.profile.id if !object.profile.blank?
  end
end
