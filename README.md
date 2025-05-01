# CasoPracticoSQL
# Descripción General
Este análisis fue realizado para _Sabores del Mundo_, un restaurante reconocido por su auténtica cocina internacional y su ambiente acogedor. A principios de año, el restaurante lanzó un nuevo menú y comenzó a recopilar información detallada sobre las transacciones de sus clientes con el objetivo de identificar áreas de oportunidad.

Para poder identificar las áreas de oportunidad anteriormente mencionadas se tienen que responder algunas preguntas como:
1. ¿Qué productos fueron los más exitosos?
2. ¿Cuales generaron mayores ingresos?
3. ¿Qué categoría fue la más solicitada?

La mejor forma de responder estas preguntas fue mediante el análisis de los datos recolectados durante el año. Para facilitar este proceso, se exportó un archivo CSV con el conjunto de datos, el cual se utilizó para construir una base de datos estructurada en SQL y así generar tablas y consultas que permitieran extraer información relevante.

# Resultados
* Se realizó un join entre la tabla que contenia los pedidos del periodo analizado asi como del nuevo menu,esta union nos mostró alrededor de 12,000 filas, posterior a este se realizaron las siguientes consultas:
### 1. Analisis de popularidad de articulos del menu
Este análisis muestra los artículos más y menos solicitados del nuevo menú de Sabores del Mundo. La información se basa en la cantidad total de pedidos registrados durante el periodo evaluado.

Los __10 artículos más populares__ incluyen productos como el __Hamburger, Edamame y Korean Beef Bowl,Chesseburger__ todos con más de 580 unidades vendidas. Esto refleja una fuerte preferencia de los clientes por opciones tanto tradicionales como internacionales.

Por otro lado, los __10 artículos menos solicitados__ incluyen platillos como __Chicken Tacos, Potstickers y Cheese Lasagna__, con menos de 260 pedidos cada uno. Estos resultados permiten identificar aquellos productos con baja rotación, lo que puede ser útil para tomar decisiones sobre rediseño del menú, promoción específica o incluso sustitución de productos.

![image](https://github.com/user-attachments/assets/8cff72ba-62f8-4210-bdb6-92e8dcaf4f1b) ![image](https://github.com/user-attachments/assets/dc293ad1-d7f8-4cf2-a6ab-6113906c36f3)

### 2. Análisis de ingresos por articulo del menu
La siguiente tabla presenta los 10 artículos del nuevo menú que generaron mayores ingresos durante el periodo de análisis. Este estudio complementa el análisis de popularidad al enfocarse en el rendimiento económico de cada platillo. El __Korean Beef Bowl__ encabeza la lista con ingresos superiores a los $10,000, seguido por Spaghetti & Meatballs y Tofu Pad Thai. Este tipo de análisis permite al restaurante identificar cuáles productos no solo son populares, sino también rentables, facilitando decisiones sobre precios, promociones y estrategias de ventas.

![image](https://github.com/user-attachments/assets/e6ebd270-5bf4-4924-b954-174184e8132f)

### 3. Análisis de popularidad por categoria del menu
Esta tabla muestra la distribución de pedidos según las principales categorías del menú: Asian, Italian, Mexican y American. La categoría __Asian__ lidera en popularidad con 3,470 artículos vendidos, seguida de cerca por __Italian y Mexican__, ambas con cifras similares, y finalmente __American__.

Este análisis ayuda a entender las preferencias generales de los clientes en cuanto a tipos de cocina, lo que resulta útil para diseñar promociones temáticas, ajustar la oferta culinaria o incluso introducir nuevos productos alineados con las tendencias de consumo observadas.

![image](https://github.com/user-attachments/assets/b4f03a1b-1777-4671-9403-5bb1dddf1183)

### Comparativa de popularidad vs ingresos
Al comparar los artículos más pedidos con aquellos que generaron mayores ingresos, se pueden identificar patrones sobre la contribución de cada producto al desempeño general del menú. Algunos productos, como el __Korean Beef Bowl y el Cheeseburger__, _destacan_ tanto en volumen de pedidos como en ingresos, lo que los posiciona como elementos clave en la oferta actual.

En cambio, platillos como el __Spaghetti & Meatballs y el Tofu Pad Thai__ no figuran entre los más pedidos, pero sí aparecen entre los _más lucrativos_, lo que podría estar relacionado con un precio más elevado. Por otro lado, artículos como French Fries y Edamame presentan una alta demanda, pero no se encuentran entre los que más ingresos generan, lo que sugiere una menor contribución económica en términos absolutos.

Aunque no se cuenta con información sobre márgenes de ganancia o costos asociados, este cruce de datos permite al restaurante detectar productos de alto impacto en ventas y evaluar oportunidades para rediseñar el menú o enfocar promociones de forma más estratégica.
