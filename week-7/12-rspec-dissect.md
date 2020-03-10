# rspec-dissect

```bash
RD_PROF=1 rspec
[TEST PROF INFO] RSpecDissect report

Total time: 06:11.466

Total `let` time: 02:33.211
Total `before(:each)` time: 02:53.533

Top 5 slowest suites (by `let` time):

Notification (./spec/models/notification_spec.rb:3) – 00:09.472 of 00:12.371 (44)
 ↳ article – 38
 ↳ user2 – 30
 ↳ user – 29
NotificationsIndex (./spec/requests/notifications_spec.rb:3) – 00:08.279 of 00:16.823 (35)
 ↳ user – 49
 ↳ dev_account – 33
 ↳ comment – 17
Comment (./spec/models/comment_spec.rb:3) – 00:07.951 of 00:09.486 (38)
 ↳ comment – 48
 ↳ video_comment – 16
 ↳ user – 12
User (./spec/models/user_spec.rb:4) – 00:06.489 of 00:11.805 (113)
 ↳ user – 206
 ↳ subject – 24
 ↳ article – 6
Article (./spec/models/article_spec.rb:4) – 00:06.098 of 00:13.667 (79)
 ↳ article – 87
 ↳ subject – 17
 ↳ test_article – 13

Top 5 slowest suites (by `before(:each)` time):

internal/users (./spec/controllers/internal_users_controller_spec.rb:3) – 00:39.235 of 00:41.514 (11)
Reading list (./spec/features/user_views_a_reading_list_spec.rb:3) – 00:14.997 of 00:15.895 (4)
Visiting article comments (./spec/features/comments/user_views_article_comments_spec.rb:3) – 00:10.137 of 00:12.272 (6)
NotificationsIndex (./spec/requests/notifications_spec.rb:3) – 00:09.928 of 00:16.823 (35)
User index (./spec/features/user/view_user_index_spec.rb:3) – 00:06.213 of 00:08.154 (11)
```
