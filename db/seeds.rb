# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "You've probably heard how paramount blogging is to the success of your marketing. But it's important that you learn how to start a blog and write blog posts for it so that each article supports your business.
        Without a blog, your SEO can tank, you'll have nothing to promote in social media, you'll have no clout with your leads and customers, and you'll have fewer pages to put those valuable calls-to-action that generate inbound leads      
        So why, oh why, does almost every marketer I talk to have a laundry list of excuses for why they can't consistently blog     
        Maybe because, unless you're one of the few people who actually like writing, business blogging kind of stinks. You have to find words, string them together into sentences ... ugh, where do you even start?"
    )
end
puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end
puts "5 skills  created"

9.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "My great service",
        body: "So why, oh why, does almost every marketer I talk to have a laundry list of excuses for why they can't consistently blog?
        Maybe because, unless you're one of the few people who actually like writing, business blogging kind of stinks. You have to find words, string them together into sentences ... ugh, where do you even start?",
        main_image: "https://placehold.it/600x400",
        thumb_image: "https://placehold.it/300x100"
    )
end
puts "9 Portfolio items created"