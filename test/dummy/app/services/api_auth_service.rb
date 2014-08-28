class APIAuthService
  def self.authenticate(context, api_key)
    return api_key == "cardapi"
  end
end
