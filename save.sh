echo 'Preparing version number'
IMAGE_VERSION=$(cat version.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')
echo 'New version is '$IMAGE_VERSION

echo 'Pushing to bitbucket'
git push bitbucket

echo 'Pushing to github'
git push github

echo 'Creating new tag '$IMAGE_VERSION
git tag -f $IMAGE_VERSION

echo 'Pushing tags to bitbucket'
git push bitbucket -f --tags

echo 'Pushing tags to github'
git push github -f --tags
