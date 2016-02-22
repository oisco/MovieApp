class ChangeFormatInMyTablesController < ApplicationController
  before_action :set_change_format_in_my_table, only: [:show, :edit, :update, :destroy]

  # GET /change_format_in_my_tables
  # GET /change_format_in_my_tables.json
  def index
    @change_format_in_my_tables = ChangeFormatInMyTable.all
  end

  # GET /change_format_in_my_tables/1
  # GET /change_format_in_my_tables/1.json
  def show
  end

  # GET /change_format_in_my_tables/new
  def new
    @change_format_in_my_table = ChangeFormatInMyTable.new
  end

  # GET /change_format_in_my_tables/1/edit
  def edit
  end

  # POST /change_format_in_my_tables
  # POST /change_format_in_my_tables.json
  def create
    @change_format_in_my_table = ChangeFormatInMyTable.new(change_format_in_my_table_params)

    respond_to do |format|
      if @change_format_in_my_table.save
        format.html { redirect_to @change_format_in_my_table, notice: 'Change format in my table was successfully created.' }
        format.json { render :show, status: :created, location: @change_format_in_my_table }
      else
        format.html { render :new }
        format.json { render json: @change_format_in_my_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_format_in_my_tables/1
  # PATCH/PUT /change_format_in_my_tables/1.json
  def update
    respond_to do |format|
      if @change_format_in_my_table.update(change_format_in_my_table_params)
        format.html { redirect_to @change_format_in_my_table, notice: 'Change format in my table was successfully updated.' }
        format.json { render :show, status: :ok, location: @change_format_in_my_table }
      else
        format.html { render :edit }
        format.json { render json: @change_format_in_my_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_format_in_my_tables/1
  # DELETE /change_format_in_my_tables/1.json
  def destroy
    @change_format_in_my_table.destroy
    respond_to do |format|
      format.html { redirect_to change_format_in_my_tables_url, notice: 'Change format in my table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_format_in_my_table
      @change_format_in_my_table = ChangeFormatInMyTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def change_format_in_my_table_params
      params[:change_format_in_my_table]
    end
end
