<TeXmacs|2.1.4>

<style|generic>

<\body>
  <section|Popcorn>

  <subsection|Popcorn SVF y Popcorn>

  <\itemize-dot>
    <item>Parametros:

    <math|<block*|<tformat|<table|<row|<cell|delta=<frac|\<rho\>|<wide|\<rho\>|\<bar\>>>-1>|<cell|modelo>|<cell|Cantidad>|<cell|min
    rad>|<cell|max rad>|<cell|shot noise>>|<row|<cell|-0.9>|<cell|svf
    popcorn>|<cell|19396>|<cell|10>|<cell|100>|<cell|no
    aplica>>|<row|<cell|-0.9>|<cell|real popcorn>|<cell|19356>|<cell|10>|<cell|100>|<cell|19>>|<row|<cell|-0.8>|<cell|svf
    popcorn>|<cell|20625>|<cell|10>|<cell|100>|<cell|no
    aplica>>|<row|<cell|-0.8>|<cell|real popcorn>|<cell|20617>|<cell|10>|<cell|100>|<cell|20>>|<row|<cell|-0.7>|<cell|>|<cell|76388>|<cell|>|<cell|>|<cell|>>|<row|<cell|-0.7>|<cell|>|<cell|
    76388>|<cell|>|<cell|>|<cell|20>>>>>>

    <item>Observaciones: La cantidad de voids que obtengo en real popcorn no
    es mucho menor que la de los popcorns esfericos. La hipotesis (a
    confirmar) es que esto es asi por la baja densidad que tienen los voids.
    Son de esta manera lo suficientemente chicos como para no producir
    overlap significativo.\ 
  </itemize-dot>

  <subsubsection|Void Size Funcion>

  Los resultados obtenidos para svf popcorn y popcorn en este ambito son
  practicamente parecidos, por la implementacion de buscador de r_eff y
  porque a <math|\<delta\>=-0.9> los resultados son similares.

  <\big-figure|<image|file:///home/fede/Pictures/Screenshots/Screenshot from
  2024-09-16 18-40-37.png|0.7par|||>>
    Void Size Function para Popcorn (no esferico)
  </big-figure>

  <\big-figure>
    <image|file:///home/fede/Pictures/Screenshots/Screenshot from 2024-09-16
    18-41-58.png|0.7par|||>
  <|big-figure>
    VSF de un svf popcorn (esferico)
  </big-figure>

  <\big-figure>
    <image|file:///home/fede/Pictures/Screenshots/Screenshot from 2024-09-16
    19-02-35.png|0.7par|||>
  <|big-figure>
    svf popcorn.
  </big-figure>

  <\big-figure|<image|file:///home/fede/Pictures/Screenshots/Screenshot from
  2024-09-16 19-15-35.png|0.7par|||>>
    real popcorn
  </big-figure>

  <\big-figure|<image|file:///home/fede/Pictures/Screenshots/Screenshot from
  2024-09-16 19-34-00.png|0.7par|||>>
    svf popcorn
  </big-figure>

  <\big-figure|<image|file:///home/fede/Pictures/Screenshots/Screenshot from
  2024-09-16 19-44-33.png|0.7par|||>>
    \;
  </big-figure>

  <subsubsection|Trazadores no me coinciden con los valores del box>

  IMPORTANTE: Los trazadores que me aparecen en popfile, los que
  supuestamente estan dentro de cada void no me coinciden con el box:

  <\big-figure|<image|file:///home/fede/Pictures/Screenshots/Screenshot from
  2024-09-16 18-31-11.png|0.7par|||>>
    Esta es un ejemplo de salida de popcorn. En la columna de numeros enteros
    tenemos el indice asociado a cada una. 1) Los trazadores dentro de cada
    void calculados con el metodo de r_eff de vftk (que dan el conjunto de
    tazadores como indices) no me dan ni la misma cantidad ni los mismos
    indices. REVISAR URGENTE.
  </big-figure>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-10|<tuple|1.1.2|?|../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-11|<tuple|7|?|../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|1.1|?|../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-3|<tuple|1.1.1|?|../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-4|<tuple|1|?|../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-5|<tuple|2|?|../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-6|<tuple|3|?|../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-7|<tuple|4|?|../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-8|<tuple|5|?|../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-9|<tuple|6|?|../.TeXmacs/texts/scratch/no_name_1.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Popcorn>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>