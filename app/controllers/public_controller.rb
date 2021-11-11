#Jaymie Deschênes 20 octobre 2021
class PublicController < ApplicationController
    def index
        @recettes = Recette.all.order('titre')
        respond_to do |format|
            format.html
          end
    end

    def recette
        @recette = Recette.find(params[:id])
        @ingredients = @recette.ingredients
        @noms = @ingredients.collect do |i|
            {ingrédient: i.nom}
        end
        @rec_ingredients = @recette.recette_ingredients;
        respond_to do |format|
            format.html
            format.xml  { render xml: @noms }
            format.json { render json: @noms }
        end
    end
end