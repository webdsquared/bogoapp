class TransactionsController < ApplicationController

	def create
		@transaction = current_user.transactions.build(params[:transaction])
		if @transaction.save
			redirect_to root_path
		end
	end

end
