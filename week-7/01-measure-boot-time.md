## measure boot time
time bundle exec rake environment
bundle exec rake environment  7.95s user 4.61s system 100% cpu 12.518 total

## first spring run
time bundle exec bin/rake environment
Running via Spring preloader in process 14414
bundle exec bin/rake environment  0.49s user 0.14s system 4% cpu 13.280 total

## repeat spring run
time bundle exec bin/rake environment
Running via Spring preloader in process 14568
bundle exec bin/rake environment  0.51s user 0.17s system 58% cpu 1.154 total

## bootsnap
time bundle exec rake environment
bundle exec rake environment  3.78s user 1.08s system 101% cpu 4.804 total

