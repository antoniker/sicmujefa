# sicmujefa
Sistema Integral para el control del Programa Mujeres Empoderadas
Plan de Desarrollo Software

Versión 1.0



Historial de Revisiones

Fecha	Versión	Descripción	Autor
29/06/2016	0.9	Versión preliminar como propuesta de desarrollo.	

 
Tabla de Contenidos
1.	Introducción	4
1.1	Propósito	4
1.2	Alcance	4
1.3	Resumen	5
2.	Vista General del Proyecto	5
2.1	Propósito, Alcance y Objetivos	5
2.2	Suposiciones y Restricciones	6
2.3	Entregables del proyecto	7
2.4	Evolución del Plan de Desarrollo del Software	8
3.	Organización del Proyecto	9
3.1	Participantes en el Proyecto	9
3.2	Roles y Responsabilidades	9
4.	Gestión del Proceso	10
4.1	Estimaciones del Proyecto	10
4.2	Plan del Proyecto	10
4.2.1	Plan de las Fases	10
4.2.2	Calendario del Proyecto	12
4.3	Seguimiento y Control del Proyecto	14
 
Plan de Desarrollo de Software

1.	Introducción
Este Plan de Desarrollo del Software es una versión preliminar preparada para ser incluida en la propuesta elaborada como respuesta al reto Mujeres Empoderadas como parte del programa Apoyo a Mujeres Jefas de Familia, por parte de la Secretaría de Desarrollo e Integración Social del Gobierno del Estado de Jalisco. Este documento provee una visión global del enfoque de desarrollo propuesto. 
El proyecto ha sido basado en una metodología de Rational Unified Process. Es importante destacar esto puesto que utilizaremos la terminología RUP en este documento. Se incluirá el detalle para las fases de Inicio y Elaboración y adicionalmente se esbozarán las fases posteriores de Construcción y Transición para dar una visión global de todo proceso. 
El enfoque desarrollo propuesto constituye una configuración del proceso RUP de acuerdo a las características del reto, seleccionando los roles de los participantes, las actividades a realizar y los artefactos (entregables) que serán generados. Este documento es a su vez uno de los artefactos de RUP.
1.1	Propósito
El propósito del Plan de Desarrollo de Software es proporcionar la información necesaria para controlar el proyecto. En él se describe el enfoque de desarrollo del software.
Los usuarios del Plan de Desarrollo del Software son: 
•	El jefe del proyecto lo utiliza para organizar la agenda y necesidades de recursos, y para realizar su seguimiento. 
•	Los miembros del equipo de desarrollo lo usan para entender lo qué deben hacer, cuándo deben hacerlo y qué otras actividades dependen de ello. 
1.2	Alcance
El Plan de Desarrollo del Software describe el plan global usado para el desarrollo del “Sistema Integral para el control del programa Mujeres Empoderadas”. Para la versión 1.0 del Plan de Desarrollo del Software, nos hemos basado en las reglas de operación del programa “APOYO A MUJERES JEFAS DE FAMILIA” par el ejercicio fiscal 2016. Publicadas en el periódico oficial del estado de Jalisco. Además de los requisitos y bases publicadas en la página retos.jalisco. El avance del proyecto y el seguimiento en cada una de las iteraciones ocasionará el ajuste de este documento produciendo nuevas versiones actualizadas.
 
1.3	Resumen
Después de esta introducción, el resto del documento está organizado en las siguientes secciones:
Vista General del Proyecto — proporciona una descripción del propósito, alcance y objetivos del proyecto, estableciendo los artefactos que serán producidos y utilizados durante el proyecto..
Organización del Proyecto — describe la estructura organizacional del equipo de desarrollo.
Gestión del Proceso — explica los costos y planificación estimada, define las fases e hitos del proyecto y describe cómo se realizará su seguimiento.
Planes y Guías de aplicación — proporciona una vista global del proceso de desarrollo de software, incluyendo métodos, herramientas y técnicas que serán utilizadas.

2.	Vista General del Proyecto
2.1	Propósito, Alcance y Objetivos
La información que a continuación se incluye ha sido extraída de las reglas de operación del programa “APOYO A MUJERES JEFAS DE FAMILIA” par el ejercicio fiscal 2016. Publicadas en el periódico oficial del estado de Jalisco. Además de los requisitos y bases publicadas en la página retos.jalisco.
La Secretaría de Desarrollo e Integración Social del estado de Jalisco, en alineación con el plan estatal de desarrollo tiene bajo su responsabilidad el programa “ Apoyo a Mujeres Jefas de Familia”. Cuyo objetivo general es el de mejorar los ingresos de los hogares de jefatura femenina con dependientes menores de edad, en condiciones de vulnerabilidad por ingresos, preferentemente monoparentales, que habiten en los 125 municipios de Jalisco, con el fin de contribuir a aumentar sus recursos disponibles para la puesta en marcha de estrategias de sobrevivencia contra la pobreza. Es necesario adaptarse a los nuevos sistemas de información y a la evolución tecnológica. Por ello, La Secretaría de Desarrollo e Integración Social del Estado de Jalisco considera necesario el desarrollo de una herramienta  que permita establecer un mejor control y seguimiento de cada una de las beneficiarias del programa “Madres Jefas de Familia” con el propósito de saber cual ha sido su comportamiento dentro del mismo. Por tanto los solicitantes demandan una gestión más rápida, automática y segura de las gestiones de programa. 
El proyecto debe proporcionar una propuesta para el desarrollo de todos los subsistemas implicados en el programa. Estos subsistemas se pueden diferenciar en tres grandes bloques: 
a)	Registro y seguimiento de solicitudes :
•	Procedimiento de registro al programa.
•	Procedimiento de evaluación y dictaminación.
•	Procedimiento de Seguimiento 
b)    Comunidad de Mujeres:
•	Gestión de convocatorias, cursos y actividades.
•	Gestión de comunicación.
•	Gestión de redes sociales.
•	Gestión de mejoras.
 
c)	Publico en general:
•	Procedimiento de pre-registro al programa 
•	Información y estadísticas .

2.2	Suposiciones y Restricciones
Las suposiciones y restricciones respecto del sistema, y que se derivan directamente de las entrevistas con el stakeholder de la empresa son:
a)	Debe contemplarse las implicaciones de los siguientes puntos críticos:
•	Compatibilidad de la solución con diferentes dispositivos móviles.
•	Sistemas seguros: protección de información, seguridad en las trasmisiones de datos (PKI), etc.
•	Gestión de flujos de trabajo, seguridad de transacciones e intercambio de información
•	Adaptación a la normativa de Protección de Datos
b)	La automatización de la gestión interna del registro debe ajustarse a la legislación vigente y considerar la previsión de la nueva legislación referente a los dominios de tercer nivel.
Como es natural, la lista de suposiciones y restricciones se incrementará durante el desarrollo del proyecto, particularmente una vez establecido el artefacto “Visión”.
 
2.3	Entregables del proyecto
A continuación se indican  y describen cada uno de los artefactos que serán generados y utilizados por el proyecto y que constituyen los entregables. Esta lista constituye la configuración de RUP desde la perspectiva de artefactos, y que proponemos para este proyecto.  

Es preciso destacar que de acuerdo a la filosofía de RUP (y de todo proceso iterativo e incremental), todos los artefactos son objeto de modificaciones a lo largo del proceso de desarrollo, con lo cual, sólo al término del proceso podríamos tener una versión definitiva y completa de cada uno de ellos. Sin embargo, el resultado de cada iteración y los hitos del proyecto están enfocados a conseguir un cierto grado de completitud y estabilidad de los artefactos. Esto será indicado más adelante cuando se presenten los objetivos de cada iteración.

1)	Plan de Desarrollo del Software
Es el presente documento.

2)	Modelo de Casos de Uso del Negocio
Es un modelo de las funciones de negocio vistas desde la perspectiva de los actores externos (Agentes de registro, solicitantes finales, otros sistemas etc.). permite situar al sistema en el contexto organizacional haciendo énfasis en los objetivos en este ámbito. Este modelo se representa con un Diagrama de Casos de Uso usando estereotipos específicos para este modelo.

3)	Glosario
Es un documento que define los principales términos  usados en el proyecto. Permite establecer una terminología consensuada. .

4)	Modelo de Casos de Uso
El modelo de Casos de Uso presenta las funciones del sistema y los actores que hacen uso de ellas. Se representa mediante Diagramas de Casos de Uso. 

5)	Visión
Este documento define la visión del producto desde la perspectiva del cliente, especificando las necesidades y características del producto. Constituye una base de acuerdo en cuanto a los requisitos del sistema.
 
6)	Prototipos de Interfaces de Usuario
Se trata de prototipos que permiten al usuario hacerse una idea más o menos precisa de las interfaces que proveerá el sistema y así, conseguir retroalimentación de su parte respecto a los requisitos del sistema. 
 
7)	Modelo de Datos 
Previendo que la persistencia de la información del sistema será soportada por una base de datos relacional, este modelo describe la representación lógica de los datos persistentes, de acuerdo con el enfoque para modelado relacional de datos. 

8)	Modelo de Implementación
Este modelo es una colección de componentes y los subsistemas que los contienen. Estos componentes incluyen: ficheros ejecutables, ficheros de código fuente, y todo otro tipo de ficheros necesarios para la implantación y despliegue del sistema. (Este modelo es sólo una versión preliminar al final de la fase de Elaboración, posteriormente tiene bastante refinamiento).

9)	Modelo de Despliegue
Este modelo muestra el despliegue la configuración de tipos de nodos del sistema, en los cuales se hará el despliegue de los componentes.

10)	Casos de Prueba
Cada prueba es especificada mediante un documento que establece las condiciones de ejecución, las entradas de la prueba, y los resultados esperados. Estos casos de prueba son aplicados como pruebas de regresión en cada iteración. Cada caso de prueba llevará asociado un procedimiento de prueba con las instrucciones para realizar la prueba, y dependiendo del tipo de prueba dicho procedimiento podrá ser automatizable mediante un script de prueba.

11)	Solicitud de Cambio
Los cambios propuestos para los artefactos se formalizan mediante este documento. Mediante este documento se hace un seguimiento de los defectos detectados, solicitud de mejoras o cambios en los requisitos del producto. Así se provee un registro de decisiones de cambios, de su evaluación e impacto, y se asegura que éstos sean conocidos por el equipo de desarrollo. Los cambios se establecen respecto de la última baseline (el estado del conjunto de los artefactos en un momento determinado del proyecto) establecida. En nuestro caso al final de cada iteración se establecerá una baseline.

12)	Plan de Iteración
Es un conjunto de actividades y tareas ordenadas temporalmente, con recursos asignados, dependencias entre ellas. Se realiza para cada iteración, y para todas las fases.

13)	Evaluación de Iteración
Este documento incluye le evaluación de los resultados de cada iteración, el grado en el cual se han conseguido los objetivos de la iteración, las lecciones aprendidas y los cambios a ser realizados.

14)	Manual de Instalación
Este documento incluye las instrucciones para realizar la instalación del producto.

15)	Material de Apoyo al Usuario Final
Corresponde a un conjunto de documentos y facilidades de uso del sistema, incluyendo: Guías del Usuario, Guías de Operación, Guías de Mantenimiento y Sistema de Ayuda en Línea 

16)	Producto
Los ficheros del producto empaquetados y almacenadas en un CD con los mecanismos apropiados para facilitar su instalación. El producto, a partir de la primera iteración de la fase de Construcción es desarrollado incremental e iterativamente, obteniéndose una nueva release al final de cada iteración.


2.4	Evolución del Plan de Desarrollo del Software
El Plan de Desarrollo del Software se revisará semanalmente y se refinará antes del comienzo de cada iteración.




3.	Organización del Proyecto
3.1	Participantes en el Proyecto
De momento no se incluye el personal que designará por parte de los encargados del reto de mujeres empoderadas como Responsable del Proyecto, otros participantes que se estimen convenientes para proporcionar los requisitos y validar el sistema.
Jefe de Proyecto. 
Analista de Sistemas. 
Analistas - Programadores. 
3.2	Roles y Responsabilidades
A continuación se describen las principales responsabilidades de cada uno de los puestos en el equipo de desarrollo durante las fases de Inicio y Elaboración, de acuerdo con los roles que desempeñan en RUP.

Puesto	Responsabilidad
Jefe de Proyecto	El jefe de proyecto asigna los recursos, gestiona las prioridades, coordina las interacciones con los clientes y usuarios, y mantiene al equipo del proyecto enfocado en los objetivos. El jefe de proyecto también establece un conjunto de prácticas que aseguran la integridad y calidad de los artefactos del proyecto. Además, el jefe de proyecto se encargará de supervisar el establecimiento de la arquitectura del sistema. Gestión de riesgos. Planificación y control del proyecto.
Analista de Sistemas	Captura, especificación y validación de requisitos, interactuando con el cliente y los usuarios mediante entrevistas. Elaboración del Modelo de Análisis y Diseño. Colaboración en la elaboración de las pruebas funcionales y el modelo de datos. 





4.	Gestión del Proceso
4.1	Estimaciones del Proyecto
El presupuesto del proyecto y los recursos involucrados se adjuntan en un documento separado.
4.2	Plan del Proyecto
En esta sección se presenta la organización en fases e iteraciones y el calendario del proyecto.
4.2.1	Plan de las Fases
El desarrollo se llevará a cabo en base a fases con una o más iteraciones en cada una de ellas. La siguiente tabla muestra una la distribución de tiempos y el número de iteraciones de cada fase (para las fases de Construcción y Transición es sólo una aproximación muy preliminar)
Fase	Nro. 
Iteraciones	Duración
Fase de Inicio	1	1 semanas 
Fase de Elaboración	1	1 semanas
Fase de Construcción	2	6 semanas
Fase de Transición	-	-
Los hitos que marcan el final de cada fase se describen en la siguiente tabla.
Descripción	Hito
Fase de Inicio	En esta fase desarrollará los requisitos del producto desde la perspectiva del usuario, los cuales serán establecidos en el artefacto Visión. Los principales casos de uso serán identificados y se hará un refinamiento del Plan de Desarrollo del Proyecto. La aceptación del cliente / usuario del artefacto Visión y el Plan de Desarrollo marcan el final de esta fase.
Fase de Elaboración	En esta fase se analizan los requisitos y se desarrolla un prototipo de arquitectura (incluyendo las partes más relevantes y / o críticas del sistema). Al final de esta fase, todos los casos de uso correspondientes a requisitos que serán implementados en la primera release de la fase de Construcción deben estar analizados y diseñados (en el Modelo de Análisis / Diseño). La revisión y aceptación del prototipo de la arquitectura del sistema marca el final de esta fase. En nuestro caso particular, por no incluirse las fases siguientes, la revisión y entrega de todos los artefactos hasta este punto de desarrollo también se incluye como hito. La primera iteración tendrá como objetivo la identificación y especificación de los principales casos de uso, así como su realización preliminar en el Modelo de Análisis / Diseño, también permitirá hacer una revisión general del estado de los artefactos hasta este punto y ajustar si es necesario la planificación para asegurar el cumplimiento de los objetivos. Ambas iteraciones tendrán una duración de una semana.
Fase de Construcción	En esta fase se inicia con el proceso de elaboración del software en donde se plasman todos los requerimientos y los casos de uso previamente autorizados analizan los requisitos y se desarrolla un prototipo de arquitectura, 
 
Fase de Construcción	Durante la fase de construcción se terminan de analizar y diseñar todos los casos de uso, refinando el Modelo de Análisis / Diseño. El producto se construye en base a 2 iteraciones, cada una produciendo una release a la cual se le aplican las pruebas y se valida con el cliente / usuario. Se comienza la elaboración de material de apoyo al usuario. El hito que marca el fin de esta fase es la versión de la release 3.0, con la capacidad operacional parcial del producto que se haya considerado como crítica, lista para ser entregada a los usuarios para pruebas beta.

4.2.2	Calendario del Proyecto
A continuación se presenta un calendario de las principales tareas del proyecto incluyendo sólo las fases de Inicio y Elaboración. Como se ha comentado, el proceso iterativo e incremental de RUP está caracterizado por la realización en paralelo de todas las disciplinas de desarrollo a lo largo del proyecto, con lo cual la mayoría de los artefactos son generados muy tempranamente en el proyecto pero van desarrollándose en mayor o menor grado de acuerdo a la fase e iteración del proyecto. La siguiente figura ilustra este enfoque, en ella lo ensombrecido marca el énfasis de cada disciplina (workflow) en un momento determinado del desarrollo.
 

 
Para este proyecto se ha establecido el siguiente calendario. La fecha de aprobación indica cuándo el artefacto en cuestión tiene un estado de completitud suficiente para someterse a revisión y aprobación, pero esto no quita la posibilidad de su posterior refinamiento y cambios. 

Disciplinas / Artefactos generados o modificados 
durante  la Fase de Inicio	Comienzo	Aprobación
Modelado del Negocio		
Modelo de Casos de Uso del Negocio y Modelo de Objetos del Negocio	Semana  1
	
Requisitos		
Glosario	Semana 1
	
Visión	Semana 2
	
Modelo de Casos de Uso	Semana 2
	
Análisis / Diseño		
Modelo de Análisis / Diseño	Semana 2
	
Modelo de Datos	Semana 2
	
Construcción		
Interface Publico en general	Semana 3 
	
Interface Administrador	Semana 4 y 5
	
Interface Comunidad de Mujeres	Semana 6
	
Pruebas		
Casos de Pruebas Funcionales	Semana 7
	
Despliegue		
Modelo de Despliegue	Semana 8 
	
Gestión de Cambios y Configuración	Durante todo el proyecto
Ambiente	Durante todo el proyecto


 
4.3	Seguimiento y Control del Proyecto
Gestión de Requisitos
Los requisitos del sistema son especificados en el artefacto Visión. Cada requisito tendrá una serie de atributos tales como importancia, estado, iteración donde se implementa, etc. Estos atributos permitirán realizar un efectivo seguimiento de cada requisito. Los cambios en los requisitos serán gestionados mediante una Solicitud de Cambio, las cuales serán evaluadas y distribuidas para asegurar la integridad del sistema y el correcto proceso de gestión de configuración y cambios. 
Control de Plazos
El calendario del proyecto tendrá un seguimiento y evaluación semanal por el jefe de proyecto y por el Comité de Seguimiento y Control.
Control de Calidad
Los defectos detectados en las revisiones y formalizados también en una Solicitud de Cambio tendrán un seguimiento para asegurar la conformidad respecto de la solución de dichas deficiencias Para la revisión de cada artefacto y su correspondiente garantía de calidad se utilizarán las guías de revisión y checklist (listas de verificación) incluidas en RUP.
