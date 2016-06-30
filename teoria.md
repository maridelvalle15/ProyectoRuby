# Estudiantes
### <10-10193> - <Mathieu De Valery>
### <11-10267> - <Marisela Del Valle>
[comment]: # "Si el grupo es de un solo integrante, elimine la linea anterior"
---
# Respuestas

> Los lenguajes de programación orientados a objetos que poseen herencia simple están limitados a incorporar comportamientos de un solo ancestro al momento de definir una clase.

Depende. Según la definición de lenguajes OO es cierta está afirmación. Pero en ruby, si tienes una clase B() que hereda de una clase A(), siempre es posible desde B() heredar cosas de la clase Object(), siendo esta la madre de todas las clases.
<[Si|No] [pero]...>

> Lenguajes de POO con un sistemas de tipos estático (C++, Java, C\#) no tienen la posibilidades de elegir la implementación de un método a tiempo de ejecución (despacho dinámico).

No, es común en los lenguajes orientados a objetos el despacho dinámico, ya que diferentes clases pueden tener diferentes implementaciones del mismo método (herencia común)
<[Si|No] [pero]...>

> La introspección y reflexibidad son conceptos que se manejan en la POO pero no guardar ninguna relación entre sí.

No. La introspección no existiría sin la presencia de la reflexión. La introspección depende de la reflexividad ya que para saber de que tipo eres, necesitas conocer la estructura que posees.
<[Si|No] [pero]...>

> En un lenguaje con un sistema de tipos dinámico la sobrecarga de métodos es innata y representa una comodidad dado que permite implementar un mismo método para distintos tipos.

No, no es coherente tener sobrecarga ya que las funciones se redefinen cada vez que son definidas.
<[Si|No] [pero]...>

> En los lenguajes POO existen los términos interfaz, módulo, clase abstracta, rol, etc; definidos como objetos que pueden encapsular definiciones de clases o implementaciones concretas de métodos.

No, es una clase abstracta, no puede haber una definición concreta de métodos y/o clases en una interfaz.
<[Si|No] [pero]...>

> Los métodos virtuales permiten asociar, al momento de compilar, una implementación de un método sobrecargado con una llamada del mismo; eliminando el **overhead** del despacho dinámico.

<[Si|No] [pero]...>

> Cuando un lenguaje de POO tiene herencia simple no ocurre el problema del diamante pero de igual forma pueden existir llamadas ambiguas de métodos, dado que incorporar interfaces, módulos, protocolos, etc, no evita colisión de nombres.

**Cierta primera parte, preguntar que la ultima es falsa.
<[Si|No] [pero]...>

> El paso de mensaje es un término que se maneja en modelos concurrentes, también de POO y es equivalente a la llamada de una función.

Falso, llamar una función es equivalente a un paso de mensaje, sólo cuando
este es síncrono. Si es asíncrono, no es equivalente.
<[Si|No] [pero]...>

> Sin importar la herencia del lenguaje de POO, una clase podría tener más de un ancestro.

Si. En el caso de herencia multiple una clase puede tener varios padres. Así mismo, una clase puede tener varios padres y dependiendo del lenguaje.
<[Si|No] [pero]...>