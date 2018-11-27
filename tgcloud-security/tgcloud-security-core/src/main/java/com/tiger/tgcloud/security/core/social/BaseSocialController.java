package com.tiger.tgcloud.security.core.social;

import com.tiger.tgcloud.security.core.social.support.SocialUserInfo;
import org.springframework.social.connect.Connection;

/**
 * The class Social controller.
 *
 * @author
 */
public abstract class BaseSocialController {

    /**
     * 根据Connection信息构建SocialUserInfo
     *
     * @param connection the connection
     * @return social user info
     */
    protected SocialUserInfo buildSocialUserInfo(Connection<?> connection) {
        SocialUserInfo userInfo = new SocialUserInfo();
        userInfo.setProviderId(connection.getKey().getProviderId());
        userInfo.setProviderUserId(connection.getKey().getProviderUserId());
        userInfo.setNickname(connection.getDisplayName());
        userInfo.setHeadimg(connection.getImageUrl());
        return userInfo;
    }

}
