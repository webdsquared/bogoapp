ActiveAdmin.register Post do
  form do |f|
  	f.inputs "Details" do
  		f.input :title, hint: "Create post title."
  	  f.input :blog, hint: "Select a blog."
  		f.input :publish_on, as: :date, include_blank: false, hint: "When do you want to publish?", prompt: { day: "Day", month: "Month", year: "Year" }, start_year: Time.now.year
  		f.input :status, as: :select, collection: ["Draft", "Published"], include_blank: true
  		f.input :categories, as: :check_boxes, collection: Category.all
  		f.input :body, input_html: { class: "redactor", id: "redactor" }
  	end
  	f.buttons
  end

  index do
    column "Post Title", :title
    column :publish_on
    column :status
    column "Category", :categories do |post|
      post.categories.collect { |cat| cat.name }.join(", ")
    end
    default_actions
  end

  show do
    h5 "Created by #{post.author} on #{post.created_at.strftime('%B %-d, %Y')}"
    h5 "Categories: #{post.categories.collect { |cat| cat.name }.join(", ")}"
    h5 "Published on #{post.publish_on.strftime('%B %-d, %Y')}"
    div do
      simple_format post.body
    end
    h4 link_to "Back to Posts", admin_posts_path
  end
end
