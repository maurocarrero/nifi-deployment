# nifi-deployment

## Installation

### Folder structure

```
$PWD/nifi-sandbox/data/             # data storage
$PWD/nifi-sandbox/flow_storage/     # repository
$PWD/nifi-sandbox/nifi-deployment/  # this repository
```

#### Git flow_storage repository

Sub-folder **flow_storage** is a different git repository that you need to create where NiFi registry will commit changes once integrated with NiFi server.

##### Git Flow Persistence Provider

[Nifi Registry](https://nifi.apache.org/registry) needs a git repository to be present
when enabling [Git Flow Persistence Provider](https://nifi.apache.org/docs/nifi-registry-docs/html/administration-guide.html#flow-persistence-providers).
Check docs for more information, check suggested videos:
- [Integrate NiFi and NiFi Registry](https://www.youtube.com/watch?v=X_qhRVChjZY)
- [Git Flow Persistence Provider](https://www.youtube.com/watch?v=kK7eVppg9Aw)

### Docker

#### ENV

Update `.env` file with adequate values. Take into account .env.example file.

#### Start containers

```bash
docker compose up
```

By starting Docker Compose 2 containers will start:
- **nifi-deployment-nifi-1**
- **nifi-deployment-nifi-registry-1**

Following environment values will be used for configuring the NiFi user you will be using to work:
- SINGLE_USER_CREDENTIALS_USERNAME
- SINGLE_USER_CREDENTIALS_PASSWORD

1. Access NiFi server at `https://localhost:8443/nifi/` and use aforementioned credentials to log in.
2. Access NiFi Registry server at `http://localhost:18080/nifi-registry` and set up a bucket where to store changes. Refer to [System's Administration Guide](https://nifi.apache.org/docs/nifi-registry-docs/html/administration-guide.html) for detailed information. 
