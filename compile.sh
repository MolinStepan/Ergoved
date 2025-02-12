for out in ./output/*.stl; do
    rm $out >> /dev/null 2>&1
done
rm ./logs/log.log >> /dev/null 2>&1



counter=0

compile() {
    export filename=`echo $1 | cut -c 9- | cut -d'.' -f1`
    result=0
    if [ -z ${2+x} ]; then
        result="$(openscad -o ./output/$filename.stl $1 2>&1)"
    else
        result="$(openscad --backend=$2 -o ./output/$filename.stl $1 2>&1)"
    fi
    if [[ $result != *"ERROR:"* ]]; then
        echo "$filename.stl compiled"
    else
        echo "$filename.scad failed, see logs"
        echo "$filename.scad" >> ./logs/log.log
        echo "" >> ./logs/log.log
        echo $result >> ./logs/log.log
    fi
}

for file in ./parts/*.scad; do
    counter=$(($counter+1))
    compile $file $1 &
done
# wait for all pids
wait
