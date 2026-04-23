# app/controllers/leads_controller.rb
class LeadsController < ApplicationController
  def index
    @leads = Lead.all
  end

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to leads_path, notice: "Lead created"
    else
      render :new
    end
  end

  def edit
    @lead = Lead.find(params[:id])
  end

  def update
    @lead = Lead.find(params[:id])
    if @lead.update(lead_params)
      redirect_to leads_path, notice: "Updated"
    else
      render :edit
    end
  end

  def dashboard
    @total_leads = Lead.count
    @converted = Lead.closed.count
  end

  private

  def lead_params
    params.require(:lead).permit(:name, :email, :status)
  end
end
