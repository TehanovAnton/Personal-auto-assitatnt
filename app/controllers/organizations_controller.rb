# frozen_string_literal: true

class OrganizationsController < ApplicationController
  before_action :set_organization, only: %i[show edit destroy services new_services service_works]
  before_action :set_cities, only: %i[new edit]
  before_action -> { organization(organization_id: params[:id]) }, only: %i[create update]

  attr_accessor :service

  def index
    @organizations = Organization.all
  end

  def show; end

  def new
    @organization = Organization.new
  end

  def edit; end

  def services
    @services = OrganizationsServicesWorksPrice.where(organization_id: params[:id])
  end

  def new_services
    @services = Service.select { |s| s unless @organization.services.include?(s) }
  end

  def service_works
    @services = choosen_services
    @service_works = ServiceWork.all
  end

  def add_services
    organization_new_services
    @services.each do |service|
      organization_new_services_works
      service_works.each do |service_work|
        OrganizationsServicesWorksPrice.create(organization_id: params[:id],
                                               service_id: service.id,
                                               service_work_id: service_work.id)
      end
    end

    redirect_to organization_services_path(id: params[:id])
  end

  def create
    if @organization.save
      redirect_to @organization, notice: 'Organization was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @organization.update(organization_params)
      redirect_to @organization, notice: 'Organization was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @organization.delete
      redirect_to organizations_url, notice: 'Organization was successfully destroyed.'
    else
      render :destroy, status: :unprocessable_entity
    end
  end

  private

  def set_organization
    @organization = Organization.find(params[:id])
  end

  def set_cities
    @cities = City.all
  end

  def organization(organization_id: nil)
    @organization = organization_id ? Organization.find_by(id: organization_id) : Organization.new(organization_params)
  end

  def organization_params
    params.require(:organization).permit(:email, :phone_number, :adress, :name, city_ids: [])
  end

  def choosen_services
    params.require(:organization).permit(services: [])
    Service.find(params[:organization][:services].drop(1))
  end

  def organization_new_services
    services = params[:organization_services].keys.map { |name| Service.id_by_name(Service.original_name(name)) }
    @services = Service.find(services)
  end

  def organization_new_services_works
    @service_works = ServiceWork.find(params[:organization_services][service.name_in_one_word][:service_works].drop(1))
  end
end
