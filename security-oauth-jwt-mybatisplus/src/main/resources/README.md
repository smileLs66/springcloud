1.登陆获取code 用户名：admin 密码:123456
http://localhost:8080/oauth/authorize?client_id=client&response_type=code
2.根据code获取token;案列图片在resources/images/token.png
http://client:secret@localhost:8080/oauth/token
curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -d 'grant_type=authorization_code&code=1JuO6V' "http://client:secret@localhost:8080/oauth/token"
