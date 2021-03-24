# `simple-storage`

Save POSTed JSON in a SQLite database.
## Development

```bash
./build_docker.sh
./run_docker.sh
```

## Usage

```bash
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"some":"data","more":"data"}' \
  https://lab1.algorithmwatch.org/pushdataOP1MP0Unv0H84ZENIgMA
```

## nginx

```nginx

location /pushdataOP1MP0Unv0H84ZENIgMA {
    proxy_pass http://localhost:5000;
}

```
