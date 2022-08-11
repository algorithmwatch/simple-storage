# `simple-storage`

Save POSTed JSON in a SQLite database.

## Development

```bash
./build_docker.sh
./run_docker.sh
```

## Post data

```bash
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"some":"data","more":"data"}' \
  https://lab1.algorithmwatch.org/pushdataOP1MP0Unv0H84ZENIgMA
```

## Deployment

```bash
./deploy.sh
```

### nginx

```nginx

location /pushdataOP1MP0Unv0H84ZENIgMA {
    proxy_pass http://localhost:5000;
}

```

### systemd

```systemd
[Unit]
Description=simple storage
Requires=docker.service
After=docker.service

[Service]
Restart=always
ExecStart=/usr/bin/docker start -a simplestorage
ExecStop=/usr/bin/docker stop simplestorage

[Install]
WantedBy=multi-user.target
```
