set -x -e

python run.py --prepare
python run.py --train --algo BIDAF --epochs 10
python run.py --evaluate --algo BIDAF
python run.py --predict --algo BIDAF --test_files ./data/devset/search.dev.json 
