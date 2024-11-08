if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/lk3140318/TheMovieNyBot.git /THEMOVIEBOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /THEMOVIEBOT
fi
cd /THEMOVIEBOT
pip3 install -U -r requirements.txt
echo "Starting THEMOVIEBOT...."
python3 bot.py
