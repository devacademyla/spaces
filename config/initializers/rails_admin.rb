RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model (User) { list { configure :id { hide } } }
  config.model (Organization) { list { configure :id { hide } } }
  config.model (Asset) { list { configure :id { hide } } }
  config.model (Contract) { list { configure :id { hide } } }
  config.model (Maintenance) { list { configure :id { hide } } }
  config.model (Space) { list { configure :id { hide } } }
  config.model (Supplier) { list { configure :id { hide } } }
  config.model (Supply) { list { configure :id { hide } } }
  config.model (Warehouse) { list { configure :id { hide } } }
  config.model (Payment) { list { configure :id { hide } } }
  config.model (ContractSpace) { list { configure :id { hide } } }
  config.model (AssetSupplier) { list { configure :id { hide } } } 
end
