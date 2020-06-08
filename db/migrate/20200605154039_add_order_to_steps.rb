class AddOrderToSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :steps, :order, :integer, :after => 'id'
  end
end
