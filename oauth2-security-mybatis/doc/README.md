这个项目是基于jdbc的存在数据库的认证和授权
1.登陆获取code 账号:admin 密码：123456
http://localhost:9090/oauth/authorize?client_id=client&response_type=code
2.获取token，通过 CURL 或是 Postman 请求 详情见doc的images的图片
curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -d 'grant_type=authorization_code&code=1JuO6V' "http://client:secret@localhost:9090/oauth/token"
3.访问资源    详情见doc的images的图片
curl --location --request GET "http://localhost:9091/contents" --header "Content-Type: application/json" --header "Authorization: Bearer yourAccessToken"
4.oauth2的相关数据库的说明及介绍 http://andaily.com/spring-oauth-server/db_table_description.html