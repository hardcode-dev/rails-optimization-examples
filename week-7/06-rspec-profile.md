# rspec --profile

```shell
rspec --profile
```

Можно в принципе ту же информацию взять из лога `parallel_test`, не в таком удобном виде, зато быстрее.

```
Top 10 slowest examples (71.59 seconds, 12.1% of total time):
  Reading list without tags when large readinglist shows the large reading list
    12.89 seconds ./spec/features/user_views_a_reading_list_spec.rb:20
  Reading list without tags when large readinglist shows the large readinglist after user clicks the show more button
    12.34 seconds ./spec/features/user_views_a_reading_list_spec.rb:25
  internal/users when deleting user raises a 'record not found' error after deletion
    6.4 seconds ./spec/controllers/internal_users_controller_spec.rb:89
  internal/users when deleting user expect flash message
    6.22 seconds ./spec/controllers/internal_users_controller_spec.rb:94
  internal/users when managing activty and roles adds comment ban role
    6.17 seconds ./spec/controllers/internal_users_controller_spec.rb:45
  internal/users when banishing user reassigns username and removes profile info
    5.63 seconds ./spec/controllers/internal_users_controller_spec.rb:123
  internal/users when banishing user deletes user content
    5.57 seconds ./spec/controllers/internal_users_controller_spec.rb:137
  internal/users when banishing user adds banned role
    5.47 seconds ./spec/controllers/internal_users_controller_spec.rb:131
  internal/users when banishing user removes all follow relationships
    5.46 seconds ./spec/controllers/internal_users_controller_spec.rb:144
  EmailLogic#analyze when a user's open_percentage is high evaluates that user is ready to receive an email
    5.44 seconds ./spec/labor/email_logic_spec.rb:65

Top 10 slowest example groups:
  Reading list
    6.81 seconds average (27.25 seconds / 4 examples) ./spec/features/user_views_a_reading_list_spec.rb:3
  internal/users
    5.52 seconds average (60.67 seconds / 11 examples) ./spec/controllers/internal_users_controller_spec.rb:3
  Creating Comment
    3.2 seconds average (9.61 seconds / 3 examples) ./spec/features/comments/user_fills_out_comment_spec.rb:3
  Deleting Comment
    2.92 seconds average (2.92 seconds / 1 example) ./spec/features/comments/user_delete_a_comment_spec.rb:3
  Organization setting page(/settings/organization)
    2.8 seconds average (5.6 seconds / 2 examples) ./spec/features/organization/user_updates_org_settings_spec.rb:3
  Visiting article comments
    2.66 seconds average (15.93 seconds / 6 examples) ./spec/features/comments/user_views_article_comments_spec.rb:3
  Editing A Comment
    2.47 seconds average (7.4 seconds / 3 examples) ./spec/features/comments/user_edits_a_comment_spec.rb:3
  Admin creates new event
    2.23 seconds average (4.45 seconds / 2 examples) ./spec/features/admin_creates_new_event_spec.rb:4
  PodcastFeed
    1.96 seconds average (3.91 seconds / 2 examples) ./spec/labor/podcast_feed_spec.rb:8
  User visits a homepage
    1.84 seconds average (7.35 seconds / 4 examples) ./spec/features/homepage/user_visits_homepage_articles_spec.rb:3

Finished in 9 minutes 49 seconds (files took 11.33 seconds to load)
```


## Лог parallel_test
```
spec/decorators/comment_decorator_spec.rb:0.4910280001349747
spec/features/articles/user_visits_articles_by_tag_spec.rb:28.241394999902695
spec/features/comments/user_delete_a_comment_spec.rb:5.697956999996677
spec/features/comments/user_views_a_comment_spec.rb:4.667678999947384
spec/features/podcasts/user_visits_podcast_page_spec.rb:1.103999000042677
spec/features/podcasts/user_visits_podcasts_root_page_spec.rb:0.6797710000537336
spec/features/user/view_user_index_spec.rb:17.79575000004843
spec/features/user_fills_out_givaway_form_spec.rb:2.0236750000622123
spec/jobs/follows/create_chat_channel_job_spec.rb:1.8560820000711828
spec/jobs/follows/touch_follower_job_spec.rb:0.27001099986955523
spec/labor/color_from_image_spec.rb:0.014297000132501125
spec/labor/coupon_generator_spec.rb:0.045975999906659126
spec/labor/generated_image_spec.rb:1.349214999936521
spec/labor/mailchimp_bot_spec.rb:2.3838980000000447
spec/labor/markdown_parser_spec.rb:0.5918109999038279
spec/labor/twilio_token_spec.rb:0.12831599987111986
spec/labor/unread_notifications_emailer_spec.rb:0.13884400017559528
spec/liquid_tags/codepen_tag_spec.rb:0.04259199998341501
spec/liquid_tags/gist_tag_spec.rb:0.028279999969527125
spec/liquid_tags/js_fiddle_tag_spec.rb:0.049208000069484115
spec/liquid_tags/parler_tag_spec.rb:0.01369299995712936
spec/liquid_tags/replit_tag_spec.rb:0.015783999813720584
spec/liquid_tags/spotify_tag_spec.rb:0.017656999872997403
spec/liquid_tags/tag_tag_spec.rb:0.08918799995444715
spec/liquid_tags/tweet_tag_spec.rb:0.24767299997620285
spec/liquid_tags/vimeo_tag_spec.rb:0.04199600010178983
spec/mailers/notify_mailer_spec.rb:6.672729999991134
spec/models/badge_achievement_spec.rb:1.2386759999208152
spec/models/buffer_update_spec.rb:3.345564999850467
spec/models/comment_spec.rb:18.41960299992934
spec/models/html_variant_success_spec.rb:0.0002569998614490032
spec/models/note_spec.rb:0.057493000058457255
spec/models/reaction_destroy_spec.rb:0.5461989999748766
spec/models/tag_spec.rb:0.1594869999680668
spec/observers/article_observer_spec.rb:0.4714360001962632
spec/policies/chat_channel_policy_spec.rb:1.112878000130877
spec/policies/html_variant_policy_spec.rb:0.34622299997135997
spec/policies/image_upload_policy_spec.rb:0.046319999964907765
spec/policies/reaction_policy_spec.rb:0.6559719999786466
spec/policies/stripe_active_card_policy_spec.rb:0.0615429999306798
spec/policies/stripe_subscription_policy_spec.rb:0.04590300004929304
spec/policies/tag_policy_spec.rb:0.04230399988591671
spec/requests/additional_content_boxes_spec.rb:2.2377270001452416
spec/requests/api_secrets_destroy_spec.rb:1.164741000160575
spec/requests/comments_api_spec.rb:1.7195700001902878
spec/requests/feedback_messages_create_spec.rb:0.762311999918893
spec/requests/followed_articles_spec.rb:0.8792729999404401
spec/requests/follows_create_spec.rb:4.088761999970302
spec/requests/follows_show_spec.rb:2.604520000051707
spec/requests/internal_feedback_messages_spec.rb:2.6373750001657754
spec/requests/internal_users_spec.rb:8.471481000073254
spec/requests/messages_spec.rb:0.8550209999084473
spec/requests/notifications_spec.rb:33.74292800016701
spec/requests/reactions_api_spec.rb:1.5928340000100434
spec/requests/reactions_spec.rb:6.731501000002027
spec/requests/reading_list_index_spec.rb:0.4192929998971522
spec/requests/social_previews_spec.rb:0.6596089999657124
spec/requests/stripe_active_cards_spec.rb:5.22042699996382
spec/requests/stripe_cancellations_spec.rb:0.696936999913305
spec/requests/tags_spec.rb:3.771659000078216
spec/requests/user_organization_spec.rb:4.5598949999548495
spec/requests/user_profile_spec.rb:2.2302600000984967
spec/requests/videos_spec.rb:0.9046120001003146
spec/services/suggester/articles/classic_spec.rb:2.0130809999536723
spec/decorators/podcast_episode_decorator_spec.rb:0.1486810001078993
spec/features/comments/user_fills_out_comment_spec.rb:27.21574700018391
spec/features/homepage/user_visits_homepage_spec.rb:13.515628999797627
spec/features/user_views_a_reading_list_spec.rb:41.54459000006318
spec/features/user_visits_a_comments_page_spec.rb:2.450946999946609
spec/jobs/articles/bust_cache_job_spec.rb:0.3921680001076311
spec/jobs/users/touch_job_spec.rb:0.23320399993099272
spec/labor/article_suggester_spec.rb:2.7788269999437034
spec/labor/bufferizer_spec.rb:1.0826489999890327
spec/labor/emoji_converter_spec.rb:0.016715999925509095
spec/labor/language_detector_spec.rb:0.29040200007148087
spec/labor/markdown_fixer_spec.rb:0.1080510001629591
spec/labor/mentorship_matcher_spec.rb:1.4137339999433607
spec/lib/acts_as_taggable_on/tag_parser_spec.rb:0.14902999997138977
spec/liquid_tags/github_tag/github_issue_tag_spec.rb:0.12171999993734062
spec/liquid_tags/github_tag/github_readme_tag_spec.rb:0.11214299988932908
spec/liquid_tags/instagram_tag_spec.rb:0.02842599991708994
spec/liquid_tags/link_tag_spec.rb:2.046169999986887
spec/liquid_tags/raw_tag_spec.rb:0.008840000024065375
spec/liquid_tags/speakerdeck_tag_spec.rb:0.015452000079676509
spec/mailers/membership_mailer_spec.rb:0.6837619999423623
spec/models/api_secret_spec.rb:0.033826999831944704
spec/models/article_destroy_spec.rb:1.8980590000282973
spec/models/chat_channel_spec.rb:1.6523179998621345
spec/models/feedback_message_spec.rb:0.11135799996554852
spec/models/github_issue_spec.rb:0.05277800001204014
spec/models/html_variant_spec.rb:1.2807680000551045
spec/models/mention_spec.rb:4.815685999812558
spec/models/mentor_relationship_spec.rb:3.4721770000178367
spec/models/notification_spec.rb:24.803226999938488
spec/models/organization_spec.rb:1.8152580000460148
spec/models/page_view_spec.rb:0.0002560000866651535
spec/models/reaction_create_spec.rb:3.2092699999921024
spec/models/search_keyword_spec.rb:0.14398299995809793
spec/models/tweet_spec.rb:0.2998200000729412
spec/observers/comment_observer_spec.rb:1.1974520001094788
spec/policies/admin_policy_spec.rb:0.03766799997538328
spec/policies/api_secret_policy_spec.rb:0.9389279999304563
spec/policies/comment_policy_spec.rb:2.3584100001025945
spec/policies/follow_policy_spec.rb:0.04455300001427531
spec/policies/video_policy_spec.rb:0.030900999903678894
spec/requests/articles_create_spec.rb:2.391018999973312
spec/requests/articles_update_spec.rb:3.4864189999643713
spec/requests/blocks_spec.rb:1.7916149999946356
spec/requests/chat_channels_spec.rb:10.480065000010654
spec/requests/comments_spec.rb:5.33414199994877
spec/requests/delayed_job_spec.rb:1.0669019999913871
spec/requests/ga_events_spec.rb:0.08096099994145334
spec/requests/html_variants_spec.rb:4.721320000011474
spec/requests/internal_buffer_updates_spec.rb:4.505233000032604
spec/requests/internal_events_spec.rb:0.6974460000637919
spec/requests/page_views_spec.rb:6.097430000081658
spec/requests/podcast_episodes_api_spec.rb:9.772464000154287
spec/requests/rss_feed_spec.rb:0.8814459999557585
spec/requests/stripe_subscriptions_spec.rb:10.456605999963358
spec/requests/tag_adjustments_spec.rb:3.4816120001487434
spec/requests/video_states_update_spec.rb:1.3723369999788702
spec/services/membership_service_spec.rb:2.544988000066951
spec/services/moderation_service_spec.rb:0.29870699997991323
spec/services/read_notifications_service_spec.rb:0.1173549999948591
spec/services/tag_adjustment_update_service_spec.rb:0.0003659999929368496
spec/views/articles_spec.rb:2.5098700001835823
spec/features/articles/user_edits_an_article_spec.rb:17.418169000186026
spec/features/articles/user_visits_an_article_spec.rb:4.894931999966502
spec/features/homepage/user_visits_homepage_articles_spec.rb:14.73956899996847
spec/features/link_for_tags_in_posts_in_notifications_spec.rb:0.7828969999682158
spec/features/organization/user_updates_org_settings_spec.rb:8.630824999883771
spec/features/podcasts/user_visits_podcast_episode_spec.rb:1.350772000150755
spec/features/user_uses_the_editor_spec.rb:2.6672139998991042
spec/jobs/articles/score_calc_job_spec.rb:0.010143000166863203
spec/jobs/follows/send_email_notification_job_spec.rb:1.6930769998580217
spec/labor/badge_rewarder_spec.rb:7.9441680000163615
spec/labor/cache_buster_spec.rb:1.5978790000081062
spec/labor/flare_tag_spec.rb:2.4323650000151247
spec/labor/follow_checker_spec.rb:0.5903699998743832
spec/labor/podcast_feed_spec.rb:5.411118000047281
spec/labor/reaction_image_spec.rb:0.00725499982945621
spec/labor/reading_list_spec.rb:2.939154999796301
spec/liquid_tags/glitch_tag_spec.rb:0.11320399981923401
spec/liquid_tags/null_tag_spec.rb:0.010937999933958054
spec/liquid_tags/podcast_tag_spec.rb:0.3361400000285357
spec/liquid_tags/runkit_tag_spec.rb:0.010123999789357185
spec/liquid_tags/stackblitz_tag_spec.rb:0.037924000062048435
spec/liquid_tags/user_tag_spec.rb:0.2986270000692457
spec/models/article_spec.rb:28.687336000148207
spec/models/badge_spec.rb:0.15597599977627397
spec/models/block_spec.rb:0.554986999835819
spec/models/follow_spec.rb:4.414978000102565
spec/models/github_repo_spec.rb:1.8815999999642372
spec/models/html_variant_trial_spec.rb:0.00038899993523955345
spec/models/identity_spec.rb:0.5110029999632388
spec/models/message_spec.rb:5.157373999943957
spec/models/push_notification_subscription_spec.rb:1.7580049999523908
spec/models/reaction_spec.rb:11.39035000000149
spec/models/tag_adjustment_spec.rb:8.114727000007406
spec/policies/article_policy_spec.rb:2.760004000039771
spec/policies/chat_channel_membership_policy_spec.rb:0.5974419999402016
spec/policies/organization_policy_spec.rb:0.3284490001387894
spec/policies/user_policy_spec.rb:0.18934000004082918
spec/requests/article_mutes_spec.rb:0.8395209999289364
spec/requests/async_info_spec.rb:0.42947099986486137
spec/requests/comments_destroy_spec.rb:3.420583999948576
spec/requests/comments_update_spec.rb:1.0965080000460148
spec/requests/email_subscriptions_spec.rb:0.6167910001240671
spec/requests/follows_api_spec.rb:3.4015199998393655
spec/requests/follows_update_spec.rb:0.7829219999257475
spec/requests/html_variant_trials_spec.rb:0.7408590000122786
spec/requests/image_uploads_spec.rb:0.696055999957025
spec/requests/internal_reactions_spec.rb:3.7547969999723136
spec/requests/moderations_spec.rb:6.620267000049353
spec/requests/notification_counts_spec.rb:0.01273999991826713
spec/requests/organizations_update_spec.rb:1.1051839999854565
spec/requests/podcast_episodes_index_spec.rb:0.26612599985674024
spec/requests/push_notification_subscriptions_spec.rb:0.34239999996498227
spec/requests/pusher_auth_spec.rb:0.015017000027000904
spec/requests/stories_index_spec.rb:1.574013999896124
spec/requests/stories_show_spec.rb:14.34023500001058
spec/requests/twilio_tokens_spec.rb:0.997965999878943
spec/requests/user_settings_spec.rb:19.20488899992779
spec/requests/users_api_spec.rb:0.6597849999088794
spec/requests/users_onboarding_spec.rb:0.32253600005060434
spec/services/exporter/comments_spec.rb:4.366922999965027
spec/services/rss_reader_spec.rb:13.45943500008434
spec/services/suggester/users/recent_spec.rb:0.8944029998965561
spec/controllers/articles_controller_spec.rb:3.6114049998577684
spec/controllers/internal_users_controller_spec.rb:96.81751299998723
spec/features/admin_creates_new_event_spec.rb:6.017168999882415
spec/features/articles/user_deletes_an_article_spec.rb:1.025686000008136
spec/features/banned_user_interactions_spec.rb:0.2178309999871999
spec/features/comments/user_edits_a_comment_spec.rb:17.001231000060216
spec/features/comments/user_views_article_comments_spec.rb:29.931033000117168
spec/features/organization/user_views_an_organization_spec.rb:17.469786999979988
spec/features/user/view_user_comments_spec.rb:2.92239600000903
spec/features/user_logs_in_with_twitter_spec.rb:1.4290299999993294
spec/jobs/reactions/bust_homepage_cache_job_spec.rb:1.4031350000295788
spec/jobs/reactions/bust_reactable_cache_job_spec.rb:1.3810159999411553
spec/jobs/reactions/update_reactable_job_spec.rb:1.520362000213936
spec/labor/assign_tag_moderator_spec.rb:1.2577049999963492
spec/labor/email_digest_spec.rb:0.9959360000211746
spec/labor/email_logic_spec.rb:14.641131999902427
spec/labor/hex_comparer_spec.rb:0.020954000065103173
spec/labor/rate_limit_checker_spec.rb:4.1335690000560135
spec/labor/user_similarity_spec.rb:1.2630159999243915
spec/liquid_tags/blogcast_tag_spec.rb:0.014053999911993742
spec/liquid_tags/codesandbox_tag_spec.rb:0.04322099988348782
spec/liquid_tags/dev_comment_tag_spec.rb:1.1277979998849332
spec/liquid_tags/slideshare_tag_spec.rb:0.007209999952465296
spec/liquid_tags/soundcloud_tag_spec.rb:0.01734799984842539
spec/liquid_tags/youtube_tag_spec.rb:0.035253999987617135
spec/mailers/scholarship_mailer_spec.rb:0.2839049999602139
spec/models/display_ad_spec.rb:0.23870099987834692
spec/models/event_spec.rb:0.07626799982972443
spec/models/job_opportunity_spec.rb:0.02687199995853007
spec/models/podcast_episode_spec.rb:0.7525730000343174
spec/models/rating_vote_spec.rb:2.5446319999173284
spec/models/user_spec.rb:19.39363200007938
spec/policies/block_policy_spec.rb:0.08184199989773333
spec/policies/github_repo_policy_spec.rb:0.7336409999988973
spec/requests/api/v0/github_repos_spec.rb:0.43465299997478724
spec/requests/api_secrets_create_spec.rb:0.5516230000648648
spec/requests/articles_api_spec.rb:7.15016600000672
spec/requests/badges_spec.rb:0.08457299997098744
spec/requests/buffered_articles_spec.rb:0.3117630002088845
spec/requests/chat_channel_memberships_spec.rb:3.237267999909818
spec/requests/comment_mutes_spec.rb:5.41223799996078
spec/requests/comments_create_spec.rb:0.48046099999919534
spec/requests/dashboard_spec.rb:3.3314209999516606
spec/requests/editor_spec.rb:0.6925389999523759
spec/requests/events_spec.rb:0.12436899985186756
spec/requests/github_repos_spec.rb:0.9137629999313504
spec/requests/html_variant_successes_spec.rb:0.5182020000647753
spec/requests/live_articles_spec.rb:0.27946200012229383
spec/requests/pages_spec.rb:0.7206860000733286
spec/requests/rating_votes_spec.rb:0.9900210001505911
spec/requests/registration_spec.rb:0.29803499998524785
spec/requests/tags_api_spec.rb:0.07811099989339709
spec/routing/all_routes_spec.rb:0.12682999996468425
spec/services/article_with_video_creation_service_spec.rb:0.17911599995568395
spec/services/exporter/articles_spec.rb:1.6733180000446737
spec/services/exporter/service_spec.rb:2.1417050000745803
spec/services/moderator/manage_activity_and_roles_spec.rb:0.8251859999727458
spec/services/suggester/articles/boosted_spec.rb:0.35714600002393126
spec/services/suggester/users/sidebar_spec.rb:0.9680749999824911
spec/services/tag_adjustment_creation_service_spec.rb:1.0828629999887198
spec/views/email_subscriptions/unsubscribe.html.erb_spec.rb:0.011312000220641494
```
