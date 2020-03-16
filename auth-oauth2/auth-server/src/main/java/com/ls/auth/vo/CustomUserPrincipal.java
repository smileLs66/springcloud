package com.ls.auth.vo;

import com.ls.auth.pojo.TbUser;
import java.util.Collection;
import java.util.Objects;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

/**
 * Created by ls on 2019/11/11.
 */
public class CustomUserPrincipal extends User {

    public CustomUserPrincipal(String username, String password,
        Collection<? extends GrantedAuthority> authorities) {
        super(username, password, authorities);
    }
    private TbUser tbUser;

    public TbUser getTbUser() {
        return tbUser;
    }

    public void setTbUser(TbUser tbUser) {
        this.tbUser = tbUser;
    }

    @Override
    public String getUsername() {
        return super.getUsername();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        if (!super.equals(o)) {
            return false;
        }
        CustomUserPrincipal that = (CustomUserPrincipal) o;
        return Objects.equals(tbUser, that.tbUser);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), tbUser);
    }
}
