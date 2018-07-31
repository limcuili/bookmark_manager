def insert_test_bookmarks
  connection = PG.connect(dbname: 'bookmark_manager_test')

  connection.exec("INSERT INTO bookmarks (id, url, title) VALUES(1, 'http://makersacademy.com', 'Makers Homepage');")
  connection.exec("INSERT INTO bookmarks (id, url, title) VALUES(2, 'http://destroyallsoftware.com', 'Destroy all Software');")
  connection.exec("INSERT INTO bookmarks (id, url, title) VALUES(3, 'http://google.com', 'Google');")
end
