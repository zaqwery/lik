Admin.controllers :accounts do

  get :index do
    @accounts = Account.all
    render 'accounts/index'
  end

  get :new do
    @account = Account.new
    render 'accounts/new'
  end

  post :create do
    @account = Account.new(params[:account])
    if @account.save
      flash[:notice] = 'Аккаунт был успешно создан'
      redirect url(:accounts, :edit, :id => @account.id)
    else
      render 'accounts/new'
    end
  end

  get :edit, :with => :id do
    @account = Account.find(params[:id])
    render 'accounts/edit'
  end

  put :update, :with => :id do
    @account = Account.find(params[:id])
    if @account.update_attributes(params[:account])
      flash[:notice] = 'Аккаунт успешно был обновлен'
      redirect url(:accounts, :edit, :id => @account.id)
    else
      render 'accounts/edit'
    end
  end

  delete :destroy, :with => :id do
    account = Account.find(params[:id])
    if account != current_account && account.destroy
      flash[:notice] = 'Аккаунт был успешно удален'
    else
      flash[:error] = 'Невозможно удалить аккаунт'
    end
    redirect url(:accounts, :index)
  end
end