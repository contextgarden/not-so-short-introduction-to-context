context --mode=screen introCTX_rus.mkiv --result=introCTX_rus
# context --mode=screen introCTX_rus.mkiv --result=introCTX_rus_s
# context               introCTX_rus.mkiv --result=introCTX_rus_p

pdftocairo -png -r 240 -scale-to 800 -singlefile introCTX_rus.pdf introCTX_rus
# pdftocairo -png -r 240 -scale-to 800 -singlefile introCTX_rus_s.pdf introCTX_rus

# pdftocairo -png -r 240 -scale-to 800 -singlefile introCTX_esp.pdf introCTX_esp
# pdftocairo -png -r 240 -scale-to 800 -singlefile introCTX_eng.pdf introCTX_eng
