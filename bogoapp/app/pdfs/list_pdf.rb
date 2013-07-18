class ListPdf < Prawn::Document
	def initialize(list)
		super()
		@list = list
		list_name
		item_list
	end

	def list_name
		text "Shopping list for #{@list.name}"
		move_down 20
	end


	def item_list
		@list.items.each do |item|
			text "#{item.name}"
			move_down 7
		end
	end
end