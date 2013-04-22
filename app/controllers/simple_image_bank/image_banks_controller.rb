require_dependency "simple_image_bank/application_controller"

module SimpleImageBank
  class ImageBanksController < ApplicationController
    # GET /image_banks
    # GET /image_banks.json
    def index
      @image_banks = ImageBank.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @image_banks }
      end
    end
  
    # GET /image_banks/1
    # GET /image_banks/1.json
    def show
      @image_bank = ImageBank.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @image_bank }
      end
    end
  
    # GET /image_banks/new
    # GET /image_banks/new.json
    def new
      @image_bank = ImageBank.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @image_bank }
      end
    end
  
    # GET /image_banks/1/edit
    def edit
      @image_bank = ImageBank.find(params[:id])
    end
  
    # POST /image_banks
    # POST /image_banks.json
    def create
      @image_bank = ImageBank.new(params[:image_bank])
  
      respond_to do |format|
        if @image_bank.save
          format.html { redirect_to @image_bank, notice: 'Image bank was successfully created.' }
          format.json { render json: @image_bank, status: :created, location: @image_bank }
        else
          format.html { render action: "new" }
          format.json { render json: @image_bank.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /image_banks/1
    # PUT /image_banks/1.json
    def update
      @image_bank = ImageBank.find(params[:id])
  
      respond_to do |format|
        if @image_bank.update_attributes(params[:image_bank])
          format.html { redirect_to @image_bank, notice: 'Image bank was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @image_bank.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /image_banks/1
    # DELETE /image_banks/1.json
    def destroy
      @image_bank = ImageBank.find(params[:id])
      @image_bank.destroy
  
      respond_to do |format|
        format.html { redirect_to image_banks_url }
        format.json { head :no_content }
      end
    end
  end
end
