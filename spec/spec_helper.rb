$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'grizzly'
require 'spec'
require 'spec/autorun'
require 'active_record'

Spec::Runner.configure do |config|
  #EMPTY
end


##########################################################################
# Active Record connection
##########################################################################

begin
  ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")
rescue ArgumentError
  ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :dbfile => ":memory:")
end


##########################################################################
# Database schema
##########################################################################

ActiveRecord::Base.configurations = true
ActiveRecord::Schema.define(:version => 1) do
  create_table :users do |t|
    t.string    :name
    t.datetime  :created_at    
    t.datetime  :updated_at
  end
  
  create_table :user_permissions do |t|
    t.integer :user_id
    t.string  :permission_name
  end
  
  create_table :user_groups do |t|
    t.integer :user_id
    t.string :group_name
  end
  
  create_table :groups do |t|
    t.string :group_name
  end
  
  create_table :permission_groups do |t|
    t.string :permission_name
    t.integer :group_id
  end
  
end

##########################################################################
# Define permissions
##########################################################################

Grizzly.define :permissions do |gp|
  gp.edit_profile do |c|
    c.allow :users_controller, :only => [:edit, :update]
  end
  
  gp.add_addresses do |c|
    c.allow :addresses_controller, :only => [:new, :create]
  end
end

##########################################################################
# Define groups
##########################################################################

Grizzly.define :groups do |gg|
  gg.administrators do |a|
    a.have :add_addresses, :edit_profile
  end
  
  gg.clients do |c|
    c.have :edit_profile
  end
end

class User < ActiveRecord::Base
  include Grizzly::ActiveRecordExtensions
  acts_as_grizzly
  
  default :groups do |g|
    g.clients
  end
end