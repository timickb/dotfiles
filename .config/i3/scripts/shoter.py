import os
import time
f = os.popen('xrectsel')
data = f.read()

# 280x256+237+235

data = data.split('+')
print(data)
x1 = int(data[1])+1
y1 = int(data[2])+1
x2 = int(data[0].split('x')[0])-1
y2 = int(data[0].split('x')[1])-1
filename = str(int(time.time()))
print('coords {} {} {} {}'.format(x1,y1,x2,y2))
os.system('scrot --autoselect {0},{1},{2},{3} ~/screenshots/{4}.png'.format(x1,y1,x2,y2,filename))
os.system('xclip -selection clipboard -t image/png ~/screenshots/{}.png'.format(filename))


