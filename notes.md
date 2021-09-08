### What I did
- Updated the `fetch_app/2` in `client.ex` query, added more query field
- modified `preview_ulr/1` in `show.ex` to use the hostname
- I did the `fly status` details on the `show.html.heex` 
- Added version, hostname details to already existing
- Added Deployment status
- App reloas `fetch_app/1` after every 5 seconds - not the best approach though



## What I would have done given time
 - Add pagination to Instances
 - clean the UI to use better components - I build simple tailwind components to demonstrate 
 - Separate the components
 - The app reloads the app details every 5 seconds - There should be a better way that this - maybe subscribe to channel
