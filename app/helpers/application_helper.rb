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

#     def nav_items
#         [
#             {
#                 url: root_path
#                 title: 'Home'
#             },
#             {
#                 url: about_me_path
#                 title: 'About Me'
#             },
#             {
#                 url: contact_path
#                 title: 'Contact'
#             },
#             {
#                 url: blogs_path
#                 title: 'Blog'
#             },
#             {
#                 url: portfolios_path
#                 title: 'Portfolio'
#             }
#         ]
#     end

#     def nav_helper style, tag_type
#         nav_links = ''

#         nav_items.each do |item|
#             nav_links << "#{tag_type}><a href='#{item[:url]} class='#{style}' #{active? item[:url]}'> #{item[:titel]}</a></#{tag_type}>"
# # nav_links = <<NAV
# # <#{tag_type}><a href="#{root_path}" class="#{style}"> Home</a></#{tag_type}>
# # <#{tag_type}><a href="#{about_me_path}" class="#{style}"> About Me</a></#{tag_type}>
# # NAV
#         nav_links.html_safe
#     end

    def active? path 
        "active" if current_page? path 
    end
end
