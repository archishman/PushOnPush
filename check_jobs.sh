function handle_changed {
    echo '[' $(date -u) '] Files have changed' >> log.txt;
    rm -rf .temp
    mv .temp2 .temp
    rm -rf .temp2
    curl -d "app_key=$APP_KEY&app_secret=$APP_SECRET&content=Positions%20Updated&target_type=app" -X POST https://api.pushed.co/1/push
}
function handle_unchanged {
    echo '[' $(date -u) '] Files are identical' >> log.txt
    rm -rf .temp2
}
function check_updates {
    git ls-remote $REPO | head -n 1 | awk '{print $1;}' > ./.temp2
}
export $(cat .env | xargs)
while true
do
    SLEEPTIME=${1:-3600} 
    check_updates
    cmp --silent .temp .temp2 && handle_unchanged || handle_changed;
    sleep $SLEEPTIME;
done