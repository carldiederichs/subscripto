class TransactionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  @@access_token

  def index
    # @client = Plaid::Client.new(env: :sandbox, client_id: '5e5e6bb15eca9300160d998d', secret: '2adcbda3f90c576655f805f53a9397', public_key: '3f90cc96bc93fd4818202d31eebb2c')
    # exchange_token_response = client.item.public_token.exchange('[Plaid Link public_token]')
    # access_token = exchange_token_response.access_token

    # transaction_response = client.transactions.get(access_token, '2016-07-12', '2017-01-09')
    # transactions = transaction_response.transactions

  end

  def pretty_print_response(response)
    puts JSON.pretty_generate(response)
  end

  def get_access_token
    exchange_token_response =
    client.item.public_token.exchange(params['public_token'])
    @@access_token = exchange_token_response['access_token']
    @@item_id = exchange_token_response['item_id']
    pretty_print_response(exchange_token_response)
    # content_type :json
    t = exchange_token_response.to_json
    render json: t
  end

  # def set_access_token
  #   binding.pry
  #    access_token = params['access_token']
  #   item = client.item.get(access_token)

  #   { error: false, item_id: item['item']['item_id'] }.to_json
  # end

  def get_transactions
    now = Date.today
    thirty_days_ago = (now - 30)
    begin
      product_response =
        client.transactions.get(@@access_token, thirty_days_ago, now)
      pretty_print_response(product_response)
      render json: { transactions: product_response }.to_json
    rescue Plaid::PlaidAPIError => e
      error_response = format_error(e)
      pretty_print_response(error_response)
      content_type :json
      error_response.to_json
    end
  end

  # def create
  #   exchange_token_response = @client.item.public_token.exchange(params['public_token'])
  #   access_token = exchange_token_response['access_token']
  #   item_id = exchange_token_response['item_id']
  #   puts exchange_token_response
  #   @access_token = exchange_token_response['access_token']
  #   raise
    # redirect_to subscriptions_path
  # end

  def client
    require 'plaid'
    @client ||= Plaid::Client.new(env: :sandbox, client_id: '5e5e6bb15eca9300160d998d', secret: '2adcbda3f90c576655f805f53a9397', public_key: '3f90cc96bc93fd4818202d31eebb2c')
  end
end
