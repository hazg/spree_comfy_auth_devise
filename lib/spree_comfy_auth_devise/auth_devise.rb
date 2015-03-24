module SpreeComfy::AuthDevise

  def authenticate
    #include Rails.application.routes.url_helpers  
    if spree_current_user
      
      ability = SpreeComfy::Ability.new(spree_current_user)
      return true if ability.can? :edit, :page
      
      raise CanCan::AccessDenied

    else
      scope = Devise::Mapping.find_scope!(:user)
      session["#{scope}_return_to"] = new_admin_cms_site_path(:locale => I18n.locale) # if localized...
      redirect_to '/user/spree_user/sign_in'
    end

  end

end
