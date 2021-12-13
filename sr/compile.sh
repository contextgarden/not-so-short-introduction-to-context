#context --mode=screen introCTX_srb.mkiv --result=introCTX_srb_s
context               introCTX_srb.mkiv --result=introCTX_srb_p

pdftocairo -png -r 240 -scale-to 800 -singlefile introCTX_srb_s.pdf introCTX_srb

#pdftocairo -png -r 240 -scale-to 800 -singlefile introCTX_esp.pdf introCTX_esp
#pdftocairo -png -r 240 -scale-to 800 -singlefile introCTX_eng.pdf introCTX_eng
