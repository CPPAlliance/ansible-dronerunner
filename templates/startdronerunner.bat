
@ECHO ON

docker run -d ^
  -v //./pipe/docker_engine://./pipe/docker_engine ^
  -e DRONE_RPC_PROTO={{ dronerunner_drone_rpc_proto }} ^
  -e DRONE_RPC_HOST={{ dronerunner_drone_rpc_host }} ^
  -e DRONE_RPC_SECRET={{ dronerunner_drone_rpc_secret }} ^
  -e DRONE_RUNNER_CAPACITY={{ dronerunner_drone_runner_capacity }} ^
  -e DRONE_RUNNER_NAME={{ dronerunner_drone_runner_name }} ^
  -e DRONE_LOGS_DEBUG={{ dronerunner_drone_logs_debug }} ^
  -e DRONE_LOGS_TRACE={{ dronerunner_drone_logs_trace }} ^
  -p 3000:3000 ^
  --restart always ^
  --name runner ^
  drone/drone-runner-docker:1
