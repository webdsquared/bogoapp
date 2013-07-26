ActiveAdmin.register Administrator do
  index do
		column "Administrator Name", :name
		default_actions
	end  

	form do |f|
		f.inputs "Details" do
			f.input :name, hint: "Enter new administrator."
		end
		f.buttons
	end
end
