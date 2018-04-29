def calcularPROB(cad,dic,WtotalesNeg,WtotalesPos,PtotalNeg,PtotalPos):#función que calcula si es más probable que un tweet sea qué...
    cade=cad.split()
    print(cade)
    probNEG=[]
    probPOS=[]
    probabilidadCasoSeaNeg=PtotalNeg
    probabilidadCasoSeaPos=PtotalPos
    for word in cade:
        if(word.lower() in dic):
            tmp2=dic[word.lower()]
            Wtotal=tmp2[0]#total de veces que aparece la palabra
            Wneg=tmp2[1]#cuantass veces la palabra es negativa
            print(word.lower()+": veces que aparece:"+str(Wtotal)+" /  veces que es negativa:"+str(Wneg))
            probNEG.append((Wneg+1)/(WtotalesNeg+len(dic)))
            probabilidadCasoSeaNeg=probabilidadCasoSeaNeg*((Wneg+1)/(WtotalesNeg+len(dic)))
    for word in cade:
        if(word.lower() in dic):
            tmp2=dic[word.lower()]
            Wtotal=tmp2[0]
            Wpos=Wtotal-tmp2[1]
            print(word.lower()+": veces que aparece:"+str(Wtotal)+" /  veces que es positiva:"+str(Wpos))
            probPOS.append((Wpos+1)/(WtotalesPos+len(dic)))
            probabilidadCasoSeaPos=probabilidadCasoSeaPos*((Wpos+1)/(WtotalesPos+len(dic)))
    print(probNEG)
    print(probabilidadCasoSeaNeg)
    print(probPOS)
    print(probabilidadCasoSeaPos)
    if(probabilidadCasoSeaNeg>probabilidadCasoSeaPos):
        print('AGRESIVO')
        return 1
    else:
        print('NEUTRO')
        return 0

aux=open("respuestas.txt","w")
aux.write("")
aux.close()

train=open("At.txt","r",encoding='UTF8')
sol=open("As.txt","r",encoding='UTF8')
dic={}
CasostotalesNeg=0#total de casos negativos
CasostotalesPos=0
WtotalesNeg=0#total de palabras consideradas negativas
WtotalesPos=0
n=7700#muestra de entrenamiento
desde=6930#inicio del bloque a comparar
hasta=7700#final del bloque a comparar

for i in range(0,n):
    if(i >= desde and i < hasta):
        train.readline()
        sol.readline()
        continue   
    linea=train.readline().split()
    print(linea)
    resp=sol.readline()
    print(str(i+1)+":   "+str(resp))
    if(int(resp)==1):
        WtotalesNeg=WtotalesNeg+len(linea)#palabras negativas totales en el entrenamiento
        CasostotalesNeg=CasostotalesNeg+int(resp)#casos totales negativos en el entrenamiento
    else:
        WtotalesPos=WtotalesPos+len(linea)#palabras positivas totales en el entrenamiento
        CasostotalesPos=CasostotalesPos+1#casos positivos totales en el entrenamiento
    for j in linea:
        if(j.lower() in dic):
            tmp=dic[j.lower()]
            tmp[0]=tmp[0]+1
            tmp[1]=tmp[1]+int(resp)
            dic[j.lower()]=tmp
        else:
            dic[j.lower()]=[1,int(resp)]
sol.close()
train.close()

dic2={}
dic2['el']=0
dic2['en']=0
dic2['le']=0
dic2['al']=0
dic2['la']=0
dic2['lo']=0
dic2['las']=0
dic2['les']=0
dic2['los']=0
dic2['ellos']=0
dic2['ellas']=0
dic2['mio']=0
dic2['mia']=0
dic2['su']=0
dic2['sus']=0
dic2['se']=0
dic2['si']=0
dic2['él']=0
dic2['ella']=0
dic2['de']=0
dic2['te']=0
dic2['mi']=0
dic2['y']=0
dic2['por']=0
dic2['a']=0
dic2['que']=0
dic2['me']=0

for z in dic2:
    if z in dic:
        del dic[z]

print(dic)

PtotalNeg=CasostotalesNeg/n#de todos los casos la prob de que sea neg
PtotalPos=1-PtotalNeg# // //    //     // //    //    //   pos


''' CODIGO PARA PROBAR UNA CADENA QUE INTRODUZCA EL USUARIO
cad=input("Introduzca la cadena a analizar:  ")

#print("casos totales  "+str(CasostotalesNeg))
print("total palabras negativas  "+str(WtotalesNeg))
print("total palabras positivas  "+str(WtotalesPos))
print("Palabras unicas  "+str(len(dic)))
print("Prob total de que sea neg  "+str(PtotalNeg))
print("Prob total de que sea pos  "+str(PtotalPos))

calcularPROB(cad,dic,WtotalesNeg,WtotalesPos,PtotalNeg,PtotalPos)
'''
At=open("At.txt","r",encoding='UTF8')
As=open("As.txt","r",encoding='UTF8')

for k in range(0,desde):
    At.readline()
    As.readline()

cont=0
for y in range(desde,hasta):
    cosa=False
    try:
        linea=At.readline()
        resp=As.readline()
        print(linea)
        cosa=True
    except UnicodeEncodeError:
        cosa=False
        #print("emoji")
    if(cosa==True):        
        escribe=str(calcularPROB(linea,dic,WtotalesNeg,WtotalesPos,PtotalNeg,PtotalPos))
        if((str(escribe)+"\n")==resp):
            cont=cont+1
    else:
        print(" ")
print("de "+str(hasta-desde)+" coincidieron "+str(cont))
At.close()
As.close()
