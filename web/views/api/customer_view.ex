defmodule ContaComigo.Api.CustomerView do
  use ContaComigo.Web, :view

  def render("index.json", %{customers: customers}) do
    %{data: render_many(customers, ContaComigo.Api.CustomerView, "customer.json")}
  end

  def render("show.json", %{customer: customer}) do
    %{data: render_one(customer, ContaComigo.Api.CustomerView, "customer.json")}
  end

  def render("customer.json", %{customer: customer}) do
    %{
      id: customer.id,
      first_name: customer.first_name,
      last_name: customer.last_name,
      email: customer.email,
      phone: customer.phone
    }
  end
end
