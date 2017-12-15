IMAGE_VERSION=$(cat version.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')
curl -H "Content-Type: application/json" --data '{"source_type": "Tag", "source_name":"'$IMAGE_VERSION'"}' -X POST https://registry.hub.docker.com/u/eduardoshanahan/alpine/trigger/c0ce728e-bdc9-4e3d-8497-a688c288e4af/