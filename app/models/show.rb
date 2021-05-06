class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

    def actors_list
      # array of actor full name
      # associated with a show
      # remember a show has many actors through characters
      #  "#{Actor.first_name} #{Actor.last_name}
      # 
      
      self.actors.map do |actor|
        "#{actor.first_name} #{actor.last_name}"
      end
    end

end