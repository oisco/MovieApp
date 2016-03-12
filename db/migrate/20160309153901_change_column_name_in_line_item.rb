class ChangeColumnNameInLineItem < ActiveRecord::Migration
  def change
      rename_column :lineitems, :ticket_id, :showing_id
  end
end
