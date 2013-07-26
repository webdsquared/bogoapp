ActiveAdmin.register Blog do
	index do
		column "Blog Title", :name
		default_actions
	end  

	form do |f|
		f.inputs "Details" do
			f.input :name, hint: "Enter a blog name"
		end
		f.buttons
	end
end
