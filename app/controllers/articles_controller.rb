class ArticlesController < ApplicationController
  before_action :set_article, only: :show
  before_action :authenticate, except: [:index, :show, :province]

  before_filter :check_for_cancel, :only => [:create, :update]

  def check_for_cancel
    if params[:commit] == "Cancelar"
      redirect_to articles_path
    end
  end

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.con_titulo(params[:buscar])
    if @articles.present?
      respond_to do |format| 
        format.html
        format.js
      end
    else
      respond_to do |format| 
        format.html
        format.js {render 'fallo_articulos.js.erb'}
      end
    end  
  end

  def formulario
    @location = Location.all
    @team = Team.all
    if params[:query] == "Partido"
      render 'dinamico_partido', :layout => false
    else
       if params[:query] == "Noticia"
         render 'dinamico_noticia', :layout => false
       else
         render 'sin_dinamico', :layout => false
       end
    end
  end
  #GET /provinces
  def province
    @location = Location.all
    @articles = Article.con_provincia(params[:province]).distinct
    if @articles.present?
       render 'index'
    else
      respond_to do |format| 
        format.html
        format.js {render 'fallo_articulos.js.erb'}
      end
    end
    
  end


  # GET /articles/1
  # GET /articles/1.json
  def show
    redirect_to({action: :index}, notice: "Artículo no encontrado") unless @article
  end

  # GET /articles/new
  def new
    @team = Team.all
    @location = Location.all
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
    @team = Team.all
    @location = Location.all;
    @article = current_user.articles.find_by_id(params[:id])
    redirect_to root_path, alert: "operación no autorizada" unless @article
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = current_user.articles.new(article_params)
    @article.author = current_user.name + current_user.surname
    if params[:article][:tipo] != nil
       @article.tipe = params[:article][:tipo]
       @article.locations << Location.find_by_id(params[:article][:locations])
       @article.local_team = Team.find_by_id(params[:article][:local_team])
       if @article.tipe != nil
          if @article.tipe == 'partido'
              @article.locations << Location.find_by_id(params[:article][:locations2])
              @article.foreign_team = Team.find_by_id(params[:article][:foreign_team])
              @article.result = params[:article][:result]
          end
       end
    end
    respond_to do |format|
      if @article.save
        if params[:images]
          
        #===== The magic is here ;)
         params[:images].each { |image|
          @article.images.create(image: image)
         }
        end
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    @article = current_user.articles.find_by_id(params[:id])
    @article.author = current_user.name + current_user.surname
    if params[:article][:tipo] != nil
       @article.tipe = params[:article][:tipo]
       @article.locations << Location.find_by_id(params[:article][:locations])
       @article.local_team = Team.find_by_id(params[:article][:local_team])
       if @article.tipe != nil
          if @article.tipe == 'partido'
              @article.locations << Location.find_by_id(params[:article][:locations2])
              @article.foreign_team = Team.find_by_id(params[:article][:foreign_team])
              @article.result = params[:article][:result]
          end
       end
    end
    respond_to do |format|
      if @article.update(article_params)
        if params[:images]
          for i in 0 .. @article.images.count - 1
            @article.images[i].delete
          end
        #===== The magic is here ;)
         params[:images].each { |image|
          @article.images.create(image: image)
         }
        end
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article = current_user.articles.find_by_id(params[:id])
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :body, :author, :summary, :published_at)
    end
end
