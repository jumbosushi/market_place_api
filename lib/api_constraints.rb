class ApiConstraints

  def initialize(options)
    @version = option[:version]
    @default = option[:default]
  end

  def matched?(req)
    @default || req.headers['Accept'].include?("application/vnd.marketplace.v#{@version}")
  end

end
