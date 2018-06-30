require "mysql"
require "benchmark"

QUERY = "select id from numbers"

DB.open "mysql://root@127.0.0.1:3306/crystal_mysql_benchmark" do |db|
  Benchmark.ips do |x|
    x.report(QUERY) do
      arr = [] of Int64

      db.query_each(QUERY) do |rs|
        arr << rs.read(Int64)
      end
    end
  end
end
