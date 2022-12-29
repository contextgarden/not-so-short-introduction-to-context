WORKSPACE=`pwd`

declare -A languages=(["cs"]="cs" ["en"]="eng" ["es"]="esp" ["fr"]="fra" ["fr2"]="fra" ["ru"]="rus" ["sr"]="srb")

declare -A languages=(["cs"]="cs" ["en"]="eng" ["es"]="esp"  ["ru"]="rus" ["sr"]="srb")



for lang in "${!languages[@]}"
do

  start=`date +%s`

  cd $WORKSPACE/$lang
  echo "==================== Compiling '$lang' version ===================="

  tlang=${languages[$lang]}
  extension="mkiv"

  if [[ "$lang" == "fr" || "$lang" == "fr2" || "$lang" == "cs" ]]; then
    extension="tex"
  fi

  echo "Screen version..."
  context --mode=screen "introCTX_${tlang}.${extension}" --result="introCTX_${tlang}_s" > /dev/null
  echo "Paper version..."
  context               "introCTX_${tlang}.${extension}" --result="introCTX_${tlang}_p" > /dev/null
  echo "Thumbnail..."
  pdftocairo -png -r 240 -scale-to 800 -singlefile "introCTX_${tlang}_s.pdf" "introCTX_${tlang}"
#  echo "Cleaning..."
#  rm "introCTX_${tlang}_s.tuc" "introCTX_${tlang}_s.log" "introCTX_${tlang}_p.tuc" "introCTX_${tlang}_p.log"
#  if [[ "$lang" == "fr" || "$lang" == "fr2" ]]; then
#    rm introCTX_fra.tuc introCTX_fra-t-b-*.pdf introCTX_fra-t-b-*.tuc introCTX_fra-t-b-*.tua introCTX_fra-t-b-*.log ex_*.tex
#  fi

  end=`date +%s`
  echo Execution time was `expr $end - $start` seconds.




done
