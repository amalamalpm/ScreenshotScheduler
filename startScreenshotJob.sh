echo "startScreenshotJob(1)          Command Manual         startScreenshotJob(1)

NAME
     startScreenshotJob -- capture images from the screen and save them to a file or the clipboard periodically

SYNOPSIS
     startScreenshotJob [-i <interval in seconds>] [-l <folder to store screenshots>]

DESCRIPTION
     A list of options follows.

     -i|--interval   interval in seconds, by default it will be 300 seconds 5 minutes

     -l|--location        folder to store screenshots, by default it will the current folder


     "
# Setting defalut values
SLEEP_TIME=300
LOCATION=.

# Taking options given in command line
while [[ $# -gt 0 ]]; do
  key="$1"
  case $key in
    -i|--interval)
      SLEEP_TIME="$2"
      shift # past argument
      shift # past value
      ;;
    -l|--location)
      LOCATION="$2"
      shift # past argument
      shift # past value
      ;;
    *)    # unknown option
      shift # past argument
      ;;
  esac
done

#Create folder if not exists
if [ ! -d "$LOCATION" ]
then
    mkdir -p "$LOCATION"
fi;

#Starting to take screenshot
while :
do
   DATE_STRING=`date +%Y-%m-%d\ %H.%M.%S`
   FILE_LOCATION="$LOCATION/screencapture_$DATE_STRING.png"
   echo "[$DATE_STRING] Taking and saving screeshot at $FILE_LOCATION, and waiting for $SLEEP_TIME seconds. Press Ctrl+C to stop."
   screencapture "$FILE_LOCATION"
   sleep $SLEEP_TIME
done
