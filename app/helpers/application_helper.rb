module ApplicationHelper
    def sample_helper
        content_tag(:div, "My Content", class: "my-class")
    end

    def login_helper style = ''
        if current_user.is_a?(GuestUser) 
            (link_to "Sign Up", new_user_registration_path, class: style) + " ".html_safe + 
            (link_to "Login", new_user_session_path, class: style)
            
        else 
            link_to "Logout", destroy_user_session_path, method: :delete, class: style
        end 
    end

    def source_helper(layout_name)
        if session[:source]
            greeting =  "Thank for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
            content_tag(:p, greeting, class: "source-greeting")
        end
    end

    def copyright_generator
        JackViewTool::Renderer.copyright 'Jack First', 'All rights reserved.'
    end

#     def nav_helper style, tag_type
# nav_links = <<NAV
# <#{tag_type}><a href="#{root_path}" class="#{style}"> Home</a></#{tag_type}>

#     end
end
