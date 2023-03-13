# Sync Tacview Files

Uses Robocopy to sync tacview files to a mapped network drive (or any other folder). Only syncs finished ACMI files, not those 0 byte in-progress ones.

Ideally you should create a scheduled task to run this in the background every X minutes.  
An example task has been included in this project folder. You can import it by opening Task Scheduler and choosing "Import Task..." on the right side of the screen.