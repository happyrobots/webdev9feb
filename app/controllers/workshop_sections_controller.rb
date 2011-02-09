class WorkshopSectionsController < ApplicationController
  before_filter :allow_only_committees!, :except => [:index, :show]

  def index
    @workshop_sections = WorkshopSection.order(
      'order_number ASC').paginate(
      :page => params[:page], :per_page => 4)
    respond_to { |format| format.html }
  end

  def show
    @workshop_section = WorkshopSection.find(params[:id])
    respond_to { |format| format.html }
  end

  def new
    @workshop_section = WorkshopSection.new
    respond_to { |format| format.html }
  end

  def edit
    @workshop_section = WorkshopSection.find(params[:id])
  end

  def create
    @workshop_section = WorkshopSection.new(params[:workshop_section])

    respond_to do |format|
      if @workshop_section.save
        format.html { redirect_to(@workshop_section, :notice => 'Workshop section was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @workshop_section = WorkshopSection.find(params[:id])

    respond_to do |format|
      if @workshop_section.update_attributes(params[:workshop_section])
        format.html { redirect_to(@workshop_section, :notice => 'Workshop section was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @workshop_section = WorkshopSection.find(params[:id])
    @workshop_section.destroy
    respond_to do |format|
      format.html { redirect_to(workshop_sections_url) }
    end
  end
end
