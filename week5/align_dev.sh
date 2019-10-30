#aligh dev data for mlp training
. setup.sh

dir=exp/tri
feat_dev="cat $feat_loc/dev.39.cmvn.scp |"
compile-train-graphs $dir/tree $dir/final.mdl train/L.fst ark:train/dev.int ark:- |\
gmm-align-compiled $dir/final.mdl ark:- "scp,s,cs:$feat_dev"  ark:$dir/dev.ali
