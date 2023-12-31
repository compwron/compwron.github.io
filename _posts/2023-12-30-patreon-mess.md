---
layout: post
title: "patreon mess"
tags:
 -
---

goals
- get a list of creators I support
- get a list of membership amounts for creators I support
- get a list of recent output of creators I support
- mass unsubscribe from creators given a hand created sub list of the above (this is sad but, kinda needed)


get list is easy - log in, then get from sidebar
`document.querySelectorAll('a').forEach(a => console.log(a.href));`
do some hand wrangling on the data to get a list of urls of format `https://www.patreon.com/settings/memberships/viennateng`

okay... now what 

Manually, go to the delete page (two steps) and see that the url call on the second step is a DELETE call. Use "copy as curl" in chrome

```
curl 'https://www.patreon.com/api/member-cancellations/PROBABLY_MEMBERSHIP_UUID?include=campaign.null%2Ccurrent_reward.null%2Clowest_reward.null%2Cmember.null%2Caccess.null%2Cpost.null%2Cpost.user%2Cpost.media%2Cpost.audio%2Cpost.audio_preview%2Cpost.images&fields\[campaign\]=id%2Cavatar_photo_url%2Cname%2Ccover_photo_url%2Curl%2Cpledge_url%2Cpay_per_name%2Cis_monthly%2Cis_charge_upfront%2Coffers_free_membership%2Cavatar_photo_image_urls%2Ccurrency%2Cpledge_sum_currency&fields\[reward\]=id%2Cpatron_amount_cents%2Ctitle%2Cpatron_currency%2Curl&fields\[member\]=id%2Cpledge_relationship_start%2Cpledge_amount_cents%2Ccurrency&fields\[access\]=expires_at&fields\[post\]=id%2Ctitle%2Ccontent%2Ccomment_count%2Clike_count%2Cimage%2Curl%2Ccontent_teaser_text%2Cid%2Ctitle%2Ccontent%2Ccomment_count%2Clike_count%2Cimage%2Curl%2Ccontent_teaser_text%2Ccommenter_count%2Ccreated_at%2Ccurrent_user_has_liked%2Chas_ti_violation%2Cpost_file%2Cpost_type%2Cpublished_at%2Cvideo_preview%2Cembed%2Cwas_posted_by_campaign_owner%2Cmin_cents_pledged_to_view%2Ccurrent_user_can_comment%2Ccurrent_user_can_delete%2Ccurrent_user_can_report%2Ccurrent_user_has_liked%2Cthumbnail&json-api-version=1.0&json-api-use-default-includes=false' \
  -X 'DELETE' \
  -H 'authority: www.patreon.com' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'content-type: application/vnd.api+json' \
  -H 'cookie: patreon_locale_code=en-US; patreon_location_country_code=US; patreon_device_id=REDACTED; __ssid=REDACTED; session_id=REDACTED; __cf_bm=REDACTED; analytics_session_id=REDACTED; __stripe_sid=REDACTED; __stripe_mid=REDACTED' \
  -H 'dnt: 1' \
  -H 'origin: https://www.patreon.com' \
  -H 'referer: https://www.patreon.com/settings/memberships/REDACTED' \
  -H 'sec-ch-device-memory: 8' \
  -H 'sec-ch-ua: "Not_A Brand";v="8", "Chromium";v="120", "Google Chrome";v="120"' \
  -H 'sec-ch-ua-arch: "x86"' \
  -H 'sec-ch-ua-full-version-list: "Not_A Brand";v="8.0.0.0", "Chromium";v="120.0.6099.129", "Google Chrome";v="120.0.6099.129"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-model: ""' \
  -H 'sec-ch-ua-platform: "macOS"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36' \
  -H 'x-csrf-signature: REDACTED' \
  --compressed
 ```


 go to [https://www.patreon.com/settings/memberships](https://www.patreon.com/settings/memberships) and look at what loads in the Network tab

 Copy as curl and get this

 ```
 curl 'https://www.patreon.com/api/members?include=campaign.null&fields\[member\]=patron_status%2Caccess_expires_at&filter\[user_id\]=REDACTED&filter\[membership_type\]=active_patron%2Cdeclined_patron%2Cfree_trial&page\[offset\]=0&page\[count\]=1000&json-api-version=1.0&json-api-use-default-includes=false' \
  -H 'authority: www.patreon.com' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'content-type: application/vnd.api+json' \
  -H 'cookie: patreon_locale_code=en-US; patreon_location_country_code=US; patreon_device_id=REDACTED; __ssid=REDACTED; session_id=REDACTED; __stripe_mid=REDACTED; __cf_bm=REDACTED; __stripe_sid=REDACTED' \
  -H 'dnt: 1' \
  -H 'referer: https://www.patreon.com/settings/memberships' \
  -H 'sec-ch-device-memory: 8' \
  -H 'sec-ch-ua: "Not_A Brand";v="8", "Chromium";v="120", "Google Chrome";v="120"' \
  -H 'sec-ch-ua-arch: "x86"' \
  -H 'sec-ch-ua-full-version-list: "Not_A Brand";v="8.0.0.0", "Chromium";v="120.0.6099.129", "Google Chrome";v="120.0.6099.129"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-model: ""' \
  -H 'sec-ch-ua-platform: "macOS"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36' \
  --compressed
  ```

  json returned will have format 

  ```json
  {
  "data": [
    {
      "attributes": {
        "access_expires_at": null,
        "patron_status": "active_patron"
      },
      "id": "7a1b50ef-0e80-45f3-87ed-9b84e1a4cbf3",
      "relationships": {
        "campaign": {
          "data": {
            "id": "2340400",
            "type": "campaign"
          },
          "links": {
            "related": "https://www.patreon.com/api/campaigns/2340400"
          }
        }
      },
      "type": "member"
    },
  ],
  "included": [
    {
      "attributes": {
        "avatar_photo_image_urls": {
          "default": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/de528a960fc84edb8ec1e310e83ed21b/eyJ3Ijo2MjB9/4.png?token-time=1705276800&token-hash=9SDEQPhlJeoejQc3Z9e1gOLBnaP8ZpDLJq-QJFWG2F0%3D",
          "default_small": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/de528a960fc84edb8ec1e310e83ed21b/eyJ3IjozNjB9/4.png?token-time=1705276800&token-hash=KYs_Lg1vZYc-wHLEfPlTMN1wzQU0dLwdIERNkc9_seo%3D",
          "original": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/de528a960fc84edb8ec1e310e83ed21b/eyJxIjoxMDAsIndlYnAiOjB9/4.png?token-time=1705276800&token-hash=5_MadkZjo3DYrGjBjmpmjmAnuO4L6a_9smNnpmt04dI%3D",
          "thumbnail": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/de528a960fc84edb8ec1e310e83ed21b/eyJoIjozNjAsInciOjM2MH0%3D/4.png?token-time=1705276800&token-hash=JjFS4JiArt8v805qXY562esb1KNu9g_MBYLb7VD3xzQ%3D",
          "thumbnail_large": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/de528a960fc84edb8ec1e310e83ed21b/eyJoIjoxMDgwLCJ3IjoxMDgwfQ%3D%3D/4.png?token-time=1705276800&token-hash=-20eRvJyUrXgdI-SGTLy26_V7A4aHHVeKIv22nf1E_8%3D",
          "thumbnail_small": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/de528a960fc84edb8ec1e310e83ed21b/eyJoIjoxMDAsInciOjEwMH0%3D/4.png?token-time=1705276800&token-hash=HJqL8skv3ZfLpYoTze4JJ7oOZiOXn7l2eUQxwvGW0uE%3D"
        },
        "avatar_photo_url": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/de528a960fc84edb8ec1e310e83ed21b/eyJ3IjoyMDB9/4.png?token-time=2145916800&token-hash=xZ02MyrdTj52WbqxKvapTZtikBMpo1_hNrE_1vbn_Xk%3D",
        "campaign_pledge_sum": 107847,
        "cover_photo_url": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/267e86ac2c214aa2a89da0775eb37020/eyJ3IjoxOTIwLCJ3ZSI6MX0%3D/21.png?token-time=1704326400&token-hash=liF1O430EzTVr31xIrFXhQV8ltW6J_l2M0NKHglNGck%3D",
        "cover_photo_url_sizes": {
          "large": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/267e86ac2c214aa2a89da0775eb37020/eyJ3IjoxNjAwLCJ3ZSI6MX0%3D/21.png?token-time=1704326400&token-hash=aKmdHjih35lA49XZSIBcXLcHAbAYgNaDcbGrF6CQ9f0%3D",
          "medium": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/267e86ac2c214aa2a89da0775eb37020/eyJ3IjoxMjAwLCJ3ZSI6MX0%3D/21.png?token-time=1704326400&token-hash=wrVx_8Q60He9GeaugyhqTurYEgoHL-x5KuvoF8OY4Vc%3D",
          "small": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/267e86ac2c214aa2a89da0775eb37020/eyJ3Ijo5NjAsIndlIjoxfQ%3D%3D/21.png?token-time=1704326400&token-hash=1-imV6izymgdpYxkg9RfnyY9kG_wuPyaWRi0RWpDmlc%3D",
          "xlarge": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/267e86ac2c214aa2a89da0775eb37020/eyJ3IjoxOTIwLCJ3ZSI6MX0%3D/21.png?token-time=1704326400&token-hash=liF1O430EzTVr31xIrFXhQV8ltW6J_l2M0NKHglNGck%3D",
          "xsmall": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/267e86ac2c214aa2a89da0775eb37020/eyJ3Ijo2MjAsIndlIjoxfQ%3D%3D/21.png?token-time=1704326400&token-hash=PDCx0Eiv0O9kG---i-BmgG3Dql7SChjWPSgew7YPZvw%3D"
        },
        "created_at": "2019-01-04T04:58:23.000+00:00",
        "creation_count": 499,
        "creation_name": "creating online fiction",
        "currency": "USD",
        "discord_server_id": "530616734416109569",
        "display_patron_goals": false,
        "earnings_visibility": "public",
        "image_small_url": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/267e86ac2c214aa2a89da0775eb37020/eyJ3IjoxOTIwLCJ3ZSI6MX0%3D/21.png?token-time=1704326400&token-hash=liF1O430EzTVr31xIrFXhQV8ltW6J_l2M0NKHglNGck%3D",
        "image_url": "https://c10.patreonusercontent.com/4/patreon-media/p/campaign/2340400/267e86ac2c214aa2a89da0775eb37020/eyJ3IjoxOTIwLCJ3ZSI6MX0%3D/21.png?token-time=1704326400&token-hash=liF1O430EzTVr31xIrFXhQV8ltW6J_l2M0NKHglNGck%3D",
        "is_charge_upfront": true,
        "is_charged_immediately": true,
        "is_monthly": true,
        "is_nsfw": false,
        "is_plural": false,
        "main_video_embed": null,
        "main_video_url": null,
        "name": "Derin Edala",
        "one_liner": null,
        "outstanding_payment_amount_cents": 0,
        "paid_member_count": 378,
        "patron_count": 428,
        "pay_per_name": "month",
        "pledge_sum": 107847,
        "pledge_sum_currency": "USD",
        "pledge_url": "/checkout/derinwrites",
        "published_at": "2019-01-04T07:35:02.000+00:00",
        "summary": "<p style=\"\">Hey there, I'm Derin. If you like reading about <a href=\"https://havenstory975986403.wordpress.com/2020/10/25/quick-start-guide/\" rel=\"noopener noreferrer nofollow\">grumpy teenagers learning magic</a> or <a href=\"https://derinstories.com/2022/06/04/001-the-problem-with-the-javelin-program/\" rel=\"noopener noreferrer nofollow\">disreputable sociologists surviving on mysteriously abandoned spaceships</a>, you've come to the right place! We have a <a href=\"https://discord.com/invite/px7s8eQ\" rel=\"noopener noreferrer nofollow\">discord</a>, bonus materials and early access to story chapters available here.</p><p style=\"\"></p><p style=\"\">Our current bonus story is <a href=\"https://derinstories.com/drops-of-blood-like-neon-stars/\" rel=\"noopener noreferrer nofollow\">Drops Of Blood Like Neon Stars</a>. A new chapter will be released when we reach US$1120/month!</p>",
        "thanks_embed": null,
        "thanks_msg": "Thank you for your support. Writing is my dream job, and I'm so excited that we can build this world together.",
        "thanks_video_url": null,
        "url": "https://www.patreon.com/derinwrites"
      },
      "id": "2340400",
      "type": "campaign"
    }
  ],
  "links": {
    "first": "https://www.patreon.com/members?include=campaign.null&fields%5Bmember%5D=patron_status%2Caccess_expires_at&filter%5Buser_id%5D=144547&filter%5Bmembership_type%5D=active_patron%2Cdeclined_patron%2Cfree_trial&page%5Boffset%5D=0&page%5Bcount%5D=1000&json-api-version=1.0&json-api-use-default-includes=false"
  },
  "meta": {
    "count": 93,
    "sort": "-pledge_relationship_start"
  }
}
```

Harvest the ID fields and plug it into the delete query above... 

```python
import json
with open('pledges.json', 'r') as file:
    data = json.load(file)
print([item['id'] for item in data['data']])
```

```python
import subprocess
import json
ids = []
for memberid in ids:
  curl_command = """curl 'https://www.patreon.com/api/member-cancellations/{memberid}' \
  -X 'DELETE' \
  all your other fields go here
  --compressed"""
  process = subprocess.Popen(curl_command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
  stdout, stderr = process.communicate()
  if process.returncode != 0:
    print(stderr.decode('utf-8')
  else:
    data = json.loads(stdout.decode('utf-8'))
    print(data)
```


Hmm ok that didn't work 

```json
{'errors': [{'code': 4, 'code_name': 'ResourceMissing', 'detail': 'member-cancellation with id memberid was not found.', 'id': 'REDACTED', 'status': '404', 'title': 'member-cancellation was not found.'}]}
```

Related code I have seen

1. https://github.com/Charlotte-Kosche-Thesis/patreon-scraper
2. https://github.com/daemionfox/patreon-feed
3. https://github.com/BassOfBass/Kitsune/blob/master/src/importers/patreon.py
4. https://github.com/pfrazee/ctzn.network/blob/master/_scripts/fetch-patrons.js
5. https://github.com/memoryholecc/patreondownloader
6. https://github.com/PipedreamHQ/pipedream/tree/master/components/patreon https://pipedream.com/
7. 

