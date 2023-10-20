class HomeController < ApplicationController
  def index
    @res = params

    order = params[:order]
    res = params[:result]

    if [order, res].all?{|e| e == ''}
      @accounts = Account.all
    else
      # @accounts = Account.order("? ?", [(res == '' ? 'id' : res), (order == '' ? 'ASC' : order)])
      @accounts = Account.order("#{res == '' ? 'id' : res} #{order == '' ? 'ASC' : order}")
    end
  end
end
