# Logi Options Daemon Crontab Killer

I have a Macbook pro M1 SoC and a Logitech mouse mx master 3, but it has compatibility problems and after some time using the computer, the extra mouse's capabilities stop working, but if you kill the daemon process, It starts again completely functional. so I made this script that I put in the system's crontab to kill the daemon every hour.


## Implementation

The implementation is as simple as adding the script call in the user's crontab.


This way you can edit the users crontab
```
$ sudo crontab -u YOUR_USER -e
```

Then, insert the following line in it for a execution every hour at minute zero:
```
0 */1 * * * /Path/to/the/script/
```