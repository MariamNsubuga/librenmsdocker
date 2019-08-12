# librenmsdocker
Scripts to deploy a MySQL server and LibreNMS instance

# Assumptions
To use these scripts as-is, we assume that:

1. You have sudo privileges on a Fedora linux system
2. Your username is "foghorn" (one line needs to be changed to fix this assumption)
3. You want to store files to enable persistent storage of data in your home directory
4. HTTP is fine for your security concerns. HTTPS is available (kinda) in the HTTPS script using an NGINX proxy but it doesn't work well and honestly I'm still figuring it out.

Feel free to update these references in the code to point to the right locations. This is how I deploy it in my instance but does not need to match yours.

# How To Use These Scripts

First, clone this repo onto your system or copy the relevant files and make them executable. 

Update the 'run.sh' script to replace my username "foghorn" with your actual username.

Optionally you can specify a new APP_KEY environment variable in nms.sh to replace the placeholder I have, look at the jarischafer repo documentation for more information.

When you want to start the process:

1. Run Setup.sh to configure your server and install docker properly
2. Log out and log back in
3. Run run.sh

Congrats! You should have a running version of LibreNMS ready to go in a docker container!

# Included Scripts and Files

## Setup.sh

Configures the environment for docker.

## Run.sh

Sets up the containers and configures them for operation.

## nms.sh

A standalone run command for the LibreNMS container

##db.sh

A standalone run command for the MySQL container
