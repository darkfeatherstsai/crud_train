class CreateAsds < ActiveRecord::Migration[5.2]
    def change
      create_table :asds do |t|
        t.string :title
        t.text :content
        t.boolean :is_online

        t.timestamps
      end
    end
    Asd.create(title: "aaa1", content: "qqqq")
    Asd.create(title: "acs", content: "GGG")
  end
