# run tests and code in spark-custom running container

modify .config file to suit

* run-all.sh does all of the below
* create-egg.sh - creates an .egg for use with spark-submit --py-files
* install-requirements.sh - runs `pip install` in container
* spark-submit.sh - run sample script in container
* test.sh - run pytest on project in container

