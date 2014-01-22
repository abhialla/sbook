class AddForgotPasswordToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :forgot_password, :string
  end

  def self.down
    remove_column :users, :forgot_password
  end
end
