module ApplicationHelper
	def show_dynamic_links
			if @authenticated_user
				link_to @authenticated_user.name, logout_path
			else
				link_to 'Login', login_path
			end

		end
end
