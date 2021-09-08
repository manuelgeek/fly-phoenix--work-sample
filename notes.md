### What I did
- Installed flyctl cli 
- Created fly.io account - generated API key
- Updated the `fetch_app/2` in `client.ex` query, added more query field
- modified `preview_ulr/1` in `show.ex` to use the hostname
- I did the `fly status` details on the `show.html.heex` 
- Added version, hostname details to already existing
- Added Deployment status
- App reloads `fetch_app/1` after every 5 seconds - not the best approach though
- added Times to format date - created `format_date/1` in `show.ex`
- on index - added view button - easily accessible that clicking the whole component



## What I would have done given time
 - Add pagination to Instances, Timeline info
 - clean the UI to use better components - I build simple tailwind components to demonstrate 
 - Separate the components
 - The app reloads the app details every 5 seconds - There should be a better way that this - maybe subscribe to channel


## How I'd determine if the feature is successful
 - The apps page is showing deployment status, and instances
