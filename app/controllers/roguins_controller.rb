class RoguinsController < ApplicationController

  def home
    @roguin = Roguin1.new
  end

  def create
    @roguin = Roguin1.new(roguin_params)

    # 上の行はインスタンスを作っただけ。saveメソッドで保存しないと、消える。
    @roguin.save

    # saveの後にshow(商品詳細ページ)に飛ぶ設定をします。
    # これを設定しないと、プログラムが行き場をなくしてエラーが起きます。
    redirect_to "/roguins"

    # redirect_to "/roguins"
    # だとindexページにリダイレクトする
  end

  private

  def roguin_params
    params.require(:roguin1).permit(:name, :pass)
  end

end
