3.times do |topic|
    Topic.create!(
        title: " Topic #{topic}"
    )
end
puts "3 TOpics created"

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "You've probably heard how paramount blogging is to the success of your marketing. But it's important that you learn how to start a blog and write blog posts for it so that each article supports your business.
        Without a blog, your SEO can tank, you'll have nothing to promote in social media, you'll have no clout with your leads and customers, and you'll have fewer pages to put those valuable calls-to-action that generate inbound leads      
        So why, oh why, does almost every marketer I talk to have a laundry list of excuses for why they can't consistently blog     
        Maybe because, unless you're one of the few people who actually like writing, business blogging kind of stinks. You have to find words, string them together into sentences ... ugh, where do you even start?",
        topic_id: Topic.last.id
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

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Ruby On Rails",
        body: "So why, oh why, does almost every marketer I talk to have a laundry list of excuses for why they can't consistently blog?
        Maybe because, unless you're one of the few people who actually like writing, business blogging kind of stinks. You have to find words, string them together into sentences ... ugh, where do you even start?",
        main_image: "https://placehold.it/600x400",
        thumb_image: "https://placehold.it/356x280"
    )
end


puts "8 Portfolio posts created"

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Angular",
        body: "So why, oh why, does almost every marketer I talk to have a laundry list of excuses for why they can't consistently blog?
        Maybe because, unless you're one of the few people who actually like writing, business blogging kind of stinks. You have to find words, string them together into sentences ... ugh, where do you even start?",
        main_image: "https://placehold.it/600x400",
        thumb_image: "https://placehold.it/356x280"
    )
end
puts "1 Angular item created"

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}",
    )
end

puts "3 Technologies items created"
