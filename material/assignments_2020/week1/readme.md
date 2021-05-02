## Basic Python Setup

Demos and labs in this class will use Python, run through [Jupyter notebooks](http://jupyter.org/). Jupyter is an application that runs in your web browser (Chrome and Firefox work best). It lets you create and edit documents with live Python code and rich comments and images. You can install Python and Jupyter notebooks on any personal computer (Windows, Mac or Unix) or run it in the cloud.

* **Local Installation**: See instructructions here: [jupyter notebook and Python](http://jupyter-notebook-beginner-guide.readthedocs.io/en/latest/index.html). We strongly recommend you do the installation through Anaconda, as described in the linked tutorial. Anaconda includes Python, Jupyter, and also come prepackaged with most third-party machine learning and data processing libraries we will use (Numpy, SciPy, Matplotlib, etc.). You may need to install additional libraries later in the course (e.g. TensorFlow) and this is very easy in Anaconda.

* **In the cloud**: [Google Colaboratory](https://colab.research.google.com/notebooks/intro.ipynb) is a free web-app that lets you run Python on Google's servers through Jupyter notebooks. It already has most machine learning libraries we will use pre-installed, and has a mechanism for installing custom libraries. Colaboratory may be helpful for the group project, as it allows for team editing of notebooks. It also gives you free access to up to 12GB of ram and Google's GPUs, which will allow you to train more complex models than what you can do on your personal computer. File access (for e.g. data files, or output files) is through Google docs. For getting started with colab, follow the [introductory](https://colab.research.google.com/notebooks/intro.ipynb) notebook, which also has links to most frequent types of questions like [importing libraries](https://colab.research.google.com/notebooks/snippets/importing_libraries.ipynb) and [using external data](https://colab.research.google.com/notebooks/io.ipynb). The system configuration provided can be found [here](https://colab.research.google.com/drive/151805XTDg--dgHb3-AXJCpnWaqRhop_2). Few things to keep in mind when using colab:

* Runtime is disconnected after 12hrs of continuous usage.
* GPU might not be available depending on the server load.

## Git Setup

All the material for the labs and demos in this class are hosted on [github](https://github.com/). GitHub offers free hosting for code repositories, websites, etc. managed through the ubiquitous Git version control system. 

To download and run the labs, you only need to understand the basics of Git. All the files are contained in a *repository*, [https://github.com/cpmusco/introml](https://github.com/cpmusco/introml). These files can be downloaded individually (right click on any file and select "Save Link As"). However, we think it will be easier for students to stay organized if they download the entire repository using git.
To do so, perform the following steps:

*  First, install a git client.  A git client is a software program will allow you to access the repository.  There are several excellent clients with GUIs, but a basic command line one is sufficient. Windows, MacOS and Linux clients can be found in the [git download page](https://git-scm.com/download).
* Next, download (aka `clone`) the *entire* repository. Open a command shell or command window (in Windows, you can use the
[Windows powershell](https://docs.microsoft.com/en-us/powershell)). In the command shell type:
~~~bash
    > cd [directory where you want the files on your machine]
    > git clone https://github.com/cpmusco/introml.git
~~~
This will create a directory `introml` with all the files.  You are now ready to go!
* The repository will change over the course of the class and we will update material.  To update your local version at any time, open the command window and type:
~~~bash
    > cd introml
    > git pull
~~~
* On the off chance that we change a file which you had already modified locally, you will need to stage and commit the file before running the `git pull` command. This is done using the `git status`, `git add` and `git commit` commands. For help with these commands, refer to an online git tutorial (e.g. [this one](https://guides.github.com/introduction/git-handbook/)) or talk to the TAs.


Github is also a great tool for your own projects, even if you are working individually.  Using `github` will allow you to keep track of the files, develop in an organized manner, and release your work to a broader audience.

## Lecture 1

- **Demo 1**: In `demo_intro_vectors.ipynb` we saw examples of basic vector processing using the `numpy` library and examples of plotting with `matplotlib`. The simple exercises in this demo are good practice for working with these library, and Python in general. 
