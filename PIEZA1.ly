\version "2.22.0"

\header {
  title = "Esbozo Orquestal Estilo Debussy"
  subtitle = "Revision Profesional de Registros y Notacion de Octavas"
  tagline = ""
}

\paper {
  indent = 15\mm
  ragged-right = ##f
}

clarinete = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo "Lent et expressif"
  
  % --- TEMA A (Re Dorico) ---
  r4 a8( b d e g a) |
  b4.( a8 g f e d) |
  e1~ |
  e4 g8( a b d e g) |
  a4.( g8 e d b a) |
  g1 |
  
  % --- PUENTE ---
  \time 3/4
  \tuplet 3/2 { cis'16[ b a] } \tuplet 3/2 { g[ f e] } d8[ c b a] |
  
  % --- TEMA B (Compases 8 y 9 - Registro Clarin con indicacion 8va) ---
  \time 4/4
  \tempo "Anime"
  
  % Compas 8 (Notas reales: Re6-Si5-Sol5-Mi5-Re5-Si4)
  \ottava #1
  \tuplet 6/4 { d'16([ b g e d b] } \tuplet 6/4 { g' e d b g e) } \ottava #0 d2 |
  
  % Compas 9 (Notas reales: Mi6-Re6-Si5-Sol5-Mi5-Re5)
  \ottava #1
  \tuplet 6/4 { e''16([ d b g e d] } \tuplet 6/4 { b' g e d b g) } \ottava #0 a2 |
  \bar "|."
}

violinI = \relative c'' {
  \clef treble
  \key c \major
  
  % --- TEMA A ---
  f1~ | f2 e | g1~ | g2 fis | <a c e>1~ | <a c e>2 r |
  
  % --- PUENTE ---
  \time 3/4 <e' g>4 <d f> <c e> |
  
  % --- TEMA B ---
  \time 4/4
  b'2.( d4) |
  e4.( d8 b g a4) |
}

violinII = \relative c'' {
  \clef treble
  \key c \major
  
  % --- TEMA A (Notas corregidas por encima del Sol3 al aire) ---
  r8 <f a>4 r8 <f a>4 r8 <f a>8 |
  r8 <e g>4 r8 <e g>4 r8 <e g>8 |
  r8 <g b>4 r8 <g b>4 r8 <g b>8 |
  r8 <f a>4 r8 <f a>4 r8 <f a>8 |
  r8 <a c f>4 r8 <a c f>4 r8 <a c f>8 |
  r8 <g b e>4 r8 <g b e>4 r8 <g b e>8 |
  
  % --- PUENTE ---
  \time 3/4 <b d>4 <a c> <g b> |
  
  % --- TEMA B ---
  \time 4/4
  r8 <g b d>4 r8 <g b d>4 r8 |
  r8 <a c e>4 r8 <a c e>4 r8 |
}

viola = \relative c' {
  \clef alto
  \key c \major
  
  % --- TEMA A ---
  d4 r8 d8 r4 d4 |
  c4 r8 c8 r4 c4 |
  e4 r8 e8 r4 e4 |
  d4 r8 d8 r4 d4 |
  f4 r8 f8 r4 f4 |
  e4 r8 e8 r4 e4 |
  
  % --- PUENTE ---
  \time 3/4 <f a>4 <e g> <d f> |
  
  % --- TEMA B ---
  \time 4/4
  b'2 b |
  c2 c |
}

chelo = \relative c {
  \clef bass
  \key c \major
  
  % --- TEMA A ---
  d1_\markup { \italic "Dm9" } |
  c1_\markup { \italic "Cmaj7" } |
  e1_\markup { \italic "Em9" } |
  d1_\markup { \italic "D7sus4" } |
  a1_\markup { \italic "Am9" } |
  g1_\markup { \italic "Gmaj7" } |
  
  % --- PUENTE ---
  \time 3/4 bes2._markup { \italic "Paralelismos Bb9 - Am9 - G9" } |
  
  % --- TEMA B ---
  \time 4/4
  g8([ d' g b] d[ b g d])_\markup { \italic "G5" } |
  a8([ e' a c] e[ c a e])_\markup { \italic "Am7" } |
}

\score {
  <<
    \new Staff \with { instrumentName = "Clarinete" } \clarinete
    \new StaffGroup <<
      \new Staff \with { instrumentName = "Violin I" } \violinI
      \new Staff \with { instrumentName = "Violin II" } \violinII
      \new Staff \with { instrumentName = "Viola" } \viola
      \new Staff \with { instrumentName = "Cello" } \chelo
    >>
  >>
  \layout { }
  \midi { }
}
