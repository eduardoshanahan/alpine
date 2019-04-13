echo 'Checking Docker image name'
IMAGE_NAME=$(cat version.json | grep imageName | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')
echo 'Image name is '$IMAGE_NAME

echo 'Preparing version number'
VERSION_NUMBER=$(cat version.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')
echo 'New version is '$VERSION_NUMBER

PUSH_TO_BITBUCKET=$(cat version.json | grep pushToBitbucket | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')
echo 'Push to Bitbucket: '$PUSH_TO_BITBUCKET

PUSH_TO_GITHUB=$(cat version.json | grep pushToGithub | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')
echo 'Push to Github: '$PUSH_TO_GITHUB

if [[ $PUSH_TO_BITBUCKET == yes ]];
then
    echo 'Pushing to Bitbucket'
    git push bitbucket
else
    echo 'Not pushing to Bitbucket'
fi

if [ -z ${PUSH_TO_GITHUB+x} ];
then
    echo 'Pushing to Github'
    git push github
else
    echo 'Not pushing to Github'
fi

if test -z "$VERSION_NUMBER" 
then
    echo 'Creating new tag '$VERSION_NUMBER
    git tag -f $VERSION_NUMBER

    if test -z "$PUSH_TO_BITBUCKET"
    then
        echo 'Pushing tags to bitbucket'
        git push bitbucket -f --tags
    fi

    if test -z "$PUSH_TO_GITHUB"
    then
        echo 'Pushing tags to github'
        git push github -f --tags
    fi
fi