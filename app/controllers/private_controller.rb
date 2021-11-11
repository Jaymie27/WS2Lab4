#Jaymie Deschênes 20 octobre 2021
class PrivateController < ApplicationController
    layout "application"
    before_action :authenticate_user!

    def home
        @recettes = current_user.recettes.order('titre')
        respond_to do |format|
            format.html
          end
    end

    def recette  
        @recette = Recette.find(params[:id])
        unless current_user == @recette.user
            redirect_to '/mesrecettes'
        end
        @ingredients = @recette.ingredients
        @noms = @ingredients.collect do |i|
            {ingrédient: i.nom}
        end
        @rec_ingredients = @recette.recette_ingredients;
        respond_to do |format|
            format.html
        end
    end

end