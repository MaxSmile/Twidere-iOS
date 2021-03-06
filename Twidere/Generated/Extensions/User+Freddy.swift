// Automatically generated, DO NOT MODIFY
import Freddy
import Foundation

extension User: JSONStaticDecodable {

    static func fromJSON(json value: Freddy.JSON) throws -> User {
        let accountKey: UserKey? = try? value.decode(at: "account_key")
        let key: UserKey = try value.decode(at: "user_key")
        let createdAt: Date? = try? value.decode(at: "created_at")
        let isProtected: Bool = try value.decode(at: "is_protected", or: false)
        let isVerified: Bool = try value.decode(at: "is_verified", or: false)
        let name: String = try value.decode(at: "name")
        let screenName: String = try value.decode(at: "screen_name")
        let profileImageUrl: String? = try? value.decode(at: "profile_image_url")
        let profileBannerUrl: String? = try? value.decode(at: "profile_banner_url")
        let profileBackgroundUrl: String? = try? value.decode(at: "profile_background_url")
        let descriptionPlain: String? = try? value.decode(at: "description_plain")
        let descriptionDisplay: String? = try? value.decode(at: "description_display")
        let url: String? = try? value.decode(at: "url")
        let urlExpanded: String? = try? value.decode(at: "url_expanded")
        let urlDisplay: String? = try? value.decode(at: "url_display")
        let location: String? = try? value.decode(at: "location")
        let metadata: Metadata? = try value.decode(at: "metadata", or: nil)
        return User(accountKey: accountKey, key: key, createdAt: createdAt, isProtected: isProtected, isVerified: isVerified, name: name, screenName: screenName, profileImageUrl: profileImageUrl, profileBannerUrl: profileBannerUrl, profileBackgroundUrl: profileBackgroundUrl, descriptionPlain: descriptionPlain, descriptionDisplay: descriptionDisplay, url: url, urlExpanded: urlExpanded, urlDisplay: urlDisplay, location: location, metadata: metadata)
    }

}

extension User: JSONEncodable {
    public func toJSON() -> JSON {
        var dict: [String: JSON] = [:]
        if (accountKey != nil) {
            dict["account_key"] = self.accountKey!.toJSON()
        }
        dict["user_key"] = self.key.toJSON()
        if (createdAt != nil) {
            dict["created_at"] = self.createdAt!.toJSON()
        }
        dict["is_protected"] = self.isProtected.toJSON()
        dict["is_verified"] = self.isVerified.toJSON()
        dict["name"] = self.name.toJSON()
        dict["screen_name"] = self.screenName.toJSON()
        if (profileImageUrl != nil) {
            dict["profile_image_url"] = self.profileImageUrl!.toJSON()
        }
        if (profileBannerUrl != nil) {
            dict["profile_banner_url"] = self.profileBannerUrl!.toJSON()
        }
        if (profileBackgroundUrl != nil) {
            dict["profile_background_url"] = self.profileBackgroundUrl!.toJSON()
        }
        if (descriptionPlain != nil) {
            dict["description_plain"] = self.descriptionPlain!.toJSON()
        }
        if (descriptionDisplay != nil) {
            dict["description_display"] = self.descriptionDisplay!.toJSON()
        }
        if (url != nil) {
            dict["url"] = self.url!.toJSON()
        }
        if (urlExpanded != nil) {
            dict["url_expanded"] = self.urlExpanded!.toJSON()
        }
        if (urlDisplay != nil) {
            dict["url_display"] = self.urlDisplay!.toJSON()
        }
        if (location != nil) {
            dict["location"] = self.location!.toJSON()
        }
        if (metadata != nil) {
            dict["metadata"] = self.metadata!.toJSON()
        }
        return .dictionary(dict)
    }
}
extension User.Metadata: JSONStaticDecodable {

    static func fromJSON(json value: Freddy.JSON) throws -> User.Metadata {
        let following: Bool = try value.decode(at: "following")
        let followedBy: Bool = try value.decode(at: "followed_by")
        let blocking: Bool = try value.decode(at: "blocking")
        let blockedBy: Bool = try value.decode(at: "blocked_by")
        let muting: Bool = try value.decode(at: "muting")
        let followRequestSent: Bool = try value.decode(at: "follow_request_sent")
        let descriptionLinks: [LinkSpanItem]? = try? value.decodedArray(at: "description_links")
        let descriptionMentions: [MentionSpanItem]? = try? value.decodedArray(at: "description_mentions")
        let descriptionHashtags: [HashtagSpanItem]? = try? value.decodedArray(at: "description_hashtags")
        let linkColor: String? = try value.decode(at: "link_color", or: nil)
        let backgroundColor: String? = try value.decode(at: "background_color", or: nil)
        let statusesCount: Int64 = try value.decode(at: "statuses_count")
        let followersCount: Int64 = try value.decode(at: "followers_count")
        let friendsCount: Int64 = try value.decode(at: "friends_count")
        let favoritesCount: Int64 = try value.decode(at: "favorites_count")
        let mediaCount: Int64 = try value.decode(at: "media_count")
        let listsCount: Int64 = try value.decode(at: "lists_count")
        let listedCount: Int64 = try value.decode(at: "listed_count")
        let groupsCount: Int64 = try value.decode(at: "groups_count")
        return User.Metadata(following: following, followedBy: followedBy, blocking: blocking, blockedBy: blockedBy, muting: muting, followRequestSent: followRequestSent, descriptionLinks: descriptionLinks, descriptionMentions: descriptionMentions, descriptionHashtags: descriptionHashtags, linkColor: linkColor, backgroundColor: backgroundColor, statusesCount: statusesCount, followersCount: followersCount, friendsCount: friendsCount, favoritesCount: favoritesCount, mediaCount: mediaCount, listsCount: listsCount, listedCount: listedCount, groupsCount: groupsCount)
    }

}

extension User.Metadata: JSONEncodable {
    public func toJSON() -> JSON {
        var dict: [String: JSON] = [:]
        dict["following"] = self.following.toJSON()
        dict["followed_by"] = self.followedBy.toJSON()
        dict["blocking"] = self.blocking.toJSON()
        dict["blocked_by"] = self.blockedBy.toJSON()
        dict["muting"] = self.muting.toJSON()
        dict["follow_request_sent"] = self.followRequestSent.toJSON()
        if (descriptionLinks != nil) {
            dict["description_links"] = self.descriptionLinks!.toJSON()
        }
        if (descriptionMentions != nil) {
            dict["description_mentions"] = self.descriptionMentions!.toJSON()
        }
        if (descriptionHashtags != nil) {
            dict["description_hashtags"] = self.descriptionHashtags!.toJSON()
        }
        if (linkColor != nil) {
            dict["link_color"] = self.linkColor!.toJSON()
        }
        if (backgroundColor != nil) {
            dict["background_color"] = self.backgroundColor!.toJSON()
        }
        dict["statuses_count"] = self.statusesCount.toJSON()
        dict["followers_count"] = self.followersCount.toJSON()
        dict["friends_count"] = self.friendsCount.toJSON()
        dict["favorites_count"] = self.favoritesCount.toJSON()
        dict["media_count"] = self.mediaCount.toJSON()
        dict["lists_count"] = self.listsCount.toJSON()
        dict["listed_count"] = self.listedCount.toJSON()
        dict["groups_count"] = self.groupsCount.toJSON()
        return .dictionary(dict)
    }
}

