this repo not ready to use before delete this line.

# openvino-2019-R3-docker

openvino docker for old 2019 openvino

## Installation

### Environment
 1. Docker

### Order
 1. Downlaod this repo
 2. Docker
 
### Download this repo
```
git clone https://github.com/ByungHyun21/openvino-2019-R3-docker.git
```

### Docker
```
sudo docker build openvino-2019-R3-docker --tag openvino-2019
sudo docker container run -it --mount type=bind,source={openvino_dir},target=/home/openvino-2019-R3-docker openvino-2019
```

## Run

#### mo.py
```
python /opt/intel/openvino_2019.3.376/deployment_tools/model_optimizer/mo.py 
```

