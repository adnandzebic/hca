class ServicesController < ApplicationController
    respond_to :html, :json

    def index
        @clients = Client.all
        @employees = Employee.all
        @services = Service.all
        respond_with @services
    end

    def show
        @service = Service.find(params[:id])
        @clients = Client.all
        @employees = Employee.all
    end
    
    def new
        @service = Service.new
        @clients = Client.all
        @employees = Employee.all
    end

    def edit
        @service = Service.find(params[:id])
        @clients = Client.all
        @employees = Employee.all
        respond_with @service
    end

    def create
        @service = Service.new(service_params)

        if @service.save
            redirect_to @service
        else
            render 'new'
        end
    end

    def update
        @service = Service.find(params[:id])

        if @service.update(service_params)
            redirect_to @service
        else
            render 'edit'
        end
    end

    def destroy
        @service = Service.find(params[:id])
        @service.destroy
 
        redirect_to services_path
    end

    private
        def service_params
            params.require(:service).permit(:service_date, :datetime, :client_id, :int, :employee_id, :int)
        end
end
