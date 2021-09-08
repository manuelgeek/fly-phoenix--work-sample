
#Fly.io Interview App
> This is a phonix app with liveview

 LINK: https://wild-thunder-8771.fly.dev/

## What I did
- Installed `flyctl cli`
- Created fly.io account - generated API key
- I pushed the example app given to help me have apps to test - I though faced an error trying to deploy the ruby-rails example - my app is in pending state - but at-least I have app entries to view - for kick-starting the task

- Updated the `fetch_app/2` in `client.ex` query, added more query field - this was necessary to fetch the instances and deploy status - I reused this since we;re already making requests - there was no need to create extra request to query API
- modified `preview_ulr/1` in `show.ex` to use the hostname
- I did the `fly status` details on the `show.html.heex` 
- Added version, hostname details to already existing
- Added Deployment status - created tailwind components - I'm not new to tailwind
- App reloads `fetch_app/1` after every 5 seconds - not the best approach though - this seems to timeout on making requests to the API - not the best approach - still looking for something reliable
- added Timex to format date - created `format_date/1` in `show.ex` - I feel like it's an overkill but this was an easier approach - Timex is big*** for that small task
- on index - added view button - easily accessible that clicking the whole component
- simplified the `show.html.heex` , created different components from it
- added preloader - when fetching data - also added checking for empty states
- played around with the `flyctl cli` - glad I have $500 credit. I'll be exploring even more after this



###Debugging


- got an internal server error - at fist deploy
- fixed the error - I had to run `flyctl --app wild-thunder-8771 secrets set [name]=[value` with the key name being `SECRET_KEY_BASE' - while debugging  - `flyctl --app wild-thunder-8771 logs` reading the logs helped me fix the issue

## What I would have done given time/ What I didn't build
- A refresh button - I was kind of torn between adding a refresh button instead of auto refresh with a timer - manual but cheap 
- Add pagination to Instances, Timeline info
- clean the UI to use better components - I build simple tailwind components to demonstrate 
- Separate the components
- The app reloads the app details every 5 seconds - There should be a better way that this - maybe subscribe to channel
- add tests - with tests, it's easier to test all the edge cases
- play around with it, maybe see how I could automate the deployment with CI/CD pipelines
- Handle the realtime status fetch better - rather than relying on the 5 seconds page refresh


## How I'd determine if the feature is successful
 - The apps page is showing deployment status, and instances
 - since there a re no tests, testing all pages and scenarios can help assert success
 - To verify the app is indeed refreshing, I tried running the `flyctl scale count`, `flyctl vm stop`, `flyctl vm restart` on the CLI, then observe the App to see if the data is updated. This worked



## How we can solve end user problems
- Add a card less dev ENV for staging deployments, maybe there can be limited to requests made, etc - instead of adding card just to get the experience
- Add the ability to deploy, relaunch, stop from the Apps UI - rather that just CLI alone
- Ability to monitor healths - realtime data, per requests made
- View logs from the dashboard - download logs


## Lessons
- I learnt more about Fly.io and the flyctl cli
- Learnt to understand Liveview more, creating components
- Understanding flyctl CLI - though I still need to play more with - very awesome solution
