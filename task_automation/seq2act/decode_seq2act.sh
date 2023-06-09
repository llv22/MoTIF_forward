# Copyright 2022 The Google Research Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/bash

set -e
set -x

python -m seq2act.bin.seq2act_decode --problem "motif" \
                                     --data_files ${PWD}"/seq2act/data/motif_ua_ut_final/*.tfrecord" \
                                     --checkpoint_path ${PWD}"/seq2act/ckpt_hparams/grounding" \
                                     --output_dir ${PWD}"/seq2act/decode/motif/ua_ut_test/"
