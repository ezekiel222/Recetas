class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy, :favorite]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
    if params[:category].blank?
      @recipe = Recipe.all.order("created_at DESC")
    else
      @category_id = Category.find_by(nombre: params[:category]).id
      @recipe = Recipe.where(category_id: @category_id).order("created_at DESC")
    end
  end

  # Add and remove favorite recipes
  # for current_user
  def favorite
    type = params[:type]
    if type == "favorite"
      current_user.favorites << @recipe
      redirect_back fallback_location: pages_favoritas_path, notice: 'You favorited #{@recipe.name}'

    elsif type == "unfavorite"
      current_user.favorites.delete(@recipe)
      redirect_back fallback_location: root_path, notice: 'Unfavorited #{@recipe.name}'

    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'Nothing happened.'
    end
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = current_user.recipes.build
  end

  # GET /recipes/1/edit
  def edit
  end


  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = current_user.recipes.build(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Su receta ha sido creada' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Su receta fue actualizada.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Se ha eliminado su receta.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:titulo, :cuerpo, :ingredientes, :category_id, :user_id, :descripcion, :photo)
    end
end
