#Jaymie Deschênes 20 octobre 2021
class AdminController < ApplicationController
    layout "application"
    before_action :authenticate_user!
    before_action :is_admin?

    private
    #Prendre note qu'un seul render peut être généré par requête
    def is_admin?
    
        unless current_user.is_admin #ajouter un boolean is_admin dans la db pour le user qui sera false par défaut
            redirect_to root_path
        end
    end

end