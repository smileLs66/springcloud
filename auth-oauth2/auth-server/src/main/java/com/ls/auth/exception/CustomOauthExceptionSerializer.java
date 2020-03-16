package com.ls.auth.exception;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import java.io.IOException;
import java.util.Map;

public class CustomOauthExceptionSerializer extends StdSerializer<CustomOauthException> {

    public CustomOauthExceptionSerializer() {
        super(CustomOauthException.class);
    }

    @Override
    public void serialize(CustomOauthException value, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeStartObject();
        jsonGenerator.writeStringField("code", "-1");
        if("invalid_request".equals(value.getOAuth2ErrorCode())){
            jsonGenerator.writeStringField("error", "登陆失败！");
            jsonGenerator.writeStringField("error_description", "用户名或者密码不正确，请重试！");
        }else{
            jsonGenerator.writeStringField("error", value.getOAuth2ErrorCode());
            jsonGenerator.writeStringField("error_description", value.getMessage());
        }

        if (value.getAdditionalInformation()!=null) {
            for (Map.Entry<String, String> entry : value.getAdditionalInformation().entrySet()) {
                String key = entry.getKey();
                String add = entry.getValue();
                jsonGenerator.writeStringField(key, add);
            }
        }
        jsonGenerator.writeEndObject();
    }
}
