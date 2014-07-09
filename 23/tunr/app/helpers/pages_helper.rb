module PagesHelper
  def smartnav
    links = "<li>#{link_to("Home", "#" )}</li>"
    if @current_user.try(:is_admin)
      links += "<li>#{link_to('View users', users_path)}</li>"
    end

    if @current_user.present?
    links += "<li>#{link_to('Logout', login_path, data: {method: :delete, confirm: 'Really log out?'})}</li>
      <li>#{ @current_user.try(:user_name)}</li>"
    else
    links += "<li>#{ link_to('Sign Up', new_user_path)}</li>
      <li>#{link_to('Sign In', login_path)}</li>"
    end

    links
  end
end
