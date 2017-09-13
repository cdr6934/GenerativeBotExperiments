library(twitteR)
library(httr)

# 1. Find OAuth settings for twitter:
#    https://dev.twitter.com/docs/auth/oauth
oauth_endpoints("twitter")

# 2. Register an application at https://apps.twitter.com/
#    Make sure to set callback url to "http://127.0.0.1:1410/"
#
#    Replace key and secret below
myapp <- oauth_app("twitter",
                   key = "1wRWzoTQruTeqjc6UQAtlC6NT",
                   secret = "79v7cbbxRgKTTHUoB5AL9LGxGrFSlzAc8jGwpwi7QIl2Wjzpks"
)

# 3. Get OAuth credentials
twitter_token <- oauth1.0_token(oauth_endpoints("twitter"), myapp)

# 4. Use API
req <- GET("https://api.twitter.com/1.1/statuses/home_timeline.json",
           config(token = twitter_token))
stop_for_status(req)
content(req)


tweets <- searchTwitter('#rstats', n=50)
time <- Sys.Date()
twt <- paste(time, "a")
tweet(twt, mediaPath = "a.jpg")
setup_twitter_oauth("1wRWzoTQruTeqjc6UQAtlC6NT","79v7cbbxRgKTTHUoB5AL9LGxGrFSlzAc8jGwpwi7QIl2Wjzpks")
