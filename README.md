
# Blog Post

https://blog.awsmeter.io/cost-optimization-spot-fleet-autoscaling/

https://blog.awsmeter.io/run-stack-spot-instance/

## build docker images at local

    docker build -t blog-demo-proxy ./proxy/.

    docker build -t blog-demo-api ./api/.

    docker build -t blog-demo-worker ./worker/.

    docker build -t blog-demo-db ./database/.


## run local version service

    docker-compose -f docker-compose-local.yml up

note: AWSCredientials are not embeded on local container's or host instance, you may get SQS exception. But it should be run fine on AWS environment. You should get response at


    http://localhost/api/version


### run debug mode

    docker run -it --name demo-api --link blog-demo-db:db.awsmeter.io --rm -p 8080:8080 blog-demo-api

    docker run -it --name demo-worker --link blog-demo-db:db.awsmeter.io --rm blog-demo-worker