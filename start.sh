if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone spidyynaik/AutoFilterVerify /DQTheFileDonor
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQTheFileDonor
fi
cd /DQTheFileDonor
pip3 install -U -r requirements.txt
echo "Starting DQ-The-File-Donor...."
python3 bot.py
