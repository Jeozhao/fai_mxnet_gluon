num_gpus=1
num_workers=3

#python prepare_union_data.py

#python train_task.py --task collar_design_labels --model resnet50_v2 --num-gpus $num_gpus -j $num_workers --epochs 60 -b 8
#kill -9 `fuser -v /dev/nvidia*`
#
#python train_task.py --task neckline_design_labels --model resnet50_v2 --num-gpus $num_gpus -j $num_workers --epochs 60 -b 8
#kill -9 `fuser -v /dev/nvidia*`
#
python train_task_union_data.py --task skirt_length_labels --model inceptionv3 --num-gpus $num_gpus -j $num_workers --epochs 50 -b 8
#kill -9 `fuser -v /dev/nvidia*`
#
#python train_task.py --task sleeve_length_labels --model resnet50_v2 --num-gpus $num_gpus -j $num_workers --epochs 60 -b 8
#kill -9 `fuser -v /dev/nvidia*`
#
#python train_task.py --task neck_design_labels --model resnet50_v2 --num-gpus $num_gpus -j $num_workers --epochs 60 -b 5
#kill -9 `fuser -v /dev/nvidia*`
#
#python train_task.py --task coat_length_labels --model resnet50_v2 --num-gpus $num_gpus -j $num_workers --epochs 60 -b 6
#kill -9 `fuser -v /dev/nvidia*`
#
#python train_task.py --task lapel_design_labels --model resnet50_v2 --num-gpus $num_gpus -j $num_workers --epochs 60 -b 4
#kill -9 `fuser -v /dev/nvidia*`
#
#python train_task.py --task pant_length_labels --model resnet50_v2 --num-gpus $num_gpus -j $num_workers --epochs 60 -b 7
#kill -9 `fuser -v /dev/nvidia*`

cd submission
#cat collar_design_labels.csv neckline_design_labels.csv skirt_length_labels.csv sleeve_length_labels.csv neck_design_labels.csv coat_length_labels.csv lapel_design_labels.csv pant_length_labels.csv > submission.csv
