class UsersController <ApplicationController

    def index
        @users = User.all
    end

    def new
        @user =User.new
    end

    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to users_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit

        @user = User.find(params[:id])

    end

    def update

        @user = User.find(params[:id])

        if @user.update(user_params)
            redirect_to user_path
        else
            render :new, status: :unprocessable_entity
        end

    end

    def destroy

        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path, notice: 'eliminado', status: :see_other

    end

    private

    def user_params
        params.require(:user).permit(:tipo_persona, :documento, :fecha_emision, :fecha_vencimiento, :nombre, :correo, :telefono, :telefono_secundario, :created_at, :updated_at)
    end



end    