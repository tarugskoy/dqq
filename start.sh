if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://tarugskoy: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@github.com/tarugskoy/dqq
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQ-The-File-Donor
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting DQ-The-File-Donor...."
python3 bot.py
