class SuppliersController < ApplicationController

def index
  all_suppliers = Supplier.all
  supplier = all_suppliers
  render json: supplier
end

def show
  supplier = Supplier.find_by(id: params["id"])
  render json: supplier
end

def create
  supplier = Supplier.new(
    name: params["name"],
    email: params["email"],
    phone_number: params["phone_number"]
  )
  
  if supplier.save
  render json: supplier
  else
    render json: {error_massages: supplier.errors.full_messages}, status: 422
  end
end

def update
  supplier_id = params["id"]
  supplier = Supplier.find(supplier_id)

  supplier.name = params["name"] || supplier.name
  supplier.email = params["email"] || supplier.email
  supplier.phone_number = params["phone_number"] || supplier.phone_number
  

  if supplier.save
    render json: supplier
    else
      render json: {error_massages: supplier.errors.full_messages},status: 422
  end
end

def destroy
  supplier_id = params["id"]
  supplier = Supplier.find_by(id: supplier_id)
  supplier.destroy
  render json: "Supplier has been terminated."
end

end
