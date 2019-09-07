# docker login --username $DOCKER_USER --password $DOCKER_PASS
docker login -u "manikandanmuthuv" -p "N@ukr!123" docker.io
if [ "$TRAVIS_BRANCH" = "master" ]; then
TAG="latest"
else
TAG="$TRAVIS_BRANCH"
fi
docker build -f Dockerfile -t $TRAVIS_REPO_SLUG:$TAG .
docker tag $TRAVIS_REPO_SLUG $DOCKER_REPO
docker push manikandanmuthuvs/kata-python-flask-xp:latest