# Prerequisite
1. install [docker](https://www.docker.com/products/docker-desktop). Also should install [docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) extension in VSCode

# Run Jupyter
1. run `yarn start`. This will start the jupyter server and display log
2. copy token from container log `docker logs -f tensorflow`
3. open browser and go to `http://localhost:8888/?token={token}` where token is from container log

# Run Script
1. run `yarn script`. This will run the file `tf/script.py`

# Jupyter - Open New Script
1. inside jupyter, go to `Files` tab, and select `New -> Python 3`
2. Add code into cell, and press `Run` to test code
3. Remember to export code into folder if you want to save it permanently. Data saved inside container will be erased on rebuild
