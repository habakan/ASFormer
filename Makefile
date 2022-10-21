start:
	nvidia-docker run -it --shm-size=1g --rm -v ~/research:/research --name asformer nvcr.io/nvidia/pytorch:22.05-py3 /bin/bash
start2:
	CUDA_VISIBLE_DEVICES=1 nvidia-docker run -it --shm-size=1g --rm -v ~/research:/research --name asformer2 nvcr.io/nvidia/pytorch:22.05-py3 /bin/bash
baseline:
	python main.py --action=train --dataset=50salads --split=1 --result_dir results/baseline
	python main.py --action=predict --dataset=50salads --split=1 --result_dir results/baseline
	python eval.py --dataset=50salads --split=1 --result_dir results/baseline
	python main.py --action=train --dataset=50salads --split=2 --result_dir results/baseline
	python main.py --action=predict --dataset=50salads --split=2 --result_dir results/baseline
	python eval.py --dataset=50salads --split=2 --result_dir results/baseline
	python main.py --action=train --dataset=50salads --split=3 --result_dir results/baseline
	python main.py --action=predict --dataset=50salads --split=3 --result_dir results/baseline
	python eval.py --dataset=50salads --split=3 --result_dir results/baseline
	python main.py --action=train --dataset=50salads --split=4 --result_dir results/baseline
	python main.py --action=predict --dataset=50salads --split=4 --result_dir results/baseline
	python eval.py --dataset=50salads --split=4 --result_dir results/baseline
	python main.py --action=train --dataset=50salads --split=5 --result_dir results/baseline
	python main.py --action=predict --dataset=50salads --split=5 --result_dir results/baseline
	python eval.py --dataset=50salads --split=5 --result_dir results/baseline
train_bp:
	python main.py --action=train --dataset=50salads --split=1 --features_dir_name bridge_prompt_features/50salads_vit_features_splt1/combined_feat --model_dir /models/baseline_bp --result_dir results/baseline_bp
	python main.py --action=predict --dataset=50salads --split=1 --features_dir_name bridge_prompt_features/50salads_vit_features_splt1/combined_feat --model_dir /models/baseline_bp --result_dir results/baseline_bp
	python eval.py --dataset=50salads --split=1 --result_dir results/baseline_bp
	python main.py --action=train --dataset=50salads --split=2 --features_dir_name bridge_prompt_features/50salads_vit_features_splt2/combined_feat --model_dir /models/baseline_bp --result_dir results/baseline_bp
	python main.py --action=predict --dataset=50salads --split=2 --features_dir_name bridge_prompt_features/50salads_vit_features_splt2/combined_feat --model_dir /models/baseline_bp --result_dir results/baseline_bp
	python eval.py --dataset=50salads --split=2 --result_dir results/baseline_bp
	python main.py --action=train --dataset=50salads --split=3 --features_dir_name bridge_prompt_features/50salads_vit_features_splt3/combined_feat --model_dir /models/baseline_bp --result_dir results/baseline_bp
	python main.py --action=predict --dataset=50salads --split=3 --features_dir_name bridge_prompt_features/50salads_vit_features_splt3/combined_feat --model_dir /models/baseline_bp --result_dir results/baseline_bp
	python eval.py --dataset=50salads --split=3 --result_dir results/baseline_bp
	python main.py --action=train --dataset=50salads --split=4 --features_dir_name bridge_prompt_features/50salads_vit_features_splt4/combined_feat --model_dir /models/baseline_bp --result_dir results/baseline_bp
	python main.py --action=predict --dataset=50salads --split=4 --features_dir_name bridge_prompt_features/50salads_vit_features_splt4/combined_feat --model_dir /models/baseline_bp --result_dir results/baseline_bp
	python eval.py --dataset=50salads --split=4 --result_dir results/baseline_bp
	python main.py --action=train --dataset=50salads --split=5 --features_dir_name bridge_prompt_features/50salads_vit_features_splt5/combined_feat --model_dir /models/baseline_bp --result_dir results/baseline_bp
	python main.py --action=predict --dataset=50salads --split=5 --features_dir_name bridge_prompt_features/50salads_vit_features_splt5/combined_feat --model_dir /models/baseline_bp --result_dir results/baseline_bp
	python eval.py --dataset=50salads --split=5 --result_dir results/baseline_bp
