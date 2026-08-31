\version "2.22.0"

\header {
  title = "Esbozo Orquestal Estilo Debussy"
  subtitle = "Tema A, Puente y Tema B"
  tagline = ""
}

\paper {
  indent = 15\mm
  ragged-right = ##f
}

% --- DEFINICION DE LOS INSTRUMENTOS ---

clarinete = \relative c'' {
  \clef treble
  \key c \major % Escrito en Do (Sonido Real en Re Dorico / Sol Pentatonico)
  \time 4/4
  \tempo "Lent et expressif"
  
  % --- TEMA A (Re Dorico) ---
  r4 a8( b d e g a) |
  b4.( a8 g f e d) |
  
  % --- PUENTE (Mixturas / Trazos rapidos) ---
  \time 3/4
  \tuplet 3/2 { cis''16[ b a] } \tuplet 3/2 { g[ f e] } d8[ c b a] |
  
  % --- TEMA B (Sol Pentatonico - Registro Agudo/Veloz) ---
  \time 4/4
  \tempo "Anime"
  \tuplet 6/4 { d'''16([ b g e d b] } \tuplet 6/4 { g' e d b g e) } d2 |
  \tuplet 6/4 { e'''16([ d b g e d] } \tuplet 6/4 { b' g e d b g) } a2 |
  \bar "|."
}

violinI = \relative c'' {
  \clef treble
  \key c \major
  
  % --- TEMA A ---
  f1~ |
  f2 e |
  
  % --- PUENTE ---
  <e' g>4 <d f> <c e> |
  
  % --- TEMA B ---
  b'1_~ |
  b2 r |
}

violinII = \relative c' {
  \clef treble
  \key c \major
  
  % --- TEMA A (Ritmo sincopado interno) ---
  r8 <a d>4 r8 <a d>4 r8 <a d>8 |
  r8 <g c>4 r8 <g c>4 r8 <g c>8 |
  
  % --- PUENTE ---
  <g b>4 <f a> <e g> |
  
  % --- TEMA B ---
  r8 <d g b>4 r8 <d g b>4 r8 |
  r8 <e a c>4 r8 <e a c>4 r8 |
}

viola = \relative c' {
  \clef alto
  \key c \major
  
  % --- TEMA A (Contratiempos) ---
  f4 r8 f8 r4 f4 |
  e4 r8 e8 r4 e4 |
  
  % --- PUENTE ---
  <b d>4 <a c> <g b> |
  
  % --- TEMA B ---
  g'2 g |
  a2 a |
}

chelo = \relative c {
  \clef bass
  \key c \major
  
  % --- TEMA A (Bajo Estatico/Pedal) ---
  d1_\markup { \italic "Dm9 (Re Dorico)" } |
  c1_\markup { \italic "Cmaj7" } |
  
  % --- PUENTE ---
  bes2._\markup { \italic "Paralelismos Bb9 - Am9 - G9" } |
  
  % --- TEMA B (Arpegios Ondulantes) ---
  g8([ d' g b] d[ b g d])_\markup { \italic "G5 (Pentatonico)" } |
  a8([ e' a c] e[ c a e])_\markup { \italic "Am7" } |
}

% --- ENSAMBLAJE DE LAPARTITURA ---

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
