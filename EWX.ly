\version "2.22.0"

\header {
  title = "Infografía: Técnicas Armónicas de Debussy"
  subtitle = "Guía Visual de Ejemplos para la Composición"
  tagline = ""
}

\paper {
  indent = 0\mm
  ragged-right = ##f
  score-system-spacing = #'((basic-distance . 12) (minimum-distance . 8) (padding . 2) (stretchability . 20))
}

\score {
  \new PianoStaff <<
    
    % --- MANO DERECHA (Clave de Sol) ---
    \new Staff = "up" {
      \clef treble
      \accidentalStyle modern
      
      % --- EJEMPLO 1: Clair de lune (Ingravidez inicial, s/bajo) ---
      \tempo "Ejemplo 1: Clair de lune (Diatónico/Ingrávido)"
      \key des \major
      \time 9/8
      r4. <f' aes'>4( <f' des''>8 <f' c''>4 <f' des''>8) |
      <f' aes'>4. s4. s4. | 
      \bar "||" \break
      
      % --- EJEMPLO 2: Arabesque nº1 (Mixturas/Paralelismos) ---
      \tempo "Ejemplo 2: Arabesque nº1 (Paralelismo de bloques)"
      \key e \major
      \time 4/4
      \relative c'' {
        <g b e>4 <a c f> <b d g> <c e a> |
        <d f b>2 <e g c> \bar "||" \break
      }
      
      % --- EJEMPLO 3: Pagodes (Pentatonismo y 3 planos) ---
      \tempo "Ejemplo 3: Pagodes (Pentatónico - Plano Agudo y Medio)"
      \key b \major
      \time 4/4
      <<
        { \relative c''' { \tuplet 6/4 { b16[ gis fis e dis b] } \tuplet 6/4 { b'[ gis fis e dis b] } b'2 } }
        \\
        { \relative c'' { fis4 dis fis dis } }
      >>
      \bar "||" \break
      
      % --- EJEMPLO 4: Voiles (Escala hexátona o tonos enteros) ---
      \tempo "Ejemplo 4: Voiles (Escala de Tonos Enteros)"
      \time 2/4
      \relative c'' {
        c32[ d e fis gis ais c d] e[ d c ais gis fis e d] |
        <c e gis>4 <d fis ais>8 <e gis c>4. |
      }
      \bar "||" \break
      
      % --- EJEMPLO 5: La cathédrale engloutie (Paralelismo estricto) ---
      \tempo "Ejemplo 5: La cathédrale engloutie (Quintas/Octavas paralelas)"
      \key b \major
      \time 6/4
      <b' e' b''>2 <cis' fis' cis''> <dis' gis' dis''> |
      <e' b' e''>1. |
      \bar "||" \break
      
      % --- EJEMPLO 6: La sérenade interrompue (Modo Frigio Mayor) ---
      \tempo "Ejemplo 6: La sérenade interrompue (Color Flamenco)"
      \key f \minor
      \time 2/4
      \relative c'' {
        \textLengthOn
        des8^\markup { "Punteo modal" } c16 b des8 c |
        <bes des f>4^\markup { "Rasgueo" } <g b e> |
      }
      \bar "||" \break
      
      % --- EJEMPLO 7: Golliwogg's Cakewalk (Síncopas / Ragtime) ---
      \tempo "Ejemplo 7: Golliwogg's Cakewalk (Síncopas y Novenas)"
      \key es \major
      \time 2/4
      \relative c'' {
        r8 <g bes des f>8^\markup { "Acorde Novena" } ~ <g bes des f>16[ es' c8] |
        r8 <g bes des f>8 ~ <g bes des f>16[ es' c8] |
      }
      \bar "|."
    }
    
    % --- MANO IZQUIERDA (Clave de Fa) ---
    \new Staff = "down" {
      \clef bass
      
      % Ejemplo 1
      \key des \major
      \time 9/8
      R1*9/8 |
      r4. <des f aes>4( <des f aes>8 <des f aes>4.) |
      
      % Ejemplo 2
      \key e \major
      \time 4/4
      <e, b,>4 <f, c> <g, d> <a, e> |
      <b, fis>2 <c g> |
      
      % Ejemplo 3
      \key b \major
      \time 4/4
      <b,, b,>1^\markup { "Bajo Profundo Resonante" } |
      
      % Ejemplo 4
      \time 2/4
      <c, c>2_~ |
      <c, c>4 r |
      
      % Ejemplo 5
      \key b \major
      \time 6/4
      <b,, e, b,>2 <cis, fis, cis> <dis, gis, dis> |
      <e, b, e>1. |
      
      % Ejemplo 6
      \key f \minor
      \time 2/4
      f,4 r |
      <c, g,> <c, g,> |
      
      % Ejemplo 7
      \key es \major
      \time 2/4
      es,4 bes,, |
      es,4 bes,, |
    }
  >>
  
  % --- AQUÍ SE GENERA LA SALIDA GRÁFICA Y AUDIOFÓNICA ---
  \layout {
    \context {
      \Score
      \override RehearsalMark.font-size = #1
      \override MetronomeMark.font-size = #1.5
      \override MetronomeMark.font-shape = #'italic
    }
  }
  \midi { }  % <-- ESTO ACTIVA EL BOTÓN DE REPRODUCCIÓN (PLAY)
}
