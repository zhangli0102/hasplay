#/bin/bash
value1=$(cat CONTRACT_VERSION)
value2=$(cat ../test/CONTRACT_VERSION)
echo $value1
echo $value2
EXIT=1 #expecting failure
if [ $value1 -eq $value2 ]; then
  echo Sucessed!
  EXIT=0
  git tag 01.04.000
  git push --tags
else
  echo Failed.
fi
exit $EXIT

