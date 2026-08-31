\version "2.24.0"

\header { tagline = ##f }

\score {
  << 
    \new StaffGroup <<
      \new Staff \with { instrumentName = #"Flauta I (Flotante)" } {
        \clef treble \time 4/4
        \relative c''' {
          \textMark \markup \bold "Tres modéré - Impresionismo (Agua y Luz)"
          \tuplet 3/2 { c4(\p d e) } \tuplet 3/2 { fis4( gis ais) } |
          c1\trill ~ | c4 r r2 |
        }
      }
      
      \new Staff \with { instrumentName = #"Oboe / Clarinete" } {
        \clef treble \time 4/4
        \relative c'' {
          r2 \tuplet 3/2 { c4(\p d e) } |
          \tuplet 3/2 { fis4( gis ais) } c2 ~ | c4 r r2 |
        }
      }
      
      \new Staff \with { instrumentName = #"Arpa / Celesta" } {
        \clef treble \time 4/4
        \relative c'' {
          \textMark \markup \italic "Arpeggiandi en tonos enteros"
          r1 |
          << { <c e fis ais>4\p <d e gis c> <e fis ais d> <fis gis c e> } \\ { r1 } >> |
          <g e c>4\pp r r2 |
        }
      }
      
      \new Staff \with { instrumentName = #"Violines I (Sourdine)" } {
        \clef treble \time 4/4
        \relative c'' {
          \textMark \markup \italic "Parallel blocks (legatissimo)"
          <e c g d>1\p ~ | <e c g d>1 | <e c g d>4 r r2 \bar "|."
        }
      }
    >>
  >>
  \layout { indent = 2.5\cm }
  \midi { }
}
