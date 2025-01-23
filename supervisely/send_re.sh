#!/bin/bash

for i in {1..2}
do
curl 'https://dev.supervisely.com/api/projects/18526/datasets/61128/images/19483077/figures/smartAnnotation' \
  -H 'authority: dev.supervisely.com' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7' \
  -H 'authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywibG9naW4iOiJjeG50IiwibmFtZSI6IlBhdmVsIEJhcnRzaXRzIiwiYWN0aXZhdGVUb2tlbiI6bnVsbCwiZW1haWwiOiJwYXZlbGJhcnRzaXRzQGdtYWlsLmNvbSIsImlzVmVyaWZpZWQiOnRydWUsImxhc3RMb2dpbiI6IjIwMjMtMDMtMTRUMDk6MjY6NDguMzYyWiIsImxvZ2lucyI6Mjk2LCJkaXNhYmxlZCI6ZmFsc2UsImNyZWF0ZWRBdCI6IjIwMjAtMDQtMTVUMTA6NTA6NDEuOTI2WiIsInVwZGF0ZWRBdCI6IjIwMjMtMDMtMjFUMDk6MTE6MTYuODUzWiIsImlzUmVzdHJpY3RlZCI6ZmFsc2UsImRpc2FibGVkQnlVc2VyIjpmYWxzZSwidXBkYXRlc01haWxpbmdFbmFibGVkIjp0cnVlLCJ0ZXJtc0FjY2VwdGVkIjp0cnVlLCJncm91cCI6eyJpZCI6MywiZGlzYWJsZWQiOmZhbHNlLCJ0aXRsZSI6ImRlbmlzIn0sImdyb3VwcyI6WzMsNyw4LDEyLDIyLDY0LDIyOCwyMzQsMjQwLDI0NSwyNDksMjkxLDI5NSwzMTMsNDMzXSwid29ya3NwYWNlIjp7ImlkIjo0OTQsInRpdGxlIjoiZW1wdHkiLCJncm91cElkIjozLCJ1c2VySWQiOjEsImNyZWF0ZWRBdCI6IjIwMjItMDYtMjRUMTA6Mzc6NTAuNzg5WiIsInVwZGF0ZWRBdCI6IjIwMjItMDYtMjRUMTA6Mzc6NTAuNzg5WiIsImRpc2FibGVkIjpmYWxzZSwiZGVzY3JpcHRpb24iOiIiLCJkaXNhYmxlZEJ5VXNlciI6ZmFsc2UsImlzUHVibGljIjpmYWxzZSwicHVibGlzaGVkQXQiOm51bGwsInJlYWRtZSI6bnVsbCwicGVuZGluZ1JlbW92YWwiOmZhbHNlLCJoaWRkZW4iOmZhbHNlfSwiYXBpVG9rZW4iOiJOUE5ZMk5UZU90cWdqSTVJSGdWWmdIZEJncFlhMDk1eEs4aGFWZ1BZYXV1Slhhb0lxM0ppdDdUQWJpUUxUWmswOEFjYUpSV3F0TnBJUTJzRHRzb2VFTUNzSGpLbGYxVE5HRFNleGV5bGlpQXBTVG9TWWJVMkNIREZENTBJWXNkUyIsImlzQW5hbHlzdCI6dHJ1ZSwiaXNSb290Ijp0cnVlLCJpYXQiOjE2NzkzOTExNTksImV4cCI6MTY3OTk5NTk1OSwianRpIjoiZGZmNzJhZDMtN2UzMS00YmM0LWE0NDMtYTg1NjQ0MDY0OTk2In0.9lhecTdzxp4AinPZf3xFdNqIbZ5tKypOLq41qNoa_wU' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json;charset=UTF-8' \
  -H 'cookie: drift_aid=321bc7e9-b0ef-41c4-9930-4e6fcf9c8f47; driftt_aid=321bc7e9-b0ef-41c4-9930-4e6fcf9c8f47; x-api-key=NPNY2NTeOtqgjI5IHgVZgHdBgpYa095xK8haVgPYauuJXaoIq3Jit7TAbiQLTZk08AcaJRWqtNpIQ2sDtsoeEMCsHjKlf1TNGDSexeyliiApSToSYbU2CHDFD50IYsdS; __cuid=1b974a8b8e7b48fb952c8f43a64c9c9a; amp_fef1e8=eb3d622b-b8a9-4353-933d-c8d10d7a6d71R...1gs6onnvq.1gs6onsum.hp.2l.ke; drift_campaign_refresh=c028ce02-c2bb-4f0f-ad84-7ef26f2171d5; io=LXD-fjxjTzZAcI3UAAD6' \
  -H 'origin: https://dev.supervisely.com' \
  -H 'pragma: no-cache' \
  -H 'referer: https://dev.supervisely.com/app/images2/?datasetId=61128&imageId=19483077' \
  -H 'sec-ch-ua: "Google Chrome";v="111", "Not(A:Brand";v="8", "Chromium";v="111"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36' \
  -H 'x-request-uid: 391e5c42-3ab8-4493-9543-9e8d1e6e551f' \
  -H 'x-team-id: 8' \
  -H 'x-workspace-id: 349' \
  --data-raw '{"crop":[[64,171],[1358,1375]],"positive":[[711,773]],"negative":[],"taskId":29683}' \
  --compressed &
done