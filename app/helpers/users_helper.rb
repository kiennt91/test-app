module UsersHelper
  def role_collections
    User.roles.keys.map { |role| [role.titleize,role] }
  end
end
