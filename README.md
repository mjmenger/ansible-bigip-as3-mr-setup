# Demonstration Ansible playbooks for BIG-IP configuration
TBD what's the purpose of this repo

As a convenience, it is strongly suggested that you use the following docker container to encapsulate the unique runtime requirements of this repository
```bash
docker run -it -v $(pwd):/workspace -p 8089:8089 mmenger/tfdemoenv:1.5.5 /bin/bash
```

Once the container is running run the following;

```bash
./install-ubuntu-dependencies.sh
```

**Note**: Some of the modules referenced in this demonstration are currently in preview release. Consequently, a pre-release version of ansible will be installed by the dependencies script. (<-- this is a real good reason for using the docker container mentioned above)



## big-ip role
Installs specified versions of Application Services, Declarative On-boarding, and Telemetry Streaming on the identified BIG-IP

## message-router role
Configures the elements required for diameter message routing