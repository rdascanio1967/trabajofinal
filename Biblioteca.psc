// ********************************************
// menu control de stock de biblioteca
// *********************************************
Funcion menubiblio()
	Definir titulo,autor Como Caracter
	Definir id,cantidad,j,cont,opc Como Entero
	j <- 1
	cont <- 0
	Escribir '*********************************************'
	Escribir '*   BIENVENIDO INGRESASTE AL SISTEMA DE     *'
	Escribir '*         GESTION DE LA BIBLIOTECA          *'
	Escribir '*********************************************'
	Dimension idl[100]
	Dimension titulo[100]
	Dimension autor[100]
	Dimension cantidad[100]
	Repetir
		Escribir ' '
		Escribir 'Elige la opcion deseada'
		Escribir '[1] Ingresar nuevo libro'
		Escribir '[2] Modificar datos'
		Escribir '[3] Buscar libros'
		Escribir '[4] listar libros'
		Escribir '[5] volver al menu principal'
		Leer opc
		Segun opc  Hacer
			1:
				ingresarLibro(j,idl,titulo,autor,cantidad)
				j <- j+1
				cont <- cont+1
			2:
				ModifLibros(j,cont,idl,titulo,autor,cantidad)
			3:
				buscarLibros(j,cont,titulo,autor,cantidad)
			4:
				listarLibros(j,cont,idl,titulo,autor,cantidad)
			5:
				Escribir 'Hasta pronto'
			De Otro Modo:
				Escribir 'Opcion invalida'
		FinSegun
	Hasta Que (op=4)
FinFuncion

Funcion ingresarLibro(j,idl,titulo,autor,cantidad)
	Escribir 'Ud a ingresado al modulo de ingreso de libros a la biblioteca'
	Escribir 'Elija una opcion:'
	Escribir '[1] Ingreso'
	Escribir '[2] volve almenu anterior'
	Leer a
	Segun a  Hacer
		1:
			Escribir 'Ingresa los datos del libro ',j
			Escribir 'ingresa el id del usario'
			Leer idl[j]
			Escribir 'ingresa el titulo del libro'
			Leer titulo[j]
			Escribir 'ingresa el autor del libro'
			Leer autor[j]
			Escribir 'ingresa la cantidad de ejemplares'
			Leer cantidad[j]
		2:
			menubiblio()
		De Otro Modo:
			Escribir 'Opcion invalida'
			ingresarLibro(j,idl,titulo,autor,cantidad)
	FinSegun
FinFuncion

Funcion ModifLibros(j,cont,idl,titulo,autor,cantidad)
	Definir libroModif,lmodif Como Caracter
	Escribir 'Elija la opcion deseada'
	Escribir '[1]modificar titulo'
	Escribir '[2]modificar autor'
	Escribir '[3]modificar cantidad'
	Escribir '[4]volver al menu anterior'
	Leer modif
	Segun modif  Hacer
		1:
			Modiftitulo(j,idl,titulo,autor,cantidad)
		2:
			Modifautor(j,idl,titulo,autor,cantidad)
		3:
			Modifcantidad(j,idl,titulo,autor,cantidad)
		4:
			menubiblio()
		De Otro Modo:
			Escribir 'Opcion incorrecta'
	FinSegun
FinFuncion

Funcion Modifautor(j,idl,titulo,autor,cantidad)
	Escribir 'Escriba el id del libro que desea modificar el autor'
	Leer idlaModificar
	u <- 1
	b <- 1
	Repetir
		idl1 <- idl[b]
		Escribir 'este es el id del libro que desea nodificar el autor',idl1
		b <- b+1
	Hasta Que (idlaModificar==idl1)
	b <- b-1
	Escribir b
	Escribir 'El libro buscado es:'
	Escribir titulo[b],' ',autor[b],' ',cantidad[b]
	Escribir 'Está seguro que desea modificar'
	Escribir '[1] si'
	Escribir '[2] no'
	Leer seguro
	Si seguro==1 Entonces
		Escribir 'Escriba el autor nuevo'
		Leer autorNuevo
		autor[b] <- autorNuevo
		Escribir 'El registro quedo asi: '
		Escribir titulo[b],' ',autor[b],' ',cantidad[b]
	SiNo
		ModifLibros(j,cont,idl,titulo,autor,cantidad)
	FinSi
FinFuncion

Funcion Modifcantidad(j,idl,titulo,autor,cantidad)
	Escribir 'Escriba el id del libro que desea modificar el titulo'
	Leer idlaModificar
	u <- 1
	b <- 1
	Repetir
		Escribir b
		idl1 <- idl[b]
		Escribir idl1
		Escribir 'este es el id del titulo que desea nodificar',idl1
		b <- b+1
	Hasta Que (idlaModificar==idl1)
	b <- b-1
	Escribir b
	Escribir 'El libro buscado es:'
	Escribir titulo[b],' ',autor[b],' ',cantidad[b]
	Escribir 'Está seguro que desea modificar'
	Escribir '[1] si'
	Escribir '[2] no'
	Leer seguro
	Si seguro==1 Entonces
		Escribir 'Escriba la cantidad nueva'
		Leer cantidadNueva
		cantidad[b] <- cantidadNueva
		Escribir 'El registro quedo asi: '
		Escribir titulo[b],' ',autor[b],' ',cantidad[b]
	SiNo
		ModifLibros(j,cont,idl,titulo,autor,cantidad)
	FinSi
FinFuncion

Funcion Modiftitulo(j,idl,titulo,autor,cantidad)
	Escribir 'Escriba el id del libro que desea modificar el titulo'
	Leer idlaModificar
	u <- 1
	b <- 1
	Repetir
		Escribir b
		idl1 <- idl[b]
		Escribir idl1
		Escribir 'este es el id del titulo que desea nodificar',idl1
		b <- b+1
	Hasta Que (idlaModificar==idl1)
	b <- b-1
	Escribir b
	Escribir 'El libro buscado es:'
	Escribir titulo[b],' ',autor[b],' ',cantidad[b]
	Escribir 'Está seguro que desea modificar'
	Escribir '[1] si'
	Escribir '[2] no'
	Leer seguro
	Si seguro==1 Entonces
		Escribir 'Escriba el titulo nuevo'
		Leer tituloNuevo
		titulo[b] <- tituloNuevo
		Escribir 'El registro quedo asi: '
		Escribir titulo[b],' ',autor[b],' ',cantidad[b]
	SiNo
		ModifLibros(j,cont,idl,titulo,autor,cantidad)
	FinSi
FinFuncion

Funcion listarLibros(j,cont,idl,titulo,autor,cantidad)
	Si (cont>0) Entonces
		Escribir 'Listado de libros de la biblioteca ',cont
		Para f<-1 Hasta j Hacer
			Escribir idl[f],' ',titulo[f],' ',autor[f],' ',cantidad[f]
		FinPara
	SiNo
		Escribir 'No hay registros'
	FinSi
FinFuncion

Funcion buscarLibros(j,cont,titulo,autor,cantidad)
	Definir libroBuscar,lverificar Como Caracter
	Escribir 'Escriba el nombre del libro que desea buscar'
	Leer libroBuscar
	u <- 1
	b <- 1
	Repetir
		Escribir b
		lverificar <- titulo[b]
		Escribir 'este es el titulo que ingreso',libroBuscar
		b <- b+1
	Hasta Que (libroBuscar==lverificar)
	b <- b-1
	Escribir b
	Escribir 'El libro buscado es:'
	Escribir titulo[b],' ',autor[b],' ',cantidad[b]
FinFuncion

// *****************************************
// regitro de usuarios
// *****************************************
Funcion registraUsuario(id,usuario,contrasenia,i)
	Escribir 'Ingresa los datos del usario ',i
	Escribir 'ingresa el id del usario'
	Leer id[i]
	Escribir 'ingresa el nombre usario'
	Leer usuario[i]
	Escribir 'ingresa la contraseña del usario'
	Leer contrasenia[i]
	Escribir 'Registro Exitoso'
FinFuncion

Funcion validarUsuario (usuario,contrasenia,i)
	Definir uCliente,uVerificar,cCliente,ucVerificar Como Caracter
	Escribir 'Para enrar al sistema ingrese usuario y contraseña'
	Escribir 'Ingrese su usuario'
	Leer uCliente
	Escribir 'Ingrese su contraseña'
	Leer cCliente
	u <- 1
	a <- 1
	Repetir
		Escribir a
		uVerificar <- usuario[a]
		Escribir 'este es el usuario que ingreso',uCliente
		a <- a+1
	Hasta Que (uCliente==uVerificar)
	a <- a-1
	Escribir a
	ucVerificar <- contrasenia[a]
	uVerificar <- usuario[a]
	Si (uCliente==uVerificar) Y (cCliente==ucVerificar) Entonces
		Escribir 'Ingreso Exitoso'
		menubiblio()
	SiNo
		Escribir 'Ud a ingresado mal su usuario o contraseña'
	FinSi
FinFuncion

Funcion mostrarUsuario(id,usuario,contrasenia,i,cont)
	Si (cont>0) Entonces
		Escribir 'Regsitros Actuales ',cont
		Para f<-1 Hasta i Hacer
			Escribir id[f],' ',usuario[f],' ',contrasenia[f]
		FinPara
	SiNo
		Escribir 'No hay registros'
	FinSi
FinFuncion

Algoritmo Biblioteca
	Definir usuario,contrasenia Como Caracter
	Definir i,cont,op Como Entero
	i <- 1
	cont <- 0
	Escribir 'Bienvenido al registro de usuarios'
	Dimension id[100]
	Dimension usuario[100]
	Dimension contrasenia[100]
	Repetir
		Escribir 'Elige la opcion deseada'
		Escribir '[1] Crear usuario'
		Escribir '[2] Mostrar usuarios'
		Escribir '[3] Ingreso al sistema'
		Escribir '[4] Salir'
		Leer op
		Segun op  Hacer
			1:
				registraUsuario(id,usuario,contrasenia,i)
				i <- i+1
				cont <- cont+1
			2:
				mostrarUsuario(id,usuario,contrasenia,i,cont)
			3:
				validarUsuario(usuario,contrasenia,i)
			4:
				Escribir 'Hasta pronto'
			De Otro Modo:
				Escribir 'Opcion invalida'
		FinSegun
	Hasta Que (op=4)
FinAlgoritmo
