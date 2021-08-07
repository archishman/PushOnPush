# PushOnPush
Receive push notifications through Pushed app when a repository gets updated. Useful for tracking continually updated lists checked into a git repository like recruiting, data, etc.
Add a `.env` file containing `APP_KEY`, `APP_SECRET` from your Pushed app settings page, and the url to the repo as `REPO`. Run the script in the background as `./check_jobs.sh [sleep_seconds]`.
