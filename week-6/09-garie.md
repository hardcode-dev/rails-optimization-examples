https://developers.google.com/speed/docs/insights/v4/first-app

```
git clone git@github.com:boyney123/garie.git
cd garie
# change PagespeedInsightsKey in start.sh
# config garie-config.json
sh start.sh
```

```
0 */4 * * * - Every 4 hours
* 30 * * * * - At 30 minutes
0 */30 * * * * - Every 30 minutes
0 */30 9-17 * * * - Every 30 minutes between 9:00am and 5:00pm
00 30 11 * * 1-5 - Mon-Fri at 11:30am
```

Grafana Dashboard: `http://localhost:3003` # перенастроил с 80
Lighthouse Reports: `http://localhost:3000/reports`
Browsertime Videos: `http://localhost:3001/reports`
Chronograf against InfluxDB: `http://localhost:8888`

