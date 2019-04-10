IMAGE_VERSION=$(cat version.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')
echo 'Pushing to bitbucket'
git push bitbucket
echo 'Pushing to github'
git push github
echo 'Creating tag'
if git tag $IMAGE_VERSION; then
    echo 'Pushing tags to bitbucket'
    git push bitbucket --tags
    echo 'Pushing tags to github'
    git push github --tags
fi