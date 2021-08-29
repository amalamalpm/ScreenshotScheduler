# ScreenshotScheduler
It will take screenshot of your mac periodically

# How to start

- Download the file [startScreenshotJob.sh](https://raw.githubusercontent.com/amalamalpm/ScreenshotScheduler/main/startScreenshotJob.sh) from this repo(https://raw.githubusercontent.com/amalamalpm/ScreenshotScheduler/main/startScreenshotJob.sh)
- open a terminal at that location
- Give execute permision to the file using command
  `chmod +x startScreenshotJob.sh`
- Run the downloaded file `startScreenshotJob [-i <interval in seconds>] [-l <folder to store screenshots>]`
- Sample commands `./startScreenshotJob.sh --interval 10`

![Screenshot preview](https://user-images.githubusercontent.com/15118886/131239311-c2ac8b98-9b2c-4b00-84fd-8604a7b7adc2.png)


```
startScreenshotJob(1)          Command Manual         startScreenshotJob(1)
NAME
     startScreenshotJob -- capture images from the screen and save them to a file or the clipboard periodically
SYNOPSIS
     startScreenshotJob [-i <interval in seconds>] [-l <folder to store screenshots>]
DESCRIPTION
     A list of options follows.
     -i, --interval     interval in seconds, by default it will be 300 seconds 5 minutes
     -l, --location     location to store screenshots, by default it will the current folder
```
