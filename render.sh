for out in ./output/*.stl; do
    rm $out >> /dev/null 2>&1
done
rm ./logs/log.log >> /dev/null 2>&1

compile() {
    START=$(date +%s)
    export filename=`echo $1 | cut -c 9- | cut -d'.' -f1`
    result=0
    if [ -z ${2+x} ]; then
        result="$(openscad --hardwarnings -o ./output/$filename.stl $1 2>&1)"
    else
        result="$(openscad --hardwarnings --backend=$2 -o ./output/$filename.stl $1 2>&1)"
    fi
    if [[ $result != *"ERROR:"* && $result != *"WARNING"* ]]; then
        END=$(date +%s)
        DIFF=$(( $END - $START ))
        if (( DIFF>59 )); then
            printf "[\e[32mRendered\e[0m] $filename.stl in %02d:%02d:%02d\n" \
                   "$((DIFF/3600))" "$((DIFF%3600/60))" "$((DIFF%60))"
        else
            echo -e "[\e[32mRendered\e[0m] $filename.stl in $DIFF seconds"
        fi
    else
        echo -e "[\e[31mFailed\e[0m] $filename.scad"
        echo $result
    fi
}

for file in ./parts/*.scad; do
    compile $file $1 &
done

wait
