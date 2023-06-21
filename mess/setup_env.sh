# run script with
# bash mess/setup_env.sh

# Create new environment "xdecoder"
conda create --name xdecoder -y python=3.8
source ~/miniconda3/etc/profile.d/conda.sh
conda activate xdecoder

# install requirements from X-Decoder
pip install torch==1.13.1 torchvision==0.14.1 --extra-index-url https://download.pytorch.org/whl/cu113
python -m pip install 'git+https://github.com/MaureenZOU/detectron2-xyz.git'
pip install git+https://github.com/cocodataset/panopticapi.git
python -m pip install -r requirements.txt
sh install_cococapeval.sh

# install packages for dataset preparation
pip install gdown
pip install kaggle
pip install rasterio
pip install pandas