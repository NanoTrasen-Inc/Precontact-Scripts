# Kill Stuck Windows

Kill DCS process windows that contain specific text strings.  
Useful for killing stuck server instances that got held up with "Can't run" or "Login Failed".

## Usage

Run 'Kill Stuck Windows.bat' in a terminal window, or double click the file.

Ideally you should create a scheduled task to run this interactively on the desktop every X minutes.  
An example task has been included in this project folder. You can import it by opening Task Scheduler and choosing "Import Task..." on the right side of the screen.

Make sure to verify the "Run As" user is correct and the path to the script in the "Actions" tab is valid.