# Factory Doctor

Может дать подсказки о неоптимальных вещах типа `create` вместо `build_stubbed`

```bash
FDOC=1 rspec spec/controllers/internal_users_controller_spec.rb

[TEST PROF INFO] FactoryDoctor enabled
...........[TEST PROF INFO] FactoryDoctor says: "Looks good to me!"
```


```bash
FDOC=1 rspec
[TEST PROF INFO] FactoryDoctor report

Total (potentially) bad examples: 106
Total wasted time: 00:12.148

FlareTag (./spec/labor/flare_tag_spec.rb:3)
  returns nil if there is no flare tag (./spec/labor/flare_tag_spec.rb:8) – 3 records created, 00:00.142
  returns nil if an except is provided (./spec/labor/flare_tag_spec.rb:17) – 3 records created, 00:00.110
  returns nil if an article doesnt have a flare tag (./spec/labor/flare_tag_spec.rb:32) – 3 records created, 00:00.135

GeneratedImage (./spec/labor/generated_image_spec.rb:3)
  returns the social image url if there is a social image (./spec/labor/generated_image_spec.rb:7) – 3 records created, 00:00.134
  returns the main image if there is a main image (./spec/labor/generated_image_spec.rb:12) – 3 records created, 00:00.142
  returns article social image (./spec/labor/generated_image_spec.rb:18) – 3 records created, 00:00.147
  creates various generated images of different title lengths (./spec/labor/generated_image_spec.rb:25) – 3 records created, 00:00.138

LanguageDetector (./spec/labor/language_detector_spec.rb:3)
  returns language (./spec/labor/language_detector_spec.rb:7) – 3 records created, 00:00.137

MailchimpBot (./spec/labor/mailchimp_bot_spec.rb:13)
  returns false if user isnt a sustaining member (./spec/labor/mailchimp_bot_spec.rb:86) – 2 records created, 00:00.122
  unsubscribes the user from the weekly newsletter (./spec/labor/mailchimp_bot_spec.rb:120) – 2 records created, 00:00.070

RateLimitChecker (./spec/labor/rate_limit_checker_spec.rb:3)
  .limit_by_situation returns false for invalid case (./spec/labor/rate_limit_checker_spec.rb:7) – 2 records created, 00:00.095

TwilioToken (./spec/labor/twilio_token_spec.rb:3)
  returns a token (./spec/labor/twilio_token_spec.rb:6) – 2 records created, 00:00.068

Article (./spec/models/article_spec.rb:4)
  assigns published date if included in frontmatter (./spec/models/article_spec.rb:38) – 3 records created, 00:00.146
  has proper username (./spec/models/article_spec.rb:46) – 3 records created, 00:00.157
  returns article title length classification (./spec/models/article_spec.rb:271) – 3 records created, 00:00.151
  returns stripped canonical url (./spec/models/article_spec.rb:284) – 3 records created, 00:00.239
  removes from search index (./spec/models/article_spec.rb:294) – 3 records created, 00:00.143
  has a valid search_score (./spec/models/article_spec.rb:320) – 3 records created, 00:00.158
  returns class name (./spec/models/article_spec.rb:433) – 3 records created, 00:00.137
  does not show year in readable time if not current year (./spec/models/article_spec.rb:437) – 3 records created, 00:00.139
  shows year in readable time if not current year (./spec/models/article_spec.rb:443) – 3 records created, 00:00.135
  has padded video_duration_in_minutes (./spec/models/article_spec.rb:230) – 3 records created, 00:00.136
  has correctly non-padded seconds in video_duration_in_minutes (./spec/models/article_spec.rb:235) – 3 records created, 00:00.142
  assigns path on save (./spec/models/article_spec.rb:355) – 3 records created, 00:00.144
  assigns cached_user_name on save (./spec/models/article_spec.rb:359) – 3 records created, 00:00.140
  assigns cached_user_username on save (./spec/models/article_spec.rb:363) – 3 records created, 00:00.151
  can have a template (./spec/models/article_spec.rb:460) – 2 records created, 00:00.069

BadgeAchievement (./spec/models/badge_achievement_spec.rb:3)
  turns rewarding_context_message_markdown into rewarding_context_message HTML (./spec/models/badge_achievement_spec.rb:13) – 4 records created, 00:00.088

Block (./spec/models/block_spec.rb:3)
  is not valid without user (./spec/models/block_spec.rb:13) – 2 records created, 00:00.067

Comment (./spec/models/comment_spec.rb:3)
  does not show year in readable time if not current year (./spec/models/comment_spec.rb:127) – 6 records created, 00:00.292
  shows year in readable time if not current year (./spec/models/comment_spec.rb:131) – 6 records created, 00:00.286
  returns a path (./spec/models/comment_spec.rb:137) – 6 records created, 00:00.300
  returns the properly formed path (./spec/models/comment_spec.rb:141) – 6 records created, 00:00.272
  returns root article if no parent comment (./spec/models/comment_spec.rb:145) – 6 records created, 00:00.275
  converts body_markdown to proper processed_html (./spec/models/comment_spec.rb:48) – 6 records created, 00:00.293
  returns the root articles user if no parent comment (./spec/models/comment_spec.rb:158) – 6 records created, 00:00.378
  is no more than 80 characters (./spec/models/comment_spec.rb:168) – 6 records created, 00:00.307
  retains content from #processed_html (./spec/models/comment_spec.rb:172) – 6 records created, 00:00.292
  returns nothing when no ltag was used (./spec/models/comment_spec.rb:179) – 6 records created, 00:00.290

DisplayAd (./spec/models/display_ad_spec.rb:3)
  generates processed_html before save (./spec/models/display_ad_spec.rb:11) – 2 records created, 00:00.021
  only disallows unacceptable placement_area (./spec/models/display_ad_spec.rb:14) – 2 records created, 00:00.023
  only allows acceptable placement_area (./spec/models/display_ad_spec.rb:18) – 2 records created, 00:00.019

Event (./spec/models/event_spec.rb:3)
  rejects title with over 90 characters (./spec/models/event_spec.rb:6) – 1 record created, 00:00.058
  rejects invalid http url (./spec/models/event_spec.rb:11) – 1 record created, 00:00.004
  rejects ends times that are earlier than start times (./spec/models/event_spec.rb:16) – 1 record created, 00:00.003
  creates slug for published events (./spec/models/event_spec.rb:21) – 1 record created, 00:00.003

MentorRelationship (./spec/models/mentor_relationship_spec.rb:3)
  is active (./spec/models/mentor_relationship_spec.rb:16) – 4 records created, 00:00.137

Message (./spec/models/message_spec.rb:3)
  creates rich link in connect with proper link (./spec/models/message_spec.rb:46) – 7 records created, 00:00.290
  creates rich link in connect with non-rich link (./spec/models/message_spec.rb:54) – 4 records created, 00:00.109
  should belong to user required: true (./spec/models/message_spec.rb:16) – 1 record created, 00:00.020
  should belong to chat_channel required: true (./spec/models/message_spec.rb:17) – 1 record created, 00:00.017
  should validate that :message_html cannot be empty/falsy (./spec/models/message_spec.rb:18) – 1 record created, 00:00.018
  should validate that :message_markdown cannot be empty/falsy (./spec/models/message_spec.rb:19) – 1 record created, 00:00.019

PodcastEpisode (./spec/models/podcast_episode_spec.rb:3)
  strips tags from the body (./spec/models/podcast_episode_spec.rb:11) – 2 records created, 00:00.031

Reaction (./spec/models/reaction_create_spec.rb:3)
  enqueues the Users::TouchJob (./spec/models/reaction_create_spec.rb:11) – 6 records created, 00:00.209
  enqueues the Reactions::UpdateReactableJob (./spec/models/reaction_create_spec.rb:17) – 6 records created, 00:00.216
  enqueues the Reactions::BustReactableCacheJob (./spec/models/reaction_create_spec.rb:23) – 6 records created, 00:00.212
  enqueues the Reactions::BustHomepageCacheJob (./spec/models/reaction_create_spec.rb:29) – 6 records created, 00:00.226

SearchKeyword (./spec/models/search_keyword_spec.rb:3)
  is valid with proper path (./spec/models/search_keyword_spec.rb:13) – 1 record created, 00:00.004
  is invalid with improper path (./spec/models/search_keyword_spec.rb:18) – 1 record created, 00:00.002

User (./spec/models/user_spec.rb:4)
  creates proper body class with defaults (./spec/models/user_spec.rb:425) – 2 records created, 00:00.067
  creates proper body class with sans serif config (./spec/models/user_spec.rb:429) – 2 records created, 00:00.066
  creates proper body class with night theme (./spec/models/user_spec.rb:434) – 2 records created, 00:00.068
  gets a username after create (./spec/models/user_spec.rb:55) – 2 records created, 00:00.069
  responds to nil (./spec/models/user_spec.rb:564) – 4 records created, 00:00.134

ApiSecretPolicy (./spec/policies/api_secret_policy_spec.rb:3)
  should raise Pundit::NotAuthorizedError (./spec/policies/api_secret_policy_spec.rb:12) – 2 records created, 00:00.067
  should permit actions :create and :destroy (./spec/policies/api_secret_policy_spec.rb:18) – 2 records created, 00:00.067
  should permit mass assignment of :description (./spec/policies/api_secret_policy_spec.rb:19) – 2 records created, 00:00.066
  should permit actions :create (./spec/policies/api_secret_policy_spec.rb:25) – 2 records created, 00:00.066
  should forbid actions :destroy (./spec/policies/api_secret_policy_spec.rb:26) – 2 records created, 00:00.064
  should permit mass assignment of :description (./spec/policies/api_secret_policy_spec.rb:27) – 2 records created, 00:00.067

ArticlePolicy (./spec/policies/article_policy_spec.rb:3)
  should raise Pundit::NotAuthorizedError (./spec/policies/article_policy_spec.rb:16) – 2 records created, 00:00.068
  should permit actions :new, :create, and :preview (./spec/policies/article_policy_spec.rb:22) – 2 records created, 00:00.064
  should forbid actions :update, :delete_confirm, :destroy, and :analytics_index (./spec/policies/article_policy_spec.rb:23) – 2 records created, 00:00.066
  should permit mass assignment of :title, :body_html, :body_markdown, :main_image, :published, :description, :allow_small_edits, :allow_big_edits, :tag_list, :publish_under_org, :video, :video_code, :video_source_url, :video_thumbnail_url, and :receive_notifications (./spec/policies/article_policy_spec.rb:37) – 2 records created, 00:00.066
  forbids the first user from viewing the other users analytics via their article (./spec/policies/article_policy_spec.rb:58) – 5 records created, 00:00.251
  forbids the other user from viewing the first users analytics (./spec/policies/article_policy_spec.rb:62) – 5 records created, 00:00.252

ChatChannelMembershipPolicy (./spec/policies/chat_channel_membership_policy_spec.rb:3)
  should permit actions :update and :destroy (./spec/policies/chat_channel_membership_policy_spec.rb:21) – 4 records created, 00:00.095
  should forbid actions :update and :destroy (./spec/policies/chat_channel_membership_policy_spec.rb:32) – 6 records created, 00:00.192

ChatChannelPolicy (./spec/policies/chat_channel_policy_spec.rb:3)
  should raise Pundit::NotAuthorizedError (./spec/policies/chat_channel_policy_spec.rb:11) – 1 record created, 00:00.020
  should permit actions :index (./spec/policies/chat_channel_policy_spec.rb:17) – 1 record created, 00:00.019

CommentPolicy (./spec/policies/comment_policy_spec.rb:3)
  should raise Pundit::NotAuthorizedError (./spec/policies/comment_policy_spec.rb:19) – 2 records created, 00:00.068
  should permit actions :create (./spec/policies/comment_policy_spec.rb:25) – 2 records created, 00:00.068
  should forbid actions :edit, :update, :destroy, and :delete_confirm (./spec/policies/comment_policy_spec.rb:26) – 2 records created, 00:00.069
  should permit mass assignment of :body_markdown, :commentable_id, :commentable_type, and :parent_id for action :create (./spec/policies/comment_policy_spec.rb:28) – 2 records created, 00:00.066
  should permit mass assignment of :body_markdown, :commentable_id, :commentable_type, and :parent_id for action :create (./spec/policies/comment_policy_spec.rb:48) – 2 records created, 00:00.067
  should permit mass assignment of :body_markdown and :receive_notifications for action :update (./spec/policies/comment_policy_spec.rb:49) – 2 records created, 00:00.085

GithubRepoPolicy (./spec/policies/github_repo_policy_spec.rb:3)
  should raise Pundit::NotAuthorizedError (./spec/policies/github_repo_policy_spec.rb:12) – 2 records created, 00:00.066
  should permit actions :create (./spec/policies/github_repo_policy_spec.rb:18) – 2 records created, 00:00.067
  should forbid actions :update (./spec/policies/github_repo_policy_spec.rb:19) – 2 records created, 00:00.069

HtmlVariantPolicy (./spec/policies/html_variant_policy_spec.rb:3)
  should forbid actions :index, :show, :edit, :update, and :create (./spec/policies/html_variant_policy_spec.rb:10) – 2 records created, 00:00.065

ReactionPolicy (./spec/policies/reaction_policy_spec.rb:3)
  should raise Pundit::NotAuthorizedError (./spec/policies/reaction_policy_spec.rb:11) – 2 records created, 00:00.070
  should permit actions :index and :create (./spec/policies/reaction_policy_spec.rb:17) – 2 records created, 00:00.069

FollowsApi (./spec/requests/follows_api_spec.rb:3)
  returns empty if user not signed in (./spec/requests/follows_api_spec.rb:14) – 8 records created, 00:00.339

NotificationsIndex (./spec/requests/notifications_spec.rb:3)
  renders page with the proper heading (./spec/requests/notifications_spec.rb:16) – 2 records created, 00:00.065
  renders the signup cue (./spec/requests/notifications_spec.rb:22) – 2 records created, 00:00.065

Tags (./spec/requests/tags_spec.rb:3)
  does not allow not logged-in users (./spec/requests/tags_spec.rb:18) – 1 record created, 00:00.015
  does not allow not logged-in users (./spec/requests/tags_spec.rb:61) – 1 record created, 00:00.015

all routes (./spec/routing/all_routes_spec.rb:3)
  renders a podcast index if there is a podcast with the slug successfully (./spec/routing/all_routes_spec.rb:7) – 1 record created, 00:00.006
  renders a user index if there is a user with the username successfully (./spec/routing/all_routes_spec.rb:15) – 2 records created, 00:00.066

Exporter::Articles (./spec/services/exporter/articles_spec.rb:3)
  accepts a user (./spec/services/exporter/articles_spec.rb:53) – 2 records created, 00:00.067
  names itself articles (./spec/services/exporter/articles_spec.rb:58) – 2 records created, 00:00.065

Exporter::Comments (./spec/services/exporter/comments_spec.rb:3)
  accepts a user (./spec/services/exporter/comments_spec.rb:37) – 2 records created, 00:00.066
  names itself comments (./spec/services/exporter/comments_spec.rb:42) – 2 records created, 00:00.066

Exporter::Service (./spec/services/exporter/service_spec.rb:4)
  accepts a user (./spec/services/exporter/service_spec.rb:41) – 2 records created, 00:00.063

ReadNotificationsService (./spec/services/read_notifications_service_spec.rb:3)
  returns read when #mark_as_read is called (./spec/services/read_notifications_service_spec.rb:12) – 2 records created, 00:00.068
```
