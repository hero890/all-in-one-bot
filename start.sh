if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/hero890/all-in-one-bot.git /all-in-one-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /all-in-one-bot
fi
cd /all-in-one-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
