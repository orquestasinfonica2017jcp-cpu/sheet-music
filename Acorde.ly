\version "2.24.0"

\header { tagline = ##f }

\score {
  << 
    \new StaffGroup <<
      \new Staff \with { instrumentName = #"Flautas I/II" } {
        \clef treble \key c \major \time 4/4
        \relative c''' {
          \textMark \markup \bold "Allegro Feroce (Tutti de Clímax)"
          f1\ff | e2. r4 | dis1\ff | e8\fff r <g e c> r c, r r4 \bar "|."
        }
      }
      
      \new Staff \with { instrumentName = #"Oboes I/II" } {
        \clef treble \key c \major \time 4/4
        \relative c'' {
          aes1\ff | g2. r4 | c1\ff | c8\fff r <g e c> r g r r4 \bar "|."
        }
      }
      
      \new Staff \with { instrumentName = #"Trompas (en Do)" } {
        \clef treble \time 4/4
        \relative c'' {
          <f c>1\ff | <e c>2. r4 | <f a,>1\ff | <g e c>8\fff r <g e c> r c, r r4 \bar "|."
        }
      }
      
      \new Staff \with { instrumentName = #"Violines I/II" } {
        \clef treble \key c \major \time 4/4
        \relative c'' {
          <aes f d>1\ff | <g e c>2. r4 | <c a fis e>1\ff | <e c g>8\fff r <g e c> r c, r r4 \bar "|."
        }
      }
      
      \new Staff \with { instrumentName = #"Vcl. / Cb. / Fag." } {
        \clef bass \key c \major \time 4/4
        \relative c, {
          d1\ff | c2. r4 | dis1\ff | e8\fff r g, r c r r4 \bar "|."
        }
      }
    >>
  >>
  \layout { indent = 2.5\cm }
}
