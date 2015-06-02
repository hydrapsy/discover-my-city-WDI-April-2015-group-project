class UsersController < ApplicationController
before_action :authenticate_user! only: [:edit, :update, :destroy, :close, :password, :follow, :unfollow]

	def close
	end

	def password
		@user - current_user
	end

	def new
		@user = User.new
	end

	def edit
		@user = current_user
	end

	def show
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session [:user_id] = user.id
			redirect_to username_path(@user.username), notice: "new account created"
		else
			render :index
		end
	end

	def update
		@user = current_user
		old_password = params[:user][:current_password]
		if old_password
			if old_password == current_user.password
				if @user.update(user_params.except(:current_password))
					redirect_to username_path(@user.username), notice: "password updated"
				else
					render :password
				end

			else
				flash[:alert] = "wrong password"
				render :password
			end

			elsif @user.update(user_params)
				redirect_to username_path(@user.username), notice: "profile updated"
			else
				render :edit
			end
		end

		def destroy
			@user = current_user
			if @user.password == params[:user][:password]
				@user.destroy
				session[:user_id] = nil
				redirect_to root)path, notice: "your account has been deleted"
		else
				flash[:alert] = "wrong password.  can not remove your account"
				render :close
			end
		end

		private

		def user_params
			params.require(:user).permit(:username, :email, :lname, :fname, :password, :current_password)
		end

end
