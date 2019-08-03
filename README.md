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

## How to start

```bash
> cd ./kali-docker
> make up
...
> make shell
```