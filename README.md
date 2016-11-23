
# Alpine Plowdown 

Alpine Linux based Docker file for containerized downloading from file-sharing sites.

This allows you to use mcrapet's plowshare tools in a small footprint linux container.



### Build:
```
    docker build -t chuyqa/plowdownlocal .
```

### Run:
```
    docker run --name=plowmini -itd chuyqa/plowdown
```

### Running with Attached Remote Storage:
Assuming host OS has mount point /mnt/disk1/Media
```
    docker run --name=plowmini -itd -v /mnt/disk1/Media/:/Media chuyqa/plowdown
```



# Usage

**Standard plowdown**

1. Attach to container

```
    docker exec -it plowmini bash
```


2. Choose download method:

```
    plowdown --auth=user:pass https://link_to_download
```


    
    
#### Example: Multiple Download Connections (aria2c), Premium Rapidgator account, and host storage mounted

```
    docker run --name=plowmini -itd \
    -e RG_USER='your_user' \
    -e RG_PASS='your_pass' \
    -v /path/to/host/disk/:/Media \
    chuyqa/plowdown
    
    docker exec -it plowmini bash
    rg <rapidgator link>
```


### Other scripts

**Unrar** : There is a minimal wrapper available with the "Unrar" command. 
    This only unrar's the media files, and will attempt to skip the most
    common HTML/referal link files in most downloads. 
    usage - 
    
    Unrar ./file_to_open.rar
