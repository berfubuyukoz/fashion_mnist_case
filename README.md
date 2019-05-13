# Fashion-MNIST Classification

With this Dockerfile you can create a Docker image within which you can run Ipython Notebooks that train and test various neural 
network models to classify Fashion-MNIST data.

This Dockerfile simply clones a Github repository which has the code. 

See also **cnn2_model_out** folder for the output of the best naural network model I got so far (Image augmentation + CNN with dropout). You can reproduce the results through the code. After applying the couple of steps below, you can see **code repository's Readme** for more details about the code.

Follow the steps below to run the app:

## Requirements to use this Dockerfile:

- [Docker](https://www.docker.com/)

## Instructions to run the app:

- Clone the repository into your local.
      git clone https://github.com/berfubuyukoz/fashion_mnist_case.git
- Make sure you are in the project directory, **fashion_mnist_case**
- In order to build the image run the following command (mind the dot at the end of the command): This will take 1-2 minutes.

      docker build --tag=fmnist .

- Run docker image on port 8888

      docker run -d -v /$(pwd)/:/home/jovyan/work -p 8888:8888 fmnist start-notebook.sh --NotebookApp.token=''  

- Open browser, write localhost:8888/?token=<token>

where <token> is the token appeared on terminal.
