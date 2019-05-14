class RoguinsController < ApplicationController

  def home
    @roguin = Roguin1.new
  end

  def create
    @roguin = Roguin1.new(roguin_params)
    #@roguin.save
    #redirect_to "/roguins"

    
    @y = Roguin1.all

    @y.each do |a|
      if a.name == @roguin.name then
          @x = 1
      end
    end 
    
    if @x != 1 then
      @roguin.save
      redirect_to "/roguins"
    else
      redirect_to "/roguins",notice: 'IDまたはPASSが違うため、ログインできません。'
    end
    # saveの後にshow(商品詳細ページ)に飛ぶ設定をします。
    # これを設定しないと、プログラムが行き場をなくしてエラーが起きます。
    
    
    # だとindexページにリダイレクトする
  end

  def update
    
  end

  private

  def roguin_params
    params.require(:roguin1).permit(:name, :pass)
  end

end
