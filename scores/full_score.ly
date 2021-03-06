\version "2.22.0"

\include "../definitions.ly"

\paper {
  #(define (page-post-process layout pages) (ly:create-toc-file layout pages))
  systems-per-page = #2
}

#(set-global-staff-size 15.87)

\book {
	\bookpart {
		\header {
			number = "1"
			title = "D O M I N E   A D   A D I U V A N D U M"
		}
		\paper {
      indent = 3\cm
      systems-per-page = #3
    }
		\tocSection "1" "Domine ad adiuvandum"
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = \SopranoAIncipit
						\override Staff.InstrumentName.self-alignment-Y = ##f
						\override Staff.InstrumentName.self-alignment-X = #RIGHT
						\new Voice = "SopranoA" { \dynamicUp \DomineAdSopranoANotes }
					}
					\new Lyrics \lyricsto SopranoA \DomineAdSopranoALyrics

					\new Staff {
						\set Staff.instrumentName = \SopranoBIncipit
						\override Staff.InstrumentName.self-alignment-Y = ##f
						\override Staff.InstrumentName.self-alignment-X = #RIGHT
						\new Voice = "SopranoB" { \dynamicUp \DomineAdSopranoBNotes }
					}
					\new Lyrics \lyricsto SopranoB \DomineAdSopranoBLyrics

					\new Staff {
						\set Staff.instrumentName = \AltoIncipit
						\override Staff.InstrumentName.self-alignment-Y = ##f
						\override Staff.InstrumentName.self-alignment-X = #RIGHT
						\new Voice = "Alto" { \dynamicUp \DomineAdAltoNotes }
					}
					\new Lyrics \lyricsto Alto \DomineAdAltoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "Organo" "e Bassi" }
						% \transpose c c,
						\DomineAdOrgano
					}
				>>
				\new FiguredBass { \DomineAdBassFigures }
			>>
			\layout { }
			\midi { \tempo 2 = 60 }
		}
	}
	\bookpart {
		\header {
			number = "2"
			title = "D I X I T   D O M I N U S"
		}
		\tocSection "2" "Dixit Dominus"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\DixitDominusViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\DixitDominusViolinoII
						}
					>>
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S 1"
						\new Voice = "SopranoA" { \dynamicUp \DixitDominusSopranoANotes }
					}
					\new Lyrics \lyricsto SopranoA \DixitDominusSopranoALyrics

          \new Staff {
            \set Staff.instrumentName = "S 2"
            \new Voice = "SopranoB" { \dynamicUp \DixitDominusSopranoBNotes }
          }
          \new Lyrics \lyricsto SopranoB \DixitDominusSopranoBLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \DixitDominusAltoNotes }
					}
					\new Lyrics \lyricsto Alto \DixitDominusAltoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\DixitDominusOrgano
					}
				>>
				\new FiguredBass { \DixitDominusBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 90 }
		}
	}
  \bookpart {
		\header {
			number = "3"
			title = "C O N F I T E B O R"
		}
		\tocSection "3" "Confitebor"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\ConfiteborViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\ConfiteborViolinoII
						}
					>>
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S 1"
						\new Voice = "SopranoA" { \dynamicUp \ConfiteborSopranoANotes }
					}
					\new Lyrics \lyricsto SopranoA \ConfiteborSopranoALyrics

          \new Staff {
            \set Staff.instrumentName = "S 2"
            \new Voice = "SopranoB" { \dynamicUp \ConfiteborSopranoBNotes }
          }
          \new Lyrics \lyricsto SopranoB \ConfiteborSopranoBLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \ConfiteborAltoNotes }
					}
					\new Lyrics \lyricsto Alto \ConfiteborAltoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\ConfiteborOrgano
					}
				>>
				\new FiguredBass { \ConfiteborBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 105 }
		}
	}
  \bookpart {
		\header {
			number = "4"
			title = "B E A T U S   V I R"
		}
		\tocSection "4" "Beatus vir"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\BeatusViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\BeatusViolinoII
						}
					>>
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S 1"
						\new Voice = "SopranoA" { \dynamicUp \BeatusSopranoANotes }
					}
					\new Lyrics \lyricsto SopranoA \BeatusSopranoALyrics

          \new Staff {
            \set Staff.instrumentName = "S 2"
            \new Voice = "SopranoB" { \dynamicUp \BeatusSopranoBNotes }
          }
          \new Lyrics \lyricsto SopranoB \BeatusSopranoBLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \BeatusAltoNotes }
					}
					\new Lyrics \lyricsto Alto \BeatusAltoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\BeatusOrgano
					}
				>>
				\new FiguredBass { \BeatusBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 90 }
		}
	}
  \bookpart {
		\header {
			number = "5"
			title = "D E   P R O F U N D I S"
		}
		\tocSection "5" "De profundis"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\DeProfundisViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\DeProfundisViolinoII
						}
					>>
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S 1"
						\new Voice = "SopranoA" { \dynamicUp \DeProfundisSopranoANotes }
					}
					\new Lyrics \lyricsto SopranoA \DeProfundisSopranoALyrics

          \new Staff {
            \set Staff.instrumentName = "S 2"
            \new Voice = "SopranoB" { \dynamicUp \DeProfundisSopranoBNotes }
          }
          \new Lyrics \lyricsto SopranoB \DeProfundisSopranoBLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \DeProfundisAltoNotes }
					}
					\new Lyrics \lyricsto Alto \DeProfundisAltoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\DeProfundisOrgano
					}
				>>
				\new FiguredBass { \DeProfundisBassFigures }
			>>
			\layout { }
			\midi { \tempo 4. = 50 }
		}
	}
  \bookpart {
		\header {
			number = "6"
			title = "M E M E N T O,   D O M I N E,   D A V I D"
		}
    \paper {
      system-system-spacing.basic-distance = #27
      system-system-spacing.minimum-distance = #27
    }
		\tocSection "6" "Memento, Domine, David"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\MementoViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\MementoViolinoII
						}
					>>
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S 1"
						\new Voice = "SopranoA" { \dynamicUp \MementoSopranoANotes }
					}
					\new Lyrics \lyricsto SopranoA \MementoSopranoALyrics

          \new Staff {
            \set Staff.instrumentName = "S 2"
            \new Voice = "SopranoB" { \dynamicUp \MementoSopranoBNotes }
          }
          \new Lyrics \lyricsto SopranoB \MementoSopranoBLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\MementoOrgano
					}
				>>
				\new FiguredBass { \MementoBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 80 }
		}
	}
  \bookpart {
		\header {
			number = "7"
			title = "S A L V E T E,   F L O R E S   M A R T Y R U M"
		}
    \paper {
      system-system-spacing.basic-distance = #27
      system-system-spacing.minimum-distance = #27
    }
		\tocSection "7" "Salvete, flores martyrum"
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S 1"
						\new Voice = "SopranoA" { \dynamicUp \SalveteSopranoANotes }
					}
					\new Lyrics \lyricsto SopranoA \SalveteSopranoALyrics

          \new Staff {
            \set Staff.instrumentName = "S 2"
            \new Voice = "SopranoB" { \dynamicUp \SalveteSopranoBNotes }
          }
          \new Lyrics \lyricsto SopranoB \SalveteSopranoBLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \SalveteAltoNotes }
					}
					\new Lyrics \lyricsto Alto \SalveteAltoLyrics
				>>
				\new PianoStaff <<
          \set PianoStaff.instrumentName = \markup \center-column { "org" "solo" }
					\new Staff {
						\SalveteOrganoSolo
					}
          \new Staff {
						\set Staff.instrumentName = "b"
						% \transpose c c,
						\SalveteOrgano
					}
				>>
				\new FiguredBass { \SalveteBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 130 }
		}
	}
  \bookpart {
		\header {
			number = "8"
			title = "M A G N I F I C A T"
		}
		\tocSection "8" "Magnificat"
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff <<
						\set GrandStaff.instrumentName = "vl"
						\new Staff {
							\set Staff.instrumentName = "1"
							\MagnificatViolinoI
						}
						\new Staff {
							\set Staff.instrumentName = "2"
							\MagnificatViolinoII
						}
					>>
				>>
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "S 1"
						\new Voice = "SopranoA" { \dynamicUp \MagnificatSopranoANotes }
					}
					\new Lyrics \lyricsto SopranoA \MagnificatSopranoALyrics

          \new Staff {
            \set Staff.instrumentName = "S 2"
            \new Voice = "SopranoB" { \dynamicUp \MagnificatSopranoBNotes }
          }
          \new Lyrics \lyricsto SopranoB \MagnificatSopranoBLyrics

					\new Staff {
						\set Staff.instrumentName = "A"
						\new Voice = "Alto" { \dynamicUp \MagnificatAltoNotes }
					}
					\new Lyrics \lyricsto Alto \MagnificatAltoLyrics
				>>
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "org" "b" }
						% \transpose c c,
						\MagnificatOrgano
					}
				>>
				\new FiguredBass { \MagnificatBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 60 }
		}
	}
}
