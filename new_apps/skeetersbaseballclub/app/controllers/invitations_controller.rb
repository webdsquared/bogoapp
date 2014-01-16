class InvitationsController < Devise::InvitationsController
  def after_invite_path_for(resource)
    root_path
  end

  def after_accept_path_for(resource)
  	main_path
  end

end
