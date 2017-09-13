# search
```
 curl -X GET -sv -H "Content-Type: application/json" -d ''{ "user" : { "name": "A"} }'' http://localhost:3000/users/search.json -w "\n\n"
 *   Trying ::1...
 * TCP_NODELAY set
 * Connection failed
 * connect to ::1 port 3000 failed: Connection refused
 *   Trying 127.0.0.1...
 * TCP_NODELAY set
 * Connected to localhost (127.0.0.1) port 3000 (#0)
 > GET /users/search.json HTTP/1.1
 > Host: localhost:3000
 > User-Agent: curl/7.54.0
 > Accept: */*
 > Content-Type: application/json
 > Content-Length: 27
 > 
 * upload completely sent off: 27 out of 27 bytes
 < HTTP/1.1 200 OK
 < Content-Type: application/json; charset=utf-8
 < ETag: W/"6b7eb9b6108c18b312bb4e07ba80c973"
 < Cache-Control: max-age=0, private, must-revalidate
 < X-Request-Id: c1170739-e90c-41f3-9109-02f36c09f941
 < X-Runtime: 0.060133
 < Transfer-Encoding: chunked
 < 
 * Connection #0 to host localhost left intact
 [{"id":1,"name":"Adam","age":30,"description":"0","created_at":"2017-08-20T23:32:12.807Z","updated_at":"2017-08-20T23:32:12.807Z"},{"id":3,"name":"Charly","age":30,"description":"0","created_at":"2017-08-20T23:32:12.813Z","updated_at":"2017-08-20T23:32:12.813Z"},{"id":5,"name":"ncgsa","age":33,"description":"0","created_at":"2017-08-28T23:36:15.484Z","updated_at":"2017-08-28T23:36:15.484Z"},{"id":6,"name":"cuagj","age":33,"description":"0","created_at":"2017-08-28T23:45:15.064Z","updated_at":"2017-08-28T23:45:15.064Z"},{"id":12,"name":"afiem","age":63,"description":"0","created_at":"2017-08-29T09:17:47.551Z","updated_at":"2017-08-29T09:17:47.551Z"},{"id":22,"name":"klhma","age":25,"description":"klhma description","created_at":"2017-08-30T23:07:43.267Z","updated_at":"2017-08-30T23:07:43.267Z"},{"id":31,"name":"nuasy","age":71,"description":"nuasy description","created_at":"2017-08-30T23:18:36.236Z","updated_at":"2017-08-30T23:18:36.236Z"},{"id":33,"name":"pkcia","age":48,"description":"pkcia description","created_at":"2017-08-30T23:25:29.488Z","updated_at":"2017-08-30T23:25:29.488Z"},{"id":37,"name":"qutav","age":38,"description":"qutav description","created_at":"2017-08-31T23:20:34.346Z","updated_at":"2017-08-31T23:20:34.346Z"}]
```


