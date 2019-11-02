# Demonstration Ansible playbooks for BIG-IP configuration
Sample Ansible playbook for PoC of SMPP solution.

As a convenience, it is strongly suggested that you use the following docker container to encapsulate the unique runtime requirements of this repository, in particular the recently released ansible 2.9.
```bash
docker run -it -v $(pwd):/workspace -p 8089:8089 mmenger/tfdemoenv:1.6.1 /bin/bash
```

Once the container is running run the following;

```bash
./install-ubuntu-dependencies.sh
```

update ansible/inventory.yml with the address and authentication information for the BIG-IP you want to configure. **DO NOT COMMIT THESE CHANGES TO SOURCE CONTROL**

**Note**: Some of the modules referenced in this demonstration are currently in preview release. Consequently, a pre-release version of ansible will be installed by the dependencies script.

```bash
./deploy.sh
```

## big-ip role
Installs specified versions of Application Services, Declarative On-boarding, and Telemetry Streaming on the identified BIG-IP

## message-router role
Configures the elements required for SMPP message routing via generic MRF objects.

