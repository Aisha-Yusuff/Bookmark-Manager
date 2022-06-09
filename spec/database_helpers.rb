require 'pg'

# persisted_data uses PG.connect to bookmark_manager_test database
# And .query selects the data that matches the id in the methods argument 
def persisted_data(id:)
  conn = PG.connect(dbname: 'bookmark_manager_test')
  result = conn.query("SELECT * FROM bookmarks WHERE id = #{id};")
  result.first
end 
