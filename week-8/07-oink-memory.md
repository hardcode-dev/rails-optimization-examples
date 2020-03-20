# Oink

## top worst requests on memory

https://github.com/noahd1/oink

```bash

bundle exec oink log/oink.log
---- MEMORY THRESHOLD ----
THRESHOLD: 75 MB

-- SUMMARY --
Worst Requests:
1. May 02 07:57:49, 1169940 KB, searches#show
2. May 02 08:17:08, 1169428 KB, searches#show
3. May 02 11:56:47, 1169428 KB, searches#show
4. May 02 12:45:10, 1169428 KB, searches#show
5. May 02 07:57:44, 1159188 KB, searches#show
6. May 02 09:33:57, 1159188 KB, searches#show
7. May 02 10:09:17, 1159188 KB, searches#show
8. May 02 13:19:01, 1159188 KB, searches#show
9. May 02 07:50:32, 1158676 KB, searches#show
10. May 02 09:22:54, 1158676 KB, searches#show

Worst Actions:
401, searches#show
89, home#index
79, new/timetables#city
77, api/internal/v1/searches#show
61, ahoy/visits#create
52, api/internal/v1/searches#create
45, integrations_api#sl_criteo_feed_GET
19, ahoy/events#create
12, create_search#sl__POST
11, reports/vuso_insurances#index
10, new/buses_to#city
9, new/checkout#passengers
9, completer#sl_suggest_GET
9, blog#show
8, searches#new_search
8, trips_api#sl_col_idsl_seat_map_new_GET
8, preorders/seats#index
7, api/internal/v1/cities#popular
6, api/internal/v1/cities#autocomplete
5, new/checkout#finish
5, new/accounts#show
4, new/checkout#pay
4, api/internal/v1/searches#preload
3, new/payments/portmone#create
3, trips_api#sl_col_idsl_required_fields_GET
3, blog#load_more
2, cities#old_show
2, drive/orders#show
2, new/directions#redirect
2, new/checkout#pay_online
2, home#status
2, information_api#sl_support_GET
2, api/internal/v1/checkout#create_preorder
2, timetables#station
2, api/internal/v1/trips#seat_maps
2, new/trips#show
2, api/internal/v1/directions#popular
2, new/accounts#login
2, engine#cities
1, new/support#support
1, new/search#index
1, settings_api#sl__GET
1, auth_api#sl_confirm_POST
1, new/pages#carriers
1, new/payments/liqpay#create
1, new/accounts#order_feedback
1, timetables#city
1, orders#pdf
1, api/internal/v1/passengers#detect_gender
1, faq#faq
1, api/internal/v1/orders#check_order_ticketed
1, drive/refund_applications#index
1, orders_api#sl__POST
1, api/internal/v1/preorders/seats#create
1, engine#trip_finders
1, searches#forward
1, auths#create
1, new/payments/map_by#create
1, cities#show
1, special_offers#index
1, orders_api#sl_col_ref_GET
1, new/carriers#show
1, api/internal/v1/checkout#preloader_status
1, new/pages#contacts
1, drive/bookings#show

Aggregated Totals:
Action                                      Max Mean  Min Total Number of requests
searches#show                               1169940 830798  77312 333150236 401
home#index                                  1082900 932400  131072  82983652  89
new/timetables#city                         1121004 204526  77316 16157600  79
api/internal/v1/searches#show               458928  175987  76920 13551012  77
new/buses_to#city                           1082900 972727  531776  9727272 10
api/internal/v1/searches#create             197636  137551  131072  7152676 52
ahoy/visits#create                          157388  98660 88124 6018268 61
integrations_api#sl_criteo_feed_GET         165688  126085  94212 5673832 45
new/checkout#passengers                     1085460 615594  91852 5540348 9
ahoy/events#create                          531776  152161  131072  2891072 19
reports/vuso_insurances#index               327680  232369  131072  2556060 11
new/directions#redirect                     1017364 1017364 1017364 2034728 2
create_search#sl__POST                      263172  159687  131072  1916248 12
preorders/seats#index                       1017364 220635  91852 1765084 8
searches#new_search                         786688  219603  91852 1756824 8
blog#load_more                              531776  531776  531776  1595328 3
completer#sl_suggest_GET                    196608  141277  91852 1271500 9
cities#old_show                             1017364 554608  91852 1109216 2
new/carriers#show                           1082900 1082900 1082900 1082900 1
new/support#support                         1017364 1017364 1017364 1017364 1
faq#faq                                     1017364 1017364 1017364 1017364 1
cities#show                                 1017364 1017364 1017364 1017364 1
new/pages#contacts                          1017364 1017364 1017364 1017364 1
trips_api#sl_col_idsl_seat_map_new_GET      196608  123866  77316 990932  8
api/internal/v1/cities#popular              131072  131072  131072  917504  7
blog#show                                   157388  99133 91852 892204  9
api/internal/v1/cities#autocomplete         131072  131072  131072  786432  6
engine#cities                               531776  331424  131072  662848  2
new/pages#carriers                          529216  529216  529216  529216  1
auths#create                                529216  529216  529216  529216  1
new/checkout#finish                         157388  104959  91852 524796  5
api/internal/v1/searches#preload            131072  131072  131072  524288  4
new/accounts#show                           91852 91852 91852 459260  5
new/checkout#pay                            91852 91852 91852 367408  4
information_api#sl_support_GET              196608  176998  157388  353996  2
trips_api#sl_col_idsl_required_fields_GET   143060  117776  79196 353328  3
new/payments/portmone#create                131072  104925  91852 314776  3
api/internal/v1/checkout#create_preorder    196608  151038  105468  302076  2
new/trips#show                              157388  144230  131072  288460  2
drive/orders#show                           131072  131072  131072  262144  2
new/checkout#pay_online                     131072  131072  131072  262144  2
home#status                                 131072  131072  131072  262144  2
api/internal/v1/trips#seat_maps             131072  131072  131072  262144  2
api/internal/v1/directions#popular          131072  131072  131072  262144  2
timetables#station                          157388  124620  91852 249240  2
drive/refund_applications#index             196608  196608  196608  196608  1
new/accounts#login                          91852 91852 91852 183704  2
timetables#city                             157388  157388  157388  157388  1
special_offers#index                        157388  157388  157388  157388  1
orders_api#sl__POST                         133488  133488  133488  133488  1
engine#trip_finders                         132100  132100  132100  132100  1
settings_api#sl__GET                        131072  131072  131072  131072  1
auth_api#sl_confirm_POST                    131072  131072  131072  131072  1
new/accounts#order_feedback                 131072  131072  131072  131072  1
api/internal/v1/passengers#detect_gender    131072  131072  131072  131072  1
api/internal/v1/orders#check_order_ticketed 131072  131072  131072  131072  1
api/internal/v1/preorders/seats#create      131072  131072  131072  131072  1
orders_api#sl_col_ref_GET                   131072  131072  131072  131072  1
api/internal/v1/checkout#preloader_status   131072  131072  131072  131072  1
drive/bookings#show                         131072  131072  131072  131072  1
orders#pdf                                  94404 94404 94404 94404 1
new/search#index                            91852 91852 91852 91852 1
new/payments/liqpay#create                  91852 91852 91852 91852 1
searches#forward                            91852 91852 91852 91852 1
new/payments/map_by#create                  91852 91852 91852 91852 1
```
