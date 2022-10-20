class CreatePhoneValidators < ActiveRecord::Migration[7.0]
  def change
    create_table :phone_validators do |t|

      t.timestamps
    end
  end
end
