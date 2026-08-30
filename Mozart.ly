\version "2.24.0"

\header {
  tagline = ##f
}

\score {
  << 
    \new StaffGroup <<
      \new Staff \with { instrumentName = #"Fl. / Ob." } {
        \clef treble
        \key d \minor
        \time 4/4
        \relative c'' {
          \textMark \markup \bold "Presto Vivace (Motor Clásico Avanzado)"
          f1\p ~ | f2 g4( e) | f8 r f r e4(\fp d) | cis1\f |
        }
      }
      
      \new Staff \with { instrumentName = #"Violín I" } {
        \clef treble
        \key d \minor
        \time 4/4
        \relative c'' {
          \textMark \markup \italic "moto perpetuo (legato de a dos)"
          d16(\p cis d e f e f g a g f e d c b a) |
          g16( fis g a b a b c d c b a g f e d) |
          cis16(\f d e f g f e d cis d e f g a b cis) |
          d8\ff r <a f d> r d, r r4 |
        }
      }
      
      \new Staff \with { instrumentName = #"Violín II" } {
        \clef treble
        \key d \minor
        \time 4/4
        \relative c' {
          r2 d16(\p cis d e f e f g) |
          a16( g f e d c b a) g( fis g a b a b c) |
          e8\f r d r e r g r |
          f8\ff r <f d a> r f r r4 |
        }
      }
      
      \new Staff \with { instrumentName = #"Vcl. / Fag." } {
        \clef bass
        \key d \minor
        \time 4/4
        \relative c {
          d8\p\staccato r f\staccato r d\staccato r f\staccato r |
          b,8\staccato r d\staccato r b\staccato r g\staccato r |
          a8\f\staccato r b\staccato r cis\staccato r a\staccato r |
          d8\ff\staccato g,\staccato a\staccato a,\staccato d r r4 |
        }
      }
    >>
  >>
  \layout { 
    indent = 2.0\cm
    \context {
      \Staff
      \vividStyles
    }
  }
}
