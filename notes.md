### What I did
- Installed `flyctl cli`
- Created fly.io account - generated API key
- I pushed the example app given to help me have apps to test - I though faced an error trying to deploy the ruby-rails example - my app is in pending state - but at-least I have app entries to view - for kick-starting the task
- Updated the `fetch_app/2` in `client.ex` query, added more query field
- modified `preview_ulr/1` in `show.ex` to use the hostname
- I did the `fly status` details on the `show.html.heex` 
- Added version, hostname details to already existing
- Added Deployment status - created tailwind components - I'm not new to tailwind
- App reloads `fetch_app/1` after every 5 seconds - not the best approach though
- added Times to format date - created `format_date/1` in `show.ex`
- on index - added view button - easily accessible that clicking the whole component
- simplified the `show.html.heex` , created different components from it
- added preloader - when fetching data - also added checking for empty states
- played around with the `flyctl cli` - glad I have $500 credit. I'll be exploring even more after this



## What I would have done given time
 - Add pagination to Instances, Timeline info
 - clean the UI to use better components - I build simple tailwind components to demonstrate 
 - Separate the components
 - The app reloads the app details every 5 seconds - There should be a better way that this - maybe subscribe to channel
 - add tests - with tests, it's easier to test all the edge cases


## How I'd determine if the feature is successful
 - The apps page is showing deployment status, and instances
 - since there a re no tests, testing all pages and scenarios can help assert success
