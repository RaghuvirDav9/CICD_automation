a=$(<appspec.yaml)
OUTPUT=$(aws ecs describe-task-definition --task-definition TaskDefinitionDEMO | jq '.[] | .taskDefinitionArn')
echo "${a/task-def/$OUTPUT}"
echo "${a/task-def/$OUTPUT}" > appspec.yaml