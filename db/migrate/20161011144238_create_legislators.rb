require_relative '../config'

class CreateLegislators < ActiveRecord::Migration[5.1]
  def change
    create_table :legislators do |t|
      t.string :title #0
      t.string :first_name #1
      t.string :middle_name #2
      t.string :last_name #3
      t.string :party #6
      t.string :state #7
      t.string :in_office #9
      t.string :gender #10
      t.string :phone #11
      t.string :fax #12
      t.string :website #13
      t.string :webform #14
      t.string :twitter_id #21
      t.timestamps
    end
  end
end

#"title","firstname","middlename","lastname","name_suffix","nickname","party","state","district","in_office","gender","phone","fax","website","webform","congress_office","bioguide_id","votesmart_id","fec_id","govtrack_id","crp_id","twitter_id","congresspedia_url","youtube_url","facebook_id","official_rss","senate_class","birthdate"
