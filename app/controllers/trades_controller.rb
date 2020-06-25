class TradesController < ApplicationController
  #フィルタ
  before_action :find_trade, only: [:show,:edit,:update,:destroy ]

  def index
    #ransack
    @q = Trade.ransack(params[:q])
    @searched_trades = @q.result(distinct: true).page(params[:page]).per(6)
  end

  def new
    @trade_cu = Trade.new
  end

  def create
    @trade_cu = Trade.new(trade_params)

    if @trade_cu.save
      redirect_to @trade_cu, notice:"データ「#{@trade_cu.name}」のデータを新規登録しました"
    else
      render :new
    end

  end

  def show
  end

  def edit
  end

  def update
    if @findResult_trade.update(trade_params)
      redirect_to trade_url, notice:"データ「#{@findResult_trade.name}」のデータを修正しました"
    else
      render :edit
    end
  end

  def destroy
    @findResult_trade.destroy
    redirect_to trades_url, notice:"「#{@findResult_trade.name}」のデータを削除しました"
  end

  private
  #バリデーション
  def trade_params
    params.require(:trade).permit(:exchange, :price, :name, :category_id, :memo)
  end

  #idに紐づくデータ取得
  def find_trade
    @findResult_trade = Trade.find(params[:id])
  end

end
