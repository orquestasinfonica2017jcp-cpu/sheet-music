\version "2.24.0"

\header { tagline = ##f }

\score {
  << 
    \new StaffGroup <<
      \new Staff \with { instrumentName = #"Flauta I" } {
        \clef treble \key g \major \time 3/4
        \relative c''' {
          \textMark \markup \bold "Allegretto Leggiero (Efecto Pájaros)"
          \grace { g16( a) } b8\p\staccatissimo g\staccatissimo r4 \grace { b16( c) } d8\staccatissimo b\staccatissimo |
          g'4\trill(~ g16 fis g a) g8\staccatissimo r |
          r4 \grace { d16( e) } f8\staccatissimo d\staccatissimo r4 |
          b'16(\f a g fis g d b g) g8\staccatissimo r |
        }
      }
      
      \new Staff \with { instrumentName = #"Oboe I" } {
        \clef treble \key g \major \time 3/4
        \relative c'' {
          r4 \grace { d16( e) } f8\staccatissimo d\staccatissimo r4 |
          \grace { b16( c) } d8\p\staccatissimo b\staccatissimo r4 \grace { d16( e) } f8\staccatissimo d\staccatissimo |
          b'4\trill(~ b16 ais b c) b8\staccatissimo r |
          r4 b,16(\f a g fis g8\staccatissimo) r r4 |
        }
      }
      
      \new Staff \with { instrumentName = #"Clarinete I (La)" } {
        \clef treble \key a \major \time 3/4
        \relative c'' {
          \textMark \markup \italic "staccatissimo"
          e8.\p fis16 d8\staccatissimo b\staccatissimo cis\staccatissimo r |
          r4 e8.\staccatissimo fis16 d8\staccatissimo b\staccatissimo |
          cis8\staccatissimo a\staccatissimo e'\staccatissimo cis\staccatissimo a'\staccatissimo r |
          g,16(\f fis e d e8\staccatissimo) r r4 |
        }
      }
      
      \new Staff \with { instrumentName = #"Violines I (Pizz.)" } {
        \clef treble \key g \major \time 3/4
        \relative c'' {
          b8\p\staccato r g\staccato r d'\staccato r |
          b8\staccato r g\staccato r d'\staccato r |
          g8\staccato r d\staccato r b'\staccato r |
          <b g d>8\f r r4 g,8\p r \bar "|."
        }
      }
    >>
  >>
  \layout { indent = 2.5\cm }
  \midi { }  %% <- ¡Esta es la línea clave que faltaba para habilitar el audio!
}
