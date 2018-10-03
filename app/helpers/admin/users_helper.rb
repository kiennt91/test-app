module Admin::UsersHelper
  def role_collections
    return @role_collections ||= User.roles.keys.map { |role| [role.titleize,role] }
  end
end
