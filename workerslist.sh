if [ $# -eq 0 ]
  then
    echo "No arguments supplied, list all"
    journalctl -u kit-mediator | grep -A 2 "Adding service to database" | perl -pe 's/\n/ /g; s/\}/\}\n/g' | perl -pe 's/ -- //'
    journalctl -u kit-mediator | grep "Removing service"
else
  marDay=$1
  journalctl -u kit-mediator | grep -A 2 "Adding service to database" | grep "mar $marDay" | perl -pe 's/^.*\]://; s/\n/ /g; s/\}/\}\n/g'
fi
