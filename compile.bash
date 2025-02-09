# for out in ./output/*.stl; do
#     rm $out
# done

counter=0
for file in ./parts/*.scad; do
    export filename=`echo $file | cut -c 9- | cut -d'.' -f1`
    counter=$(($counter+1))
    if [ -z ${1+x} ]; then
        openscad -o ./output/$filename.stl $file &
    else
        openscad --backend=$1 -o ./output/$filename.stl $file &
    fi
done

echo "Compiling, $counter processes started at the background, don't close the terminal"
