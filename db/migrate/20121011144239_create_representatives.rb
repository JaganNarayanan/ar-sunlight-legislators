require_relative '../config'

class CreateRepresentatives < ActiveRecord::Migration[5.1]
  def change
    create_table :representatives do |t|
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :party
      t.string :state
      t.string :in_office
      t.string :gender
      t.string :phone
      t.string :fax
      t.string :website
      t.string :webform
      t.string :twitter_id
      t.timestamps
    end
  end
end

#"title","firstname","middlename","lastname","name_suffix","nickname","party","state","district","in_office","gender","phone","fax","website","webform","congress_office","bioguide_id","votesmart_id","fec_id","govtrack_id","crp_id","twitter_id","congresspedia_url","youtube_url","facebook_id","official_rss","senate_class","birthdate"
