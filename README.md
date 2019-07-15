https://github.com/apple/turicreate/tree/master/scripts

Create a new file name as requirements.txt and add the lines below,

coremltools==2.1.0
scipy==0.19.1
numpy==1.11.1
cython==0.24
argparse==1.2.1
decorator==4.1.2
mock==2.0.0
pytest==3.2.5
pandas==0.22.0
pillow==5.0.0
prettytable==0.7.2
pytz==2016.3
resampy==0.2.1
requests>=2.9.1
scikit-learn==0.17.1
six==1.10.0
statsmodels==0.8.0
wheel==0.29.0
mxnet==1.1.0
UISoup==2.5.7
pyobjc==4.2.2; sys_platform == 'darwin'
future==0.16.0
pyOpenSSL
ndg-httpsclient
pyasn1
hypothesis==3.76.0


$ docker build -t turicreate:tag .

$ docker run --name turicreate-cpu -i -t -e ARG1=value turicreate:tag
