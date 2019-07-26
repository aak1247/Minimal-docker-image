# Minimal Docker

## Usage

### jdk11

```shell
docker pull aak1247/openjdk:11-jre-alpine
```

### curl

#### General Usage

```shell
docker pull aak1247/alpine-curl
```

#### Using CI

it might caused problem (as cannot open 'sh') when using the above image, so it might be helpful to put bash in this image.

```shell
docker pull aak1247/alpine-curl:with-bash
```

or

```yaml
job:
  image: aak1247/alpine-curl:with-bash
  stage: deploy
  script:
  - 'curl xxx'
```

### sshpass

#### General Usage

```shell
docker pull aak1247/sshpass:latest
docker run -it aak1247/sshpass:latest
sshpass $options
```

#### Using gitlab ci

```yaml
job:
  image: aak1247/sshpass
  stage: deploy
  script:
  - 'sshpass -p $PASSWORD scp -o StrictHostKeyChecking=no file username@host:/path'
  - 'sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no -o PreferredAuthentications=password -o PubkeyAuthentication=no username@host "echo login"'

```

