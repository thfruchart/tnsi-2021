def decoupe(px, x, y, t):
    t = t//2
    for i in range(t):
        for j in range(t):
            px[x+i ,y+j], px[x+t+i ,y+j], px[x+t+i ,y+t+j], px[x+i ,y+t+j]= \
                   px[x+t+i ,y+j], px[x+t+i ,y+t+j], px[x+i ,y+t+j], px[x+i ,y+j]

def rotation_aux(px, x, y, t):
    if t<=1:
        return
    decoupe(px, x, y, t)
    t = t//2
    rotation_aux(px, x, y, t)
    rotation_aux(px, x+t, y, t)
    rotation_aux(px, x, y+t, t)
    rotation_aux(px, x+t, y+t, t)

def rotation(px,taille):
    rotation_aux(px, 0, 0, taille)

from PIL import Image
im = Image.open("tigre.jpg")
px=im.load()
rotation(px,256)
im.save("rotation.jpg")
