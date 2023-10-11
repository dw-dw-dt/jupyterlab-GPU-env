# jupyterlab-GPU-env
* windows環境においてwsl 2が実行可能であると想定します。
* NGCコンテナを使ってGPU分析環境を作ります。  
* まずはDockerfileを使ってイメージをbuildします。
```
docker build -t custompytorch .
```
* 次に `localhost:8888` でjupyterlabが立ち上がるように設定します。
```
docker run --name ngcpytorch --gpus all -p 8888:8888 custompytorch jupyter-lab --no-browser --ip 0.0.0.0 --allow-root --NotebookApp.token=''
```

# 参考資料
https://catalog.ngc.nvidia.com/orgs/nvidia/containers/pytorch  
* こちらのnvidiaのコンテナカタログを参考にしていますが、jupyter labの起動部分は `ngc` コマンドを使わずに `docker` コマンドで対応しています。
