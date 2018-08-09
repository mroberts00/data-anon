class AnonCustomersController < ApplicationController
  before_action :set_anon_customer, only: [:show, :edit, :update, :destroy]

  # GET /anon_customers
  # GET /anon_customers.json
  def index
    @anon_customers = AnonCustomer.all
  end

  # GET /anon_customers/1
  # GET /anon_customers/1.json
  def show
  end

  # GET /anon_customers/new
  def new
    @anon_customer = AnonCustomer.new
  end

  # GET /anon_customers/1/edit
  def edit
  end

  # POST /anon_customers
  # POST /anon_customers.json
  def create
    @anon_customer = AnonCustomer.new(anon_customer_params)

    respond_to do |format|
      if @anon_customer.save
        format.html { redirect_to @anon_customer, notice: 'Anon customer was successfully created.' }
        format.json { render :show, status: :created, location: @anon_customer }
      else
        format.html { render :new }
        format.json { render json: @anon_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anon_customers/1
  # PATCH/PUT /anon_customers/1.json
  def update
    respond_to do |format|
      if @anon_customer.update(anon_customer_params)
        format.html { redirect_to @anon_customer, notice: 'Anon customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @anon_customer }
      else
        format.html { render :edit }
        format.json { render json: @anon_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anon_customers/1
  # DELETE /anon_customers/1.json
  def destroy
    @anon_customer.destroy
    respond_to do |format|
      format.html { redirect_to anon_customers_url, notice: 'Anon customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anon_customer
      @anon_customer = AnonCustomer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anon_customer_params
      params.require(:anon_customer).permit(:first_name, :last_name, :address1, :address2, :postcode, :state, :phone, :creditcard, :city, :birthday)
    end
end
