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

```bash
./deploy.sh
```

**Note:** Many of the BIG-IP objects created by this playbook are not visible through the BIG-IP Web UI. The following command run at the TMOS command line will show the object configurations if the playbook executed successfully.

```bash
list ltm message-routing generic
```

## big-ip role
Installs specified versions of Application Services, Declarative On-boarding, and Telemetry Streaming on the identified BIG-IP

## message-router role
Configures the elements required for SMPP message routing via generic MRF objects.

