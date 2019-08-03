```

                        ##         .
                  ## ## ##        ==
               ## ## ## ## ##    ===
           /"""""""""""""""""\___/ ===
      ~~~ {~~ ~~~~ ~~~ ~~~~ ~~~ ~ /  ===- ~~~
           \______ o           __/
             \    \         __/
              \____\_______/

 ___   _  _______  ___      ___     ______   _______  _______  ___   _  _______  ______
|   | | ||   _   ||   |    |   |   |      | |       ||       ||   | | ||       ||    _ |
|   |_| ||  |_|  ||   |    |   |   |  _    ||   _   ||       ||   |_| ||    ___||   | ||
|      _||       ||   |    |   |   | | |   ||  | |  ||       ||      _||   |___ |   |_||_
|     |_ |       ||   |___ |   |   | |_|   ||  |_|  ||      _||     |_ |    ___||    __  |
|    _  ||   _   ||       ||   |   |       ||       ||     |_ |    _  ||   |___ |   |  | |
|___| |_||__| |__||_______||___|   |______| |_______||_______||___| |_||_______||___|  |_|
```

I wasn't satisfied with any of the existing Kali Docker setups, so I made my own that has a more efficient Dockerfile and a custom set of software.

If there are cool apps that make sense to add to this, please submit a pull request so we can have the best possible subset of apps for people to spin up and use via Docker.

## Prerequisites

1. Docker.
2. The knowledge of what to do with Kali.

## How to Start

```bash
> cd ./kali-docker
> make up
...
> make shell
```

Once the container is built and running you will see the following new directories that are mapped in to the container:

* `kali-db` - Holds the postgresdb data so you can keep the same database between runs. For example, your Metasploit database.

* `kali-root ` - This is your home directory in the container, aka `/root`.

## Help

``bash
> make help

help:     Show this help message
up:       Start kali
rebuild:  Build kali
stop:     Stop kali
clean:    Stop and remove kali containers
```

## How to Add Apps

Once in the Kali shell you can add them as you normally would with `apt install ...`, but if you want the apps already in place upon rebuild you can edit line 14 of the Dockerfile to include whatever app you'd like. If you would like to add libraries that aren't available via `apt`, they can be copied in to the `./kali-root` directory and they will be instantly available in the container.
