# event-prof

## sql.active_record

```bash
EVENT_PROF='sql.active_record' rspec

EventProf results for sql.active_record

Total time: 02:08.526 of 08:22.445 (25.58%)
Total events: 138916

Top 5 slowest suites (by time):

internal/users (./spec/controllers/internal_users_controller_spec.rb:3) – 00:16.199 (18566 / 11) of 00:49.429 (32.77%)
internal/users (./spec/requests/internal_users_spec.rb:3) – 00:05.489 (1378 / 11) of 00:17.321 (31.69%)
User (./spec/models/user_spec.rb:4) – 00:05.038 (5390 / 113) of 00:25.751 (19.56%)
Article (./spec/models/article_spec.rb:4) – 00:04.933 (5909 / 79) of 00:20.927 (23.57%)
Views an article (./spec/features/articles/user_visits_an_article_spec.rb:3) – 00:04.374 (336 / 2) of 00:04.154 (105.31%)
```

## factory.create

```bash
EVENT_PROF=factory.create rspec

[TEST PROF INFO] EventProf results for factory.create

Total time: 03:25.377 of 05:30.791 (62.09%)
Total events: 2752

Top 5 slowest suites (by time):

Reading list (./spec/features/user_views_a_reading_list_spec.rb:3) – 00:16.125 (105 / 4) of 00:16.613 (97.06%)
NotificationsIndex (./spec/requests/notifications_spec.rb:3) – 00:12.604 (175 / 35) of 00:17.663 (71.36%)
Notification (./spec/models/notification_spec.rb:3) – 00:10.169 (144 / 44) of 00:12.343 (82.38%)
Article (./spec/models/article_spec.rb:4) – 00:09.722 (113 / 79) of 00:13.341 (72.88%)
Comment (./spec/models/comment_spec.rb:3) – 00:09.304 (109 / 38) of 00:10.826 (85.95%)
```
