IMAGE_VERSION=$(cat version.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')
echo 'Pushing to bitbucket'
git push bitbucket
echo 'Pushing to github'
git push github
echo 'Checking tag'
if [ ! $(git tag -l $IMAGE_VERSION) ]; then
    echo 'Creating new tag'
    git tag $IMAGE_VERSION
    echo 'Pushing tags to bitbucket'
    git push bitbucket --tags
    echo 'Pushing tags to github'
    git push github --tags
fi
    echo 'Tag already existing'