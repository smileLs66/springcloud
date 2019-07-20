1.登陆获取code
http://localhost:8080/oauth/authorize?client_id=client&response_type=code
2.获取token，通过 CURL 或是 Postman 请求
curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -d 'grant_type=authorization_code&code=1JuO6V' "http://client:secret@localhost:8080/oauth/token"
