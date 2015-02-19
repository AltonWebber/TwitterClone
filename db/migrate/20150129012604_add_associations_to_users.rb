class AddAssociationsToUsers < ActiveRecord::Migration
  def change
  add_belongs_to(:tweets,:user )
  add_foreign_key :tweets,:users ,index:true
  end
end
