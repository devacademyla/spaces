class RemoveReferencesOnContract < ActiveRecord::Migration[5.1]
  def change
  	remove_reference(:contracts, :space, index: true)
  end
end
