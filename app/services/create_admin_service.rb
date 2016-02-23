# Create admin user
class CreateAdminService
  def call
    email = Rails.application.secrets.admin_email
    password = Rails.application.secrets.admin_password

    User.find_or_create_by!(email: email) do |user|
      user.password = password
      user.password_confirmation = password
      user.name = Rails.application.secrets.admin_name
    end
  end
end
