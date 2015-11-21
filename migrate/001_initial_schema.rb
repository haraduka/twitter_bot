require 'active_record'

class InitialSchema < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name
    end
  end

  def down
    drop_table :users
  end
end

#InitialSchema.migrate(:up)
#
#class User < ActiveRecord::Base
#end
#
#User.create(name: 'hogehoge')
#User.create(name: 'unko')
#p User.all
