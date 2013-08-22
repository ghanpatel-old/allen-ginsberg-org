class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_token

  def index
  	@title = "Marqueed - Simple image collaboration and markup tool. Share, annotate and discuss images."
	end

	def get_token
		@token = Locomotive::Account.create_api_token(AllenGinsbergOrg, 'ghanpatel@gmail.com', 'ag-vortexSutra1', '02ac122d79a9c62ca29c0fa1459cf2af107e7b01' )
	end

end