# jupyterlab-GPU-env
* NGCコンテナを使ってGPU分析環境を作ります。  
* まずはDockerfileを使ってイメージをbuildします。
```
docker build -t custompytorch .
```
* 次に `localhost:8888` でjupyterlabが立ち上がるように設定します。
```
docker run --gpus all -p 8888:8888 custompytorch jupyter-lab --no-browser --ip 0.0.0.0 --allow-root --NotebookApp.token=''
```