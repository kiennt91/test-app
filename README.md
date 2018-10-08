### Local 向け開発環境構築

database.ymlをローカル環境のDBを設定します。
<pre>
development:
  <<: *default
  host: mysql 
  username: root
  password: <%= ENV['MYSQL_ROOT_PASSWORD'] %>
</pre>
サービスのビルドを実行します。
<pre>
docker-compose -f docker-compose.local.yml build
</pre>
コンテナを作成して、移動します。
<pre>
docker-compose -f docker-compose.local.yml up
</pre>
DBのデータを作成します。
<pre>
docker-compose run app bin/rake db:create db:migrate db:seed RAILS_ENV=development
</pre>
アプリの動作を確認します。
<pre>
http://localhost:3000/
</pre>


