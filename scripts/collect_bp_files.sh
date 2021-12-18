# at the root of aosp

mkdir -p bp_files

cat out/.module_paths/Android.bp.list | while read bpfile
do
    # only cp bp file that starts with "frameworks"
    if [[ $bpfile == frameworks* ]]; then
        cp $bpfile bp_files/${bpfile//\//-}
        echo "bp file:"$bpfile
    fi
done
