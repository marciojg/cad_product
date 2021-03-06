module ProductHelper
  def template_links(object, action_name)
    send("#{action_name}_links", object) rescue ArgumentError.new("Should have created a method for action #{action_name}")
  end

  private

  def index_links(object)
    capture do
      concat link_to 'Show', product_path(object), class: "btn btn-primary mr-1", style: "color: #fff"
      concat link_to 'Edit', edit_product_path(object), class: "btn btn-info mr-1", style: "color: #fff"
      concat link_to 'Destroy', product_path(object), method: :delete, data: { confirm: 'Are you sure?' }, class: "btn btn-danger mr-1", style: "color: #fff"
    end
  end

  def show_links(object)
    capture do
      concat link_to 'Edit', edit_product_path(object), class: "btn btn-primary mr-1", style: "color: #fff"
      concat link_to 'Back', products_path, class: "btn btn-info mr-1", style: "color: #fff"
    end
  end
end
