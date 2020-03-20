## top worst requests on ActiveRecord objects

```
bundle exec oink -r --format=v --threshold=10000 log/oink.log
---- OINK FOR ACTIVERECORD ----
THRESHOLD: 10000 Active Record objects per request

-- REQUESTS --
May 02 07:45:37 busfor-app-l0 rails[22443]: Oink Action: reports/vuso_insurances#index
May 02 07:45:37 busfor-app-l0 rails[22443]: Memory usage: 2670464 | PID: 22443
May 02 07:45:37 busfor-app-l0 rails[22443]: Instantiation Breakdown: Total: 18912 | Payment: 5726 | Ticket: 2866 | Insurance: 2863 | Passenger: 2860 | Booking: 2304 | Order: 2289 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 07:45:37 busfor-app-l0 rails[22443]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 08:30:31 busfor-app-l0 rails[12394]: Oink Action: reports/vuso_insurances#index
May 02 08:30:31 busfor-app-l0 rails[12394]: Memory usage: 2576508 | PID: 12394
May 02 08:30:31 busfor-app-l0 rails[12394]: Instantiation Breakdown: Total: 19132 | Payment: 5790 | Ticket: 2898 | Insurance: 2895 | Passenger: 2892 | Booking: 2334 | Order: 2319 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 08:30:31 busfor-app-l0 rails[12394]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 09:00:37 busfor-app-l0 rails[21612]: Oink Action: reports/vuso_insurances#index
May 02 09:00:37 busfor-app-l0 rails[21612]: Memory usage: 2664712 | PID: 21612
May 02 09:00:37 busfor-app-l0 rails[21612]: Instantiation Breakdown: Total: 19311 | Payment: 5844 | Ticket: 2925 | Insurance: 2922 | Passenger: 2919 | Booking: 2356 | Order: 2341 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 09:00:37 busfor-app-l0 rails[21612]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 09:30:38 busfor-app-l0 rails[5378]: Oink Action: reports/vuso_insurances#index
May 02 09:30:38 busfor-app-l0 rails[5378]: Memory usage: 2756240 | PID: 5378
May 02 09:30:38 busfor-app-l0 rails[5378]: Instantiation Breakdown: Total: 19456 | Payment: 5890 | Ticket: 2948 | Insurance: 2945 | Passenger: 2942 | Booking: 2371 | Order: 2356 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 09:30:38 busfor-app-l0 rails[5378]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 09:45:34 busfor-app-l0 rails[14717]: Oink Action: reports/vuso_insurances#index
May 02 09:45:34 busfor-app-l0 rails[14717]: Memory usage: 2548364 | PID: 14717
May 02 09:45:34 busfor-app-l0 rails[14717]: Instantiation Breakdown: Total: 19545 | Payment: 5916 | Ticket: 2961 | Insurance: 2958 | Passenger: 2955 | Booking: 2383 | Order: 2368 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 09:45:34 busfor-app-l0 rails[14717]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 10:00:39 busfor-app-l0 rails[17061]: Oink Action: reports/vuso_insurances#index
May 02 10:00:39 busfor-app-l0 rails[17061]: Memory usage: 2593180 | PID: 17061
May 02 10:00:39 busfor-app-l0 rails[17061]: Instantiation Breakdown: Total: 19620 | Payment: 5938 | Ticket: 2972 | Insurance: 2969 | Passenger: 2966 | Booking: 2393 | Order: 2378 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 10:00:39 busfor-app-l0 rails[17061]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 10:15:35 busfor-app-l0 rails[25517]: Oink Action: reports/vuso_insurances#index
May 02 10:15:35 busfor-app-l0 rails[25517]: Memory usage: 2590620 | PID: 25517
May 02 10:15:35 busfor-app-l0 rails[25517]: Instantiation Breakdown: Total: 19646 | Payment: 5946 | Ticket: 2976 | Insurance: 2973 | Passenger: 2970 | Booking: 2396 | Order: 2381 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 10:15:35 busfor-app-l0 rails[25517]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 11:00:36 busfor-app-l0 rails[11287]: Oink Action: reports/vuso_insurances#index
May 02 11:00:36 busfor-app-l0 rails[11287]: Memory usage: 2601344 | PID: 11287
May 02 11:00:36 busfor-app-l0 rails[11287]: Instantiation Breakdown: Total: 19869 | Payment: 6012 | Ticket: 3009 | Insurance: 3006 | Passenger: 3003 | Booking: 2425 | Order: 2410 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 11:00:36 busfor-app-l0 rails[11287]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 11:45:37 busfor-app-l0 rails[30544]: Oink Action: reports/vuso_insurances#index
May 02 11:45:37 busfor-app-l0 rails[30544]: Memory usage: 2734968 | PID: 30544
May 02 11:45:37 busfor-app-l0 rails[30544]: Instantiation Breakdown: Total: 20101 | Payment: 6084 | Ticket: 3045 | Insurance: 3042 | Passenger: 3039 | Booking: 2451 | Order: 2436 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 11:45:37 busfor-app-l0 rails[30544]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 12:00:46 busfor-app-l0 rails[8389]: Oink Action: reports/vuso_insurances#index
May 02 12:00:46 busfor-app-l0 rails[8389]: Memory usage: 2601184 | PID: 8389
May 02 12:00:46 busfor-app-l0 rails[8389]: Instantiation Breakdown: Total: 20218 | Payment: 6122 | Ticket: 3064 | Insurance: 3061 | Passenger: 3058 | Booking: 2462 | Order: 2447 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 12:00:46 busfor-app-l0 rails[8389]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 12:30:50 busfor-app-l0 rails[20243]: Oink Action: reports/vuso_insurances#index
May 02 12:30:50 busfor-app-l0 rails[20243]: Memory usage: 2724080 | PID: 20243
May 02 12:30:50 busfor-app-l0 rails[20243]: Instantiation Breakdown: Total: 20355 | Payment: 6164 | Ticket: 3085 | Insurance: 3082 | Passenger: 3079 | Booking: 2478 | Order: 2463 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 12:30:50 busfor-app-l0 rails[20243]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 12:44:17 busfor-app-l0 rails[32342]: Oink Action: searches#new_search
May 02 12:44:17 busfor-app-l0 rails[32342]: Memory usage: 3097468 | PID: 32342
May 02 12:44:17 busfor-app-l0 rails[32342]: Instantiation Breakdown: Total: 179038 | City: 178510 | AbVariant: 392 | AbTest: 126 | Domain: 3 | AffiliateKey: 2 | Operator: 1 | TimetableTrip: 1 | ServiceConfig: 1 | Direction: 1 | Visit: 1
May 02 12:44:17 busfor-app-l0 rails[32342]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 12:45:43 busfor-app-l0 rails[27602]: Oink Action: reports/vuso_insurances#index
May 02 12:45:43 busfor-app-l0 rails[27602]: Memory usage: 2588660 | PID: 27602
May 02 12:45:43 busfor-app-l0 rails[27602]: Instantiation Breakdown: Total: 20393 | Payment: 6176 | Ticket: 3091 | Insurance: 3088 | Passenger: 3085 | Booking: 2482 | Order: 2467 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 12:45:43 busfor-app-l0 rails[27602]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 13:00:41 busfor-app-l0 rails[3087]: Oink Action: reports/vuso_insurances#index
May 02 13:00:41 busfor-app-l0 rails[3087]: Memory usage: 2746848 | PID: 3087
May 02 13:00:41 busfor-app-l0 rails[3087]: Instantiation Breakdown: Total: 20540 | Payment: 6222 | Ticket: 3114 | Insurance: 3111 | Passenger: 3108 | Booking: 2498 | Order: 2483 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 13:00:41 busfor-app-l0 rails[3087]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 14:15:35 busfor-app-l0 rails[8191]: Oink Action: reports/vuso_insurances#index
May 02 14:15:35 busfor-app-l0 rails[8191]: Memory usage: 2634300 | PID: 8191
May 02 14:15:35 busfor-app-l0 rails[8191]: Instantiation Breakdown: Total: 20897 | Payment: 6328 | Ticket: 3167 | Insurance: 3164 | Passenger: 3161 | Booking: 2544 | Order: 2529 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 14:15:35 busfor-app-l0 rails[8191]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 14:30:36 busfor-app-l0 rails[14297]: Oink Action: reports/vuso_insurances#index
May 02 14:30:36 busfor-app-l0 rails[14297]: Memory usage: 2717648 | PID: 14297
May 02 14:30:36 busfor-app-l0 rails[14297]: Instantiation Breakdown: Total: 20968 | Payment: 6350 | Ticket: 3178 | Insurance: 3175 | Passenger: 3172 | Booking: 2552 | Order: 2537 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 14:30:36 busfor-app-l0 rails[14297]: Oink Log Entry Complete
---------------------------------------------------------------------
May 02 14:45:41 busfor-app-l0 rails[17944]: Oink Action: reports/vuso_insurances#index
May 02 14:45:41 busfor-app-l0 rails[17944]: Memory usage: 2631960 | PID: 17944
May 02 14:45:41 busfor-app-l0 rails[17944]: Instantiation Breakdown: Total: 21036 | Payment: 6370 | Ticket: 3188 | Insurance: 3185 | Passenger: 3182 | Booking: 2561 | Order: 2546 | Domain: 2 | AffiliateKey: 1 | ServiceConfig: 1
May 02 14:45:41 busfor-app-l0 rails[17944]: Oink Log Entry Complete
---------------------------------------------------------------------

-- SUMMARY --
Worst Requests:
1. May 02 12:44:17, 179038, searches#new_search
2. May 02 14:45:41, 21036, reports/vuso_insurances#index
3. May 02 14:30:36, 20968, reports/vuso_insurances#index
4. May 02 14:15:35, 20897, reports/vuso_insurances#index
5. May 02 13:00:41, 20540, reports/vuso_insurances#index
6. May 02 12:45:43, 20393, reports/vuso_insurances#index
7. May 02 12:30:50, 20355, reports/vuso_insurances#index
8. May 02 12:00:46, 20218, reports/vuso_insurances#index
9. May 02 11:45:37, 20101, reports/vuso_insurances#index
10. May 02 11:00:36, 19869, reports/vuso_insurances#index

Worst Actions:
16, reports/vuso_insurances#index
1, searches#new_search
```
