class CalendarController < ApplicationController
  def index
      @services = Service.all
      @clients = Client.all
      @employees = Employee.all
  end
end
