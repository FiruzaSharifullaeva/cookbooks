

mysql_service "mysqldefault" do
  initial_root_password mysqlpass["root"]
  action [:create, :start]
end