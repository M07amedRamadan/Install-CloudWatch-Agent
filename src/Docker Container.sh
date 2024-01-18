!/bin/bash
# Create a Docker Container and send its Logs like 5xx type and all logs to cloudwatch.
# provide driver=awslogs, awslogs-region, group-name, stream-name
docker run --log-driver=awslogs --log-opt awslogs-region=<your-region> \
     --log-opt awslogs-group=<Log-GroupName> --log-opt awslogs-stream=<stream-name> \
     -d -p 4222:4000 --name <containerName> -v </data/location/host>:<location/inside/image> <image-name>
