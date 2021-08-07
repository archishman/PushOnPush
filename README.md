# PushOnPush
Receive push notifications through the [Pushed](http://pushed.co) app when a repository gets updated. Useful for tracking continually updated lists checked into a git repository like recruiting, data, etc.
Add a `.env` file containing `APP_KEY`, `APP_SECRET` from your Pushed app settings page, and the url to the repo as `REPO`. Run the script in the background as `./check_jobs.sh [sleep_seconds] &`. To safely exit shell without killing the process, be sure to run `disown`.
