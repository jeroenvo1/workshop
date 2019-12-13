# Name of the repo
REPO=jeroenhrmail

# Name of the image
IMAGE=workshop_api_container

# Current branch-commit (example: master-ab01c1z)
CURRENT=`echo $$TRAVIS_BRANCH | cut -d'/' -f 2-`-$$(git rev-parse HEAD | cut -c1-7)

test:
	echo test

build-api:
	docker image build -t workshop_api_image .