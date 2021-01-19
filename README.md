# internxt-core-daemon
So it's contained


This docker container uses https://github.com/internxt/core-daemon to run Internxt daemon


COMMANDS TO START A NODE:

CREATE A FOLDER FOR STORAGE, AND ONE FOR THE HOME CONFIG

```
mkdir -p <path_on_host>/data
mkdir -p <path_on_host>/home
```


Start the daemon
```
$ docker run --rm --name internxt  -v <path_on_host>/data/:/storage -v <path_on_host>/home:/home/money/.xcore/   portnumber53/internxt-core-daemon
```




Get in the running container:

```
$ xcore create --inxt <WALLET_ADDRESS> --storage /storage/ --size 1TB --rpcport 12345  --noedit

  * configuration written to /home/money/.xcore/configs/b2b66428a282a11a9e49bfcf20a6534ed9b225bd.json
```


Start the node:
```
$ xcore start --config /home/money/.xcore/configs/10c42e77e7a22eb4ae0c30b62ec253f15ad2e740.json
```
