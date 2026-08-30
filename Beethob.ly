\version "2.24.0"

\header { tagline = ##f }

\score {
  << 
    \new StaffGroup <<
      \new Staff \with { instrumentName = #"Flauta I" } {
        \clef treble \key c \major \time 4/4
        \relative c'' {
          \textMark \markup \bold "Andante con moto (Alberti Expandido)"
          e2(\p g4.. f16) | e2. r4 \bar "||" 
          \key c \minor
          g2(\f bes4.. aes16) | g8 r b,4(\fp c d) |
        }
      }
      
      \new Staff \with { instrumentName = #"Oboe / Cl." } {
        \clef treble \key c \major \time 4/4
        \relative c'' {
          g1\p ~ | g2. r4 \bar "||"
          \key c \minor
          g1\f ~ | g8 r f4(\fp e2) |
        }
      }
      
      \new Staff \with { instrumentName = #"Violín II" } {
        \clef treble \key c \major \time 4/4
        \relative c' {
          \textMark \markup \italic "Alberti en registro medio"
          e8\p c g c e c g c | e8 c g c e c g c \bar "||"
          \key c \minor
          es8\f c g c es c g c | d8\fp b g b c c g c |
        }
      }
      
      \new Staff \with { instrumentName = #"Cello / Fag." } {
        \clef bass \key c \major \time 4/4
        \relative c {
          c1\p ~ | c2. r4 \bar "||"
          \key c \minor
          c1\f ~ | g8 r g,4 c r |
        }
      }
    >>
  >>
  \layout { indent = 2.0\cm }
}
