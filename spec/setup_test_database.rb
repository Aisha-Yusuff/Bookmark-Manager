require 'pg'

def setup_test_database
  p "Setting up test database..."

  conn = PG.connect(dbname: 'bookmark_manager_test')

  # CLear the data in the bookmarks table
  conn.exec("TRUNCATE bookmarks;")
end
