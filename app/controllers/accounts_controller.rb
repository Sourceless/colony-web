class AccountsController < ApplicationController
  before_action :set_account, except: [:new, :create, :show, :index]
  before_action :set_current_user_account, only: [:index]
  before_action :authenticate_user!, except: [:new, :create, :claim, :invite]
  before_action :check_claim_status, only: [:claim, :invite]

  def index
  end

  def show
    redirect_to action: :index
  end

  def new
    @account = Account.new
  end

  def edit
    # coming soon, fuck off
  end

  def create
    @account = Account.new(account_params)
    team = Team.new(name: account_params[:name], account: @account)

    respond_to do |format|
      if @account.save
        team.save
        format.html { redirect_to action: :claim, uuid: @account.uuid }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  def claim
    @user = User.new(account: @account)
  end

  def resend
    @user = @account.owner
    @user.invite!

    render :check_email
  end

  def invite
    @user = User.new(email: params[:user][:email], account: @account, team: @account.teams.first)

    respond_to do |format|
      if @user.save || (@user.invalid? && @user.errors.to_hash.keys == [:password])
        @user.save(validate: false) # Ignore devise password for now, it'll get set later

        @account.owner_id = @user.id
        @account.save

        @team = @account.teams.first
        @team.manager_id = @user.id
        @team.save

        @user.invite!

        @new_invite = true

        format.html { render :check_email }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :claim }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find_by(uuid: params[:uuid])
    end

    def set_current_user_account
      @account = current_account
    end

    def check_claim_status
      account = Account.find_by(uuid: params[:uuid])
      if account.owner.present? || account.users.length > 0
        flash[:error] = "Account already claimed"
        redirect_to new_account_url
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:name)
    end
end
