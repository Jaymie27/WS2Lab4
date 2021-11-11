#Jaymie Deschênes 10 novembre 2021
class Admin::SecretController < AdminController
    def home
        @users = User.all
        respond_to do |format|
            format.html
          end
    end

    def recette
        @recette = Recette.find(params[:id])
        respond_to do |format|
            format.html
        end    
    end
end