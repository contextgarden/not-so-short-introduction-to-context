context --mode=screen introCTX_fra --result=introCTX_fra_s
context               introCTX_fra --result=introCTX_fra_p

pdftocairo -png -r 240 -scale-to 800 -singlefile introCTX_fra_s.pdf introCTX_fra

#pdftocairo -png -r 240 -scale-to 800 -singlefile introCTX_esp.pdf introCTX_esp
#pdftocairo -png -r 240 -scale-to 800 -singlefile introCTX_eng.pdf introCTX_eng
