IMAGE_VERSION=$(cat version.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')
echo 'Pushing to bitbucket'
git push bitbucket
echo 'Pushing to github'
git push github
echo 'Verifying tag'
if [ ! $(git tag -l $IMAGE_VERSION) ]; then
    echo 'Clean up existing tag'
    git tag delete $IMAGE_VERSION
fi
echo 'Pushing tags to bitbucket'
git push bitbucket --tags
echo 'Pushing tags to github'
git push github --tags
