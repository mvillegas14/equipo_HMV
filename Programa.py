emplea=[]
cal=[]
colores=[]
a=255
def obtener_caracter_hexadecimal(valor):
    valor = str(valor)
    equivalencias = {
        "10": "a",
        "11": "b",
        "12": "c",
        "13": "d",
        "14": "e",
        "15": "f",
    }
    if valor in equivalencias:
        return equivalencias[valor]
    else:
        return valor
def decimal_a_hexadecimal(decimal):
    hexadecimal = ""
    while decimal > 0:
        residuo = decimal % 16
        verdadero_caracter = obtener_caracter_hexadecimal(residuo)
        hexadecimal = verdadero_caracter + hexadecimal
        decimal = int(decimal / 16)
    return hexadecimal
while True:
    print("--------------------------------\nMenu\n1.Ingresar Empleado \n2.Calificar empleado \n3. Ver calificaciones\n------------------------------")
    opc=int(input())
    if opc == 1:
        emplea.append(input("Inserte nombre completo empleado:\n"))
    elif opc == 2:
        if len(emplea)== 0:
            print("No hay empleados disponibles")
        else:
            print("Seleccione empleado a calificar:")
            for i in emplea:
                print(emplea.index(i)+1, i)
            slcEmp=int(input())
            with open('a1.txt','r') as pa:
                for i in pa:
                    print(i)
                    print("1. Muy de acuerdo\n2. De acuerdo\n3. Desacuerdo\n4. Inconformidad total")
                    ajuste=int(input())
                    if ajuste == 1:
                        a+=2088928.125
                    elif ajuste == 2:
                        a+=35584
                    elif ajuste == 3:
                        a+=21760
                    elif ajuste == 4:
                        a+=12800
                color=decimal_a_hexadecimal(a)
                cal.append((color,slcEmp-1))
    elif opc == 3:
        if len(cal)==0:
            print("No hay calificaciones disponibles")
        else:
            for j in cal:
                print("LISTA CALIFICACIONES:\n",emplea[j[1]], j[0])
                
                
    
