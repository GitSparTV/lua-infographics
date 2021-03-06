# Lua Popularity Infographics
This page uses terms as `inside community` and `outside community`. Inside community is the closest, most interested in Lua community: mailing list. Outside community is the interest (based on search) in the internet.

## Google Search Trends
Used dataset: Google Trends. `Lua (programming language)`, Worldwide, 2004-2020.

![Google Search Trends](luapopularity_google.png?raw=true "Google Search Trends")

#### Conclusion:
  - Mailing list activity doesn't correlate with outside interest.
  - Lua had the highest interest at the time of Lua 5.1.2 release. 
  - Outside popularity increases for few month when Lua has major release.

## Lua word spelling
Used dataset: GitHub file contents using Google BigQuery.

| Word  | Occurrences |
| ----- | ----------: |
| lua   |     4112923 |
| Lua   |      845619 |
| LUA   |       84281 |
| luA   |       55212 |
| LAU   |       15643 |
| LUa   |        1329 |
| lUa   |         981 |
| lUA   |         883 |
| LuA   |         804 |
| L.U.A |          13 |

![Lua word spelling](luapopularity_spelling.png?raw=true "Lua word spelling")

## Mailing List

### Traffic
Used dataset: lua-l mailing list traffic statistics.

![Mailing List Traffic](luapopularity_mailinglist.png?raw=true "Mailing List Traffic")

#### Conclusion:
  - Mailing list is more active when development of a new version is announced. Continues until the release, then slightly decreases.
  - The most active time for the community was from the release of Lua 5.1 to Lua 5.3.
  - Outside popularity increases for few month when Lua has major release.
  - Most likely, when a Lua Workshop happens, Lua releases new version (from work builds up to major).

### Lua Authors Activity

![Lua Authors Activity](luapopularity_authors.png?raw=true "Lua Authors Activity")

#### Total emails:
  - Roberto Ierusalimschy: 5611 messages
  - Luiz Henrique de Figueiredo: 6575 messages
  - Waldemar Celes: 100 messages

#### Conclusion:
  If you thought there was only Roberto left in Lua team, it's not true.