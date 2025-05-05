\version "2.24.3"

global = {
    \time 4/4
    \key b \minor
    
}

\paper {
    top-margin = 20
    bottom-margin = 20
    ragged-last-bottom = ##f
}

\header {
    title = \markup {
        \override #'(font-name . "Times New Roman, Normal Bold")
        \override #'(font-size . 6)
        "Red & Black (Bayonetta)"
    }
    subtitle = \markup {
        \override #'(font-name . "Times New Roman, Normal Bold")
        \override #'(font-size . 2)
        \center-column { 
            \smallCaps "For Solo Piano"
            \override #'(baseline-skip . 1)

            \override #'(font-name . "Spectral, Italic")
            \center-column {
                \fontsize #-3 \italic "I will defend my right to live as I please."
                \fontsize #-3 \italic "To fight free, you don't have to remember me." 
            }
        }
    }
    composer = \markup { \smallCaps "Yamaguchi-Mistral" }
    opus = \markup { \smallCaps \fontsize #-1  "Op. 1 No. 1" }
    tagline = ""
}

intro-upper = \relative fis' {
    \tempo "Allegro con moto" 4 = 144
    \once \override Score.MetronomeMark.padding = #4
    \once \override DynamicLineSpanner.staff-padding = #5

    \tuplet 3/2 { <fis cis ais>4\f <fis cis ais> <fis cis ais> }
    \tuplet 3/2 { <g e b>4 <a e b> <g e b> }
    |
    \tuplet 3/2 { <a fis cis>4 <g fis cis> <a fis cis> }
    \tuplet 3/2 { <b g d>4\< <a g d> <b g d> }
    |
    \tuplet 3/2 { \tuplet 3/2 { <cis a e>4-> <cis a e>8 } <b a e>4 <cis a e>4 }
    \tuplet 3/2 { \tuplet 3/2 { <d g, d>4-> <d g, d>8 } <cis g cis,>4 <d g, d>4\! }
    |
    \tuplet 3/2 { <fis e cis ais fis>->_( <e e,> <cis cis,> }
    \once \override TupletBracket.padding = 3.5
    \tuplet 3/2 { 
        <ais ais,> 
        \set fingeringOrientations = #'(up)
        \once \override Fingering.padding = 0.2
        <g-5 g,-1> 
        \once \override TextScript.X-offset = -1
        \set fingeringOrientations = #'(up down)
        <e-4 e,-3>)_\markup{ \italic "m.s." } }
}

intro-lower = \relative fis, {
    <fis cis fis,>2
    <e b e,>2
    |
    \tuplet 3/2 { <fis cis fis,>2 <fis cis fis,>4 }
    \tuplet 3/2 { <g d g,>2 <g d g,>4 }
    |
    \tuplet 3/2 { <a a,>4 <g g,>4 <a a,>4 }
    \tuplet 3/2 { <b b,>4 <a a,>4 <b b,>4 }
    |
    <ais fis ais,>2 
    <cis g cis,>2
}

verseOneBeforeRepeat-upper = \relative b' {
    % Phrase 1
    \set fingeringOrientations = #'(up)
    \acciaccatura { ais8-3 }
    \once \override DynamicText.Y-offset = #-4.5
    <b~ fis d>4.\mf^\markup{ \finger "4-2" }
    <fis'-5 b,~ fis>4.
    <eis~ b_~ eis,_~>4
    |
    <<
        { 
            \voiceOne
            <eis b eis,>2
        }
        \new Voice {
            \voiceTwo
            cis
        }
    >>
    \oneVoice
    r8.
    <eis cis eis,>16
    r16
    <fis cis fis,>8.
    |
    r16 <g c,~ g~>2.
    <d c g>8.
    |
    <<
        {
            \voiceOne
            <fis fis,>1
        }
        \new Voice {
            \voiceTwo
            \tuplet 3/2 { b,2^( b4 }
            \tuplet 3/2 { c4 d c) }
        }
    >>
}

verseOneAfterRepeat-upper = \relative b' {
    % Phrase 2
    <b_~ fis d>4.
    \once \stemDown <fis' b,_~ fis>4.
    <eis b eis,>4
    |
    \once \stemDown <b' fis b,>8 
    \once \stemDown <ais fis ais,>4
    <e cis_~ e,>4 <eis cis_~ eis,>8 <fis cis fis,>4
    |
    <<
        {
            \voiceOne
            <g~ g,_~>2 <g g,>8
            cis,8 d4
        }
        \new Voice {
            \voiceTwo
            \once \override NoteColumn.force-hshift = 1.5 c8
            cis2 ais4.
        }
    >>
    |
    <<
        {
            \voiceOne
            r8. \acciaccatura{e'8}eis16 e-. r16 d16-. r16
            e8-. eis16-. e16-. r8 d8
        }
        \new Voice {
            \override TextScript.Y-offset = #-6
            \override TextScript.font-size = #-0.7
            \voiceTwo
            <b fis>1
        }
    >>
}

verseOneBeforeRepeat-lower = \relative b {
    % Phrase 1
    <b fis b,>8 r8
    <b, b,>4
    <b' eis, d b>4
    e,16-2 eis-1 e-2 a,-5
    |
    b16-1 d,-4 e-3 eis-2
    <b' b,>8. <b b,>16
    r8 <eis' eis,>-. <fis fis,>-. b,,
    |
    <<
        {
            \voiceOne
            \tuplet 3/2 { <g' g,>2_( <g g,>4 }
            \tuplet 3/2 { <g g,>4 <a a,> <g g,>) }
        }
        \new Voice {
            \voiceTwo
            c,2 d2
        }
    >>  
    |
    <<
        {
            \voiceOne
            <fis b, fis>1
        }
        \new Voice {
            \voiceTwo
            r8. eis16 e8-. d-. 
            d8-.^[ <d b d,>-. <e e,>-. <eis eis,>-. ]
        }
    >>
}

verseOneAfterRepeat-lower = \relative b, {
     % Phrase 2
    \once \override Script.direction = #DOWN 
    <b fis d b>8-. 
    \once \override Rest.Y-offset = -1
    r8
    <b b,>4
    \once \stemDown <b' eis, d b>4
    e,16 eis e a,
    |
    b8 
    \once \stemDown <b' fis d>4
    ais,16 b16 
    <cis cis,>8 <cis ais cis,>4 <cis ais cis,>8
    |
    \tuplet 3/2 {  
        \once \override Script.direction = #DOWN 
        <e e,>4-. 
        <e e,>4 
        \once \override Script.direction = #DOWN 
        <e e,>4-. 
    }
    \tuplet 3/2 { 
        \once \override Script.direction = #DOWN 
        <fis cis fis,>4-. 
        <fis d fis,>4 
        \once \override Script.direction = #DOWN 
        <fis cis fis,>4-.
    }
    |
    <b, fis b,>4-. <b fis b,>8. <b fis b,>16
    \once \override Rest.Y-offset = 0
    r8 
    <fis' fis,>16-. <e e,>16-. 
    \once \override Rest.Y-offset = 0
    r8
    <ais, fis e ais,>8
}

verseTwo-upper = \relative b' {
    <<
        {
            \voiceOne
            % Phrase 1
            \override TupletBracket.stencil = ##f
            \override TupletNumber.stencil = ##f
            \override Fingering.padding = 1.0
            \once \override DynamicLineSpanner.staff-padding = #5
            \tuplet 3/2 { b4-2\p^\markup{ \italic "legato espressivo" }( e-5 dis-4 }
            \tuplet 3/2 { d-3 g-5 eis-4 }
            |
            \tuplet 3/2 { fis-5 d-3 e-4 }
            \tuplet 3/2 { eis-5 fis-4 a!-5 }
            \tuplet 3/2 { g-5 e-4 c-2 }
            \tuplet 3/2 { e-4 g-5 e-4 }
            |
            <fis cis ais fis>1)
            |
            % Phrase 2
            \once \override Rest.staff-position = #-2
            r4 
            \once \stemDown 
            \once \override TextScript.X-offset = -1
            <b, fis d>_\markup{ \italic "m.s." }
            \revert TupletBracket.stencil
            \revert TupletNumber.stencil
            \tuplet 3/2 { <cis a e> <d fis,> <e a, e> }
            |
            \stemDown
            %%%%% CHANGED: slight harmony and voicing changes here %%%%%
            \tuplet 3/2 { <eis d gis,> <b' d,~ b>\arpeggio-- <a d, a> }
            \tuplet 3/2 { <eis-- d b eis,> <e b e,> <d d,> }
            |
            <fis d b fis>2_\markup{ \italic "m.s." }
            <e! cis ais e>4.
            a,16 b~
            |
            b1
            \revert Fingering.padding
        }
        \new Voice {
            \voiceTwo
             % Phrase 1
            \tuplet 3/2 { <b fis>2 b4-2 }
            \tuplet 3/2 { <d b g>2 d4-3 }
            |
            \tuplet 3/2 { <ais fis>2 ais4-1 }
            \set fingeringOrientations = #'(down)
            \tuplet 3/2 { <cis-2 ais-1>2 <cis a>4 }
            |
            \tuplet 3/2 { <b g>2 c4~ }
            \tuplet 3/2 { <c g>2 <b g>4 }
            |
            s2
            \stemUp \dynamicUp 
            <b' g~ d~>8.\pp <d g, d>8. 
            \override Fingering.direction = 1
            e16-2 fis16-3
            \revert Fingering.direction
            |
            % Phrase 2
            \stemUp
            \acciaccatura{e8} <a d,~>8. <g~ d~>8
            <g d>2
            s8.
            |
            s1
            |
            \once \override Rest.staff-position = #10
            r16 
            \once \override TextScript.Y-offset = 10.5
            \override Fingering.direction = 1
            eis-5^\markup{ \italic "m.d." } fis-4 eis-5
            e-4 d-3 a-1 fis-2
            eis-1 e!-2 fis-3 a-5
            fis-4 e-3 a,-1 b-2
            \revert Fingering.direction
            |
            {
                \override Rest.staff-position = #4
                \override Script.Y-offset = 6
                \override Script.X-offset = 1.2
                r8. fis'8-> r16
                \acciaccatura{d8 e} \tuplet 3/2 { eis4-- e-- d--~ }
                d8
            }
        }
    >>  
}

verseTwo-lower = \relative b, {
    % Phrase 1
    \tieNeutral
    <b~ fis d b~>2. <b g d b>4
    |
    <ais fis e ais,>2 
    \tuplet 3/2 { <cis ais fis cis>2 <cis cis,>4 }
    |
    <e e,>4. <c c,> <e e,>4
    |
    \once \stemDown
    \tuplet 3/2 { 
        <\tweak Parentheses.font-size -2 \parenthesize fis' 
        ais, fis>4_( <e e,> <cis cis,> 
    }
    \tuplet 3/2 { <b g d b> <g g,> <e e,>) }

    % Phrase 2
    <fis d fis,>2. <a cis, a>4
    |
    <gis eis d gis,>2
    \tuplet 3/2 { <d d,>4 <e e,> <fis~ fis,~> }
    |
    <fis fis,>2
    r8.
    <ais fis e cis>8-.q16 q8-.
    |
    <b fis d b>2
    \once \override Rest.staff-position = #0
    r16
    <d, fis, d>8-. q16 q8-.
    \once \override Script.direction = #DOWN 
    <b~ fis^~ b,~>-\accent

}

chorusOne-upper = \relative b' {
    % Phrase 1
    \once \override DynamicLineSpanner.staff-padding = #5
    b8._~\f <fis'~ b,_~ fis_~>16 <fis b,_~ fis>4
    \acciaccatura{\once \override Stem.direction = #UP e8} <eis b eis,>4 
    <cis gis eis cis>
    |
    <e cis g e>2 
    <<
        {
            \voiceOne
            <d fis, d>2
        }
        
        \new Voice {
            \voiceTwo
            s4 b
        }
    >>
    |
    \acciaccatura{ais8} <b fis \tweak Parentheses.font-size -2 \parenthesize b,>4
    <e b e,>8 <d a d,>4
    \acciaccatura{<ais' ais,>8} <b g b,>4
    <fis fis,>8
    |
    <eis eis,>8. cis_~ <e cis e,>8
    <d~ d,_~>8 <d ais d,>16 <fis fis,>8.
    \once \override Rest.staff-position = #0
    r8
    |
    % Phrase 2
    <b, b,>4 <fis' b, fis>
    \tuplet 3/2 { <eis b eis,>4 <cis g cis,> <d b d,> }
    |
    \tuplet 3/2 { <e a,~ e> <fis a,~ fis> <e a, e> }
    <d fis, d>8. <b b,>8
    \once \override Rest.staff-position = #0
    r16 <cis e,>8
    |
    \tuplet 3/2 { <cis e,>4 q <b~ fis_~> } 
    q8 
    \once \override DynamicTextSpanner.font-size = 0
    \once \override Staff.DynamicLineSpanner.padding = 1.5
    <d g, d>\cresc <fis fis,> <g b, g>
    |
    \tuplet 3/2 { <ais cis, ais>4 <fis d fis,> <g e g,> }
    <e d e,>8. <fis~ cis~ fis,_~>16 q4\!
}

chorusOne-lower = \relative b, {
    % Phrase 1
    <<
        {
            \voiceOne 
            \once \stemDown
            <b fis b,>4.
            \once \stemDown
            <cis,_~ cis,_~>8 
            \once \stemDown
            q2
        }

        \new Voice {
            \voiceTwo
            \once \stemUp
            <d'' b fis d>2
            \once \stemUp
            <cis gis cis,>2
        }
    >>
    |
    <<
        {
            \voiceOne
            <cis~ g! cis,_~>4 <cis e, cis>
            <b fis b,>2
            |
            <b a d,>2 <g d g,>
        }
        
        \new Voice {
            \voiceTwo
            s2 s4.
            <b,,~ b,~>8
            |
            q2 s2
        }
    >>
    |
    <g''~ cis, g_~>4. <g b, g>8
    <fis~ fis,_~>8 <fis ais, fis>16 <d d,>8. <cis cis,>8->
    |
    % Phrase 2
    <b fis b,>4.-> <fis' b,_~ fis>8
    \tuplet 3/2 { <g b, g>2 <g d g,>4 }
    |
    <a e cis a>2-- <b fis d b>--
    |
    \stemDown
    <cis g e cis>4.-- <d b fis d>4--
    <b d, b>8 <a cis, a> <g d g,>
    |
    \tuplet 3/2 { <fis cis ais fis>4 <e ais, fis> <d b g> }
    \stemUp
    <d b e,>8. <cis~ ais~ fis_~>16 q4
}

interludeOne-upper = \relative b''' {
    \tempo "Sonoro"
    % Phrase 1
    \break
    \stemNeutral
    \once \override Staff.OttavaBracket.staff-padding = #6
    \ottava 1
    \once \override TextScript.Y-offset = -6
    \once \override DynamicText.Y-offset = -7
    <b~ fis~ d_~ b_~>2\ff_\markup{ \italic "molto sostenuto" }( q8 
    q8.-- <bes fis d bes>8.
    | 
    <a e cis a>2 
    \tuplet 3/2 { <d, b fis d>4 <e e,> <fis b, fis> }
    |
    <g~ d~ b_~ g_~>2 q8 
    q8.-- <fis d b fis>8.
    |
    <<
        {
            \voiceOne
            <eis b eis,>1
            |
            s4. fis8~->) fis2
        }
        \new Voice {
            \voiceTwo 
            s2 <cis cis,>
            |
            <cis fis, e cis>1
        }
    >>
    % Phrase 2
    \stemNeutral
    <d' d, b fis>2\arpeggio
    <cis cis, a e>\arpeggio 
    |
    <a a, fis d>1\arpeggio
    |
    <b fis d b>2->\sfz
    <cis gis eis cis>->
}

interludeOne-lower = \relative b,, {
    % Phrase 1
    << 
        {
            \voiceOne
            \tuplet 3/2 { <b b,>8 fis'-4 b-2 }
            \tuplet 3/2 { fis'-1 b-3 d-1 }
            \override TupletNumber.stencil = ##f
            \tuplet 3/2 { cis-2 b-3 g-1 }
            \tuplet 3/2 { e-3 cis-3 bes-4 }
            |
            \tuplet 3/2 { <cis, cis,> a'-5 cis-3 }
            \tuplet 3/2 { e-2 a-1 cis-2 }
            \tuplet 3/2 { d-1 b-2 fis-3 }
            \tuplet 3/2 { g-1 b,-4 cis-2 }
            |
            \tuplet 3/2 { <d, d,> g-5 d'-3}
            \tuplet 3/2 { fis-2 b-1 d-2 }
            <<
                {
                    \voiceOne
                    \tuplet 3/2 { g-1 d-2 b-3 }
                    \tuplet 3/2 { fis-1 d-2 b-3 }
                }
                \new Voice {
                    \voiceFour
                    g''4-> fis,->
                }
            >>
            |
            \tuplet 3/2 { <eis g,>8 b-3 d-2 }
            \tuplet 3/2 { eis-1 gis-4 b-3 }
            \stemDown
            \tuplet 3/2 { 
                cis-2 d-1 
                \once \override TextSpanner.bound-details.left.text = \markup { \italic "m.d. " }
                eis-1\startTextSpan }
            \tuplet 3/2 { b'-2 eis,-1 d'-4\stopTextSpan }
            \revert TupletNumber.stencil
            \stemNeutral
            | 
            s2. 
            \clef treble
            fis,16-4 ais-2 cis-1 fis,-3
            
        }
        \new Voice {
            \voiceTwo
            <b,,, b,>1
            |
            <cis cis,>
            |
            <d d,>
            |
            <eis' g,>
            |
            \stemUp
            <fis e cis ais fis>2. 
            \stemDown
            \clef treble
            fis'8. fis16
        }
    >>

    % Phrase 2
    <<
        {
            \voiceOne
            d'16-1 b-2 fis-4 d-5
            b'-1 fis-2 d-4 fis-2
            cis'-1 a-2 e-4 cis-5
            a'-1 e-2 cis-3 e-2
            |
            \once \override Staff.DynamicLineSpanner.Y-offset = 7.5
            \once \override DynamicTextSpanner.font-size = 0
            \crescTextCresc
            a-1\< fis-2 d-3 a-1
            \clef bass
            fis-2 d-3 a-1 fis-3
            d-5 fis-3 a-2 d-1
            a-2 fis-3 d-5 fis-3\!
            |
            b-1 d-4 fis-2 b-1
            fis-2 d-4 b-5 d-4
            cis-1 gis'-3 b-2 cis-1
            b-2 gis-3 eis-5 gis-3
        }
        
        \new Voice {
            \voiceTwo
            <d'' d,>2
            <cis cis,>
            |
            <a a,>
            <d,,,>
            |
            <b' b,>
            <cis cis,>
        }
    >>
}

affettuoso-upper = \relative b' {
    %%%%% CHANGED: made it polyphonic %%%%%
    \ottava 0
    \tempo "Affettuoso e poco meno mosso"
    \stemNeutral
    % Phrase 1
    << 
        {
            \voiceOne
            cis4.-3\sfp d8~ d2~\fermata
            |
            \set fingeringOrientations = #'(up)
            d <e-5 cis-3>
        }
        \new Voice {
            \voiceTwo
            <b fis>1~
            |
            q1
        }
    >>
    <f'-3 d-1>4. <g e_~> <a e>4
    |
    <a, f d>2 <a' f>
    |

    % Phrase 2
    <<
        {
            \voiceOne
            a,4.-3\sf bes8~-4 bes2~\fermata
            |
            bes2 <c a>
            <c a>4. <d~ bes_~>8 q2
            |
            <d bes>4. e8 <cis a>2
        }
        \new Voice {
            \voiceTwo
            e,4.-1 f8-1~ f2~
            |
            f1
            |
            f1
            |
            e1
        }
    >>
}

affettuoso-lower = \relative b {
    <<
        {
            \voiceOne
            % Phrase 1
            <d b d,>
            |
            s2. <e,-1>4
            |
            \set fingeringOrientations = #'(up)
            <f-1 d-2>4. e8-1~ e2
            |
            a,1
            |
            % Phrase 2
            \stemDown
            <c' a c,>4. <d bes d,>8~ q2~
            \stemNeutral
            |
            q2. c,4-1
            |
            <d bes>1
            |
            e1
        }
        \new Voice {
            \voiceTwo
            % Phrase 1
            s2 s4. 
            \ottava -1
            b,,8~\pp
            |
            b2.
            \ottava 0
            ais''4-3
            |
            a!4.-4^~ 
            \set fingeringOrientations = #'(down) 
            <a^~ g-5~>8 q2
            |
            f1
            |
            % Phrase 2
            s2 s4. f,8~\pp
            |
            f2. e'4-5_(
            |
            \once \override TextScript.extra-offset = #'(0 . 2.5)
            f1_\markup{ \finger "4-5" }
            |
            <bes g-4>2 <cis a-3>)
        }
    >>
}

calamitoso-upper = \relative fis''' {
    \tempo "Calamitoso e come una valanga"
    % Phrase 1
    <<
        {
            \voiceOne
            s4
            \clef treble
            \tuplet 3/2 { fis8 d fis }
            eis4~
            \tuplet 3/2 { eis8 eis cis }
            |
            \override TupletNumber.stencil = ##f
            e!4~
            \tuplet 3/2 { e8 e cis }
            d4~
            \tuplet 3/2 { d8 d, b' }
            |
            cis4~
            \tuplet 3/2 { cis8 e, a }
            b4~
            \tuplet 3/2 { b8 d,8 g }
            |
            b4~
            \tuplet 3/2 { b8 cis, gis' }
            <ais fis>2
        }

        \new Voice {
            \voiceTwo
            s4 fis4 eis2
            |
            e! d
            |
            cis b
            |
            b ais
        }


        \new Voice {
            \voiceThree
            \clef bass
            <b,, fis d >1\rfz^\markup{ \italic "a tempo" }
        }

        \revert TupletNumber.stencil
    >>

    % Pharse 2
    <<
        {
            \voiceOne
            <b''' g d b>2 <cis gis eis cis>
            |
            <ais g! e! cis ais> <d b fis d>
            |
            <e cis a e> <fis d b fis>
            |
            <eis b eis,>2
            s2
        }

        \new Voice {
            \voiceTwo
            s4 
            \once \override TextScript.padding = 1.0
            b,,16-3_\markup{ \italic "m.s." } d-2 
            \once \override TextScript.padding = 1.0
            \once \override Fingering.direction = 1
            g-1^\markup{ \italic "m.d." } 
            \once \override Fingering.direction = 1
            b-2
            s4
            \once \override TextScript.padding = 2.0
            cis,16-3_\markup{ \italic "sim." } eis-1 
            \once \override Fingering.direction = 1
            gis-1 
            \once \override Fingering.direction = 1
            cis-2
            |
            s4
            cis,16-3 e!-2 
            \once \override Fingering.direction = 1
            g!-1 
            \once \override Fingering.direction = 1
            cis-2
            s4
            d,16-4 fis-2 
            \once \override Fingering.direction = 1
            b-1 
            \once \override Fingering.direction = 1
            d-2
            |
            s4
            cis16-1
            \override Fingering.direction = 1
            e-1 a-2 cis-4
            s4
            \once \override Fingering.direction = -1
            d,16-1
            fis-1 b-2 d-4
            |
            s4
            \once \override Rest.staff-position = #0
            r16 
            \once \override DynamicLineSpanner.staff-padding = #5
            a-1\< cis-2 e-3
            \once \override Script.direction = #UP
            \once \override Script.padding = 0.7
            ais-4-> fis-2 d-1 ais-4
            fis-2 d-1 ais-4 fis-2\!
        }
    >>

}

calamitoso-lower = \relative b,, {
    <<
        {
            \voiceOne
            \tuplet 3/2 { b8 fis'-3 b-2 }
            \tuplet 3/2 { d-1 fis-3 b-1 }
            \tuplet 3/2 { eis,,-5 gis-4 cis-2 }
            \tuplet 3/2 { eis-1 gis-4 cis-2 }
            |
            \override TupletNumber.stencil = ##f
            \tuplet 3/2 { e,,!-5 g!-4 cis-2 }
            \tuplet 3/2 { e-1 g-4 cis-2 }
            \tuplet 3/2 { d,,-5 fis-3 b-2 }
            \tuplet 3/2 { d-1 fis-3 b-1 }
            |
            \tuplet 3/2 { e,,-5 a-3 cis-2 }
            \tuplet 3/2 { e-1 a-3 cis-2 }
            \tuplet 3/2 { d,,-5 g-3 b-2 }
            \tuplet 3/2 { d-1 fis-3 b-1 }
            |
            \tuplet 3/2 { cis,,-4 eis-2 b'-1 }
            \tuplet 3/2 { cis-4 eis-2 b'-1 }
            \tuplet 3/2 { cis,,-4 fis-2 ais-1 }
            \tuplet 3/2 { cis-4 fis-2 ais-1 }
        }

        \new Voice {
            \voiceTwo
            <b,, fis d b>2 eis
            |
            e! d
            |
            e d
            |
            cis cis
        }

        \revert TupletNumber.stencil
    >>

    % Phrase 2
    <<
        {
            \voiceOne
            \once \override DynamicTextSpanner.font-size = 0
            \once \override DynamicTextSpanner.Y-offset = #6
            g'16-5^\cresc b-4\! d-2 g-1
            s4
            gis,16-5 cis-3 eis-2 gis-1
            s4
            |
            g,!16-5 cis-3 e!-2 g-1
            s4
            b,16-5 d-4 fis-2 b-1
            s4
            |
            cis,16-1 cis'-5 e-4 a-2
            s4
            d,,16-1 d'-5 fis-4 b-2
            s4
            |
            s1
        }

        \new Voice {
            \voiceTwo
            g,,2 gis
            |
            g! b
            |
            <cis cis,>-> <d d,>->
            |
            <eis d b g>2->
            <fis e! cis ais fis>->
        }
    >>

}

chorusTwo-upper = \relative b' {
    \once \override Score.MetronomeMark.padding = #4
    \once \override DynamicLineSpanner.staff-padding = #5
    \tempo "Risoluto"
    % Phrase 1
    <b b,>8.-\ff <fis'~ b,_~ fis_~>16 <fis b,_~ fis>4
    \acciaccatura{\once \override Stem.direction = #UP e8} <eis b eis,>4 
    <cis gis eis cis>
    |
    <e cis g e>2 
    <<
        {
            \voiceOne
            <d fis, d>2
        }
        
        \new Voice {
            \voiceTwo
            s4 b
        }
    >>
    |
    \acciaccatura{ais8} <b fis \tweak Parentheses.font-size -2 \parenthesize b,>4
    <e b e,>8 <d a d,>4
    \acciaccatura{<ais' ais,>8} <b g b,>4
    <fis fis,>8
    |
    <eis eis,>8. cis_~ <e cis e,>8
    <d~ d,_~>8 <d ais d,>16 <fis fis,>8.
    \once \override Rest.staff-position = #0
    r8
    |
    % Phrase 2
    \revert TupletNumber.stencil
    \revert TupletBracket.stencil
    \revert Tie.direction
    <b, b,>4 <fis' b, fis>
    \tuplet 3/2 { <eis b eis,>4 <cis g cis,> <d b d,> }
    |
    \tuplet 3/2 { <e a,~ e> <fis a,~ fis> <e a, e> }
    <d fis, d>8. <b b,>8
    \once \override Rest.staff-position = #0
    r16 <cis e,>8
    |
    \tuplet 3/2 { <cis e,>4 q <b~ fis~> } 
    q8 
    \once \override DynamicTextSpanner.font-size = 0
    \once \override Staff.DynamicLineSpanner.padding = 1.5
    <d b d,>\cresc <fis d fis,> <g e g,>
    |
    << 
        {
            \voiceOne
            \once \override TextScript.Y-offset = #8
            \tuplet 3/2 { <ais ais,>4^\markup{ \italic "catartico" } <fis fis,> <g g,> }
            <e e,>8. <fis~ fis,~>16 q4\!
        }

        \new Voice {
            \voiceTwo
            e2-> ais,->
        }
    >>
    |
}

chorusTwo-lower = \relative b, {
    % Phrase 1
    <b fis d b>4. <d fis, d>8
    <cis gis cis,>2
    |
    <<
        {
            \voiceOne
            <e~ g,~ e_~>4 <e cis g e>4 
            <fis d b fis>2
            |
            <b a d,>
            <g d g,>
        }

        \new Voice {
            \voiceTwo
            s2 s4.
            <b,,~ b,~>8
            |
            <b b,>2
        }
    >>
    |
    <g''~ cis, g_~>4. <g b, g>8
    <fis~ fis,_~>8 <fis ais, fis>16 <d d,>8. <cis cis,>8->
    |
    % Phrase 2
    \revert TupletNumber.stencil
    \revert TupletBracket.stencil
    \revert Tie.direction
    <b fis d b>2->
    \tuplet 3/2 { <d b d,>2 q4 }
    |
    <cis a cis,>2 <b fis b,>
    |
    <cis g e cis>4.--_( <d~ fis,~ d~>8-- q2
    |
    <e ais, e>4.-- 
    <fis ais, fis>2--) <fis fis,>8
    |
}

chorusThree-upper = \relative b' {
    \revert Tie.direction
    % Phrase 1
     <b b,>8. <fis'~ b,_~ fis_~>16 <fis b,_~ fis>4
    \acciaccatura{\once \override Stem.direction = #UP e8} <eis b eis,>4 
    <cis gis eis cis>
    |
    \tuplet 3/2 { <g' e~ cis~ g>4 <a e~ cis~ a> <g e cis g> }
    <<
        { 
            <fis d b fis>2
        }
        
        \new Voice {
            \voiceTwo
            s4 b,
        }
    >>
    |
    \tuplet 3/2 { <e~ cis a>4 <a e a,> <g~ d~ g,~> }
    q8 <cis, a cis,> <d b d,> <e cis e,>
    |
    \tuplet 3/2 { <eis cis eis,>4 <cis cis,> <eis cis eis,> }
    <fis cis fis,>8 <fis cis~ fis,>16 <a cis, a>8. <g g,>8
    |
    % Phrase 2
    \revert TupletNumber.stencil
    \revert TupletBracket.stencil
    \revert Tie.direction
    <b, b,>4 <fis' b, fis>
    \tuplet 3/2 { <eis b eis,>4 <cis g cis,> <d b d,> }
    |
    \tuplet 3/2 { <e a,~ e> <fis a,~ fis> <e a, e> }
    <d fis, d>8. <b b,>8
    \once \override Rest.staff-position = #0
    r16 <cis e,>8
    |
    \tuplet 3/2 { <cis e,>4 q <b~ fis~> } 
    q8 
    \once \override DynamicTextSpanner.font-size = 0
    \once \override Staff.DynamicLineSpanner.padding = 1.5
    <d b d,>\cresc <e cis e,> <fis d fis,> 
    |
    \stemDown
    \tuplet 3/2 { <a e cis a>4-> q4-> q4-> }
    <ais e cis ais>2->\!
    \stemNeutral
    |
}

chorusThree-lower = \relative b, {
    % Phrase 1
    \revert Tie.direction
    <b fis d b>4. <d fis, d>8
    <cis gis cis,>2
    |
    <<
        {
            \voiceOne
            <e cis g e>2--
            <d b fis d>--
            |
            <a' e cis a>
            <g d b g>
        }

        \new Voice {
            \voiceTwo
            s2 s4.
            <b,,~ b,~>8
            |
            <b b,>2
        }
    >>
    |
    <g''~ cis, g_~>4. <g b, g>8
    <fis ais, fis>8 <fis ais, fis>16 q8. <fis fis,>8
    |
    <b, fis d b>2 
    \tuplet 3/2 { <d b d,>2 <d g, d>4 }
    |
    <cis a cis,>2 <b fis b,>
    |
    <cis g e cis>4. <d b fis d>4.
    <e cis e,>8 <fis d fis,>
    |
    \tuplet 3/2 { <a e cis a>4 q4 q4 }
    <ais e cis ais>2
    |
}

acrobatico-upper = \relative b' {
    \once \override Score.MetronomeMark.padding = #2
    \tempo "Acrobatico"
    \override Rest.Y-offset = 0
    % Phrase 1
    r4 r8. g16-1
    aes-2 a-3 g aes a g aes a
    |
    g aes a g
    aes a 
    \once \override TupletBracket.direction = #DOWN 
    \tuplet 3/2 { g16-1 aes-2 a-3 }
    g-1 f-4 d-2 c-1
    s4
    |
    r16 d-1 f-2 g-3 
    aes-4 g-3 f-2 d-1
    g-3 a-5 <e-2 c-1> f-4 
    <d-2 a-1>4
    |
    r16 f-2 g-3 <aes-4 c,-1>
    f-2 g-3 f-2 d~-1
    d r8.
    <f, d>4->
    |
    % Phrase 2
    r16 f'-2 g-3 a-5
    <aes-4 f-2 d-1> g-3 f-2 d-1
    r8 f16 g 
    a8-. r8
    |
    r16 f g a
    aes g f d
    r8 f16-2 g-3
    \stemDown
    a-1 c-2 cis-3 d-4
    |
    a-1 bes-2 c-3 d-4 
    c-3 bes-2 a-1 bes-2
    c-1 d-2 e-3 f-4
    e-3 d-1 cis-2 d-1
    |
    e-2 f-3 g-1 a-2
    bes-3 a-1 gis-2 a-1
    \acciaccatura{c8-3} cis16-4 a-1 g-3 f-2
    e-1 f8.-2
    \stemNeutral
    \revert Rest.Y-offset
}

acrobatico-lower = \relative b,, {
    \revert Tie.direction
    \override Rest.Y-offset = 0
    % Phrase 1
    <<
        {
            \voiceOne
            \once \override DynamicText.Y-offset = 3
            d16^\mf f-4 a-2 d-1
            f-4 g-3 a_~-2 <d~ a_~ f_~ d_~>
            q4
            s4
        }

        \new Voice {
            \voiceTwo
            <d,, d,>1->
        }
    >>
    |
    <d' a f d>8. <d d,>16
    r4 <d g,>--
    \stemDown
    a'16-1 aes-2 g-1 f-3 
    \stemNeutral
    |
    d4-5 r8 c16 d
    <a f>4 <d_1 g,_5>16 c_2 a_3 as_4
    |
    g_1 f_2 c_5 d_~_4
    d8 r16 a''_1
    g_2 f_3 d_1 cis!_2
    c_3 a_5 c_3 cis_2
    |
    % Phrase 2
    <d_1 a_5>8-> r8
    <a f d>8. d16_1
    a_5 c_3 d_2 f_1
    d_2 c_3 a_1 f_3
    |
    d_5 f_3 g_2 a_1
    c_3 d_2 f_1 d_2
    c_3 a_5 c_3 cis_2
    d_1 f_3 g_2 a_1
    |
    c_2 d_1 c_2 bes_3
    a_1 g_3 f_4 g_3
    a_1 bes_3 c_2 d_1
    c_2 bes_3 a_4 bes_3
    |
    c_2 d_1 e_3 f_2
    e_3 d_1 cis_2 d_1
    <<
        {
            \voiceOne
            s4.. 
            <d,,~ d,_~>16->
        }
        
        \new Voice {
            \voiceTwo
            <cis''_2 a_4 e_5>2
        }
    >>
    \revert Rest.Y-offset
}

tenebroso-upper = \relative b, {
    \tempo "Tenebroso e portentoso"
    % Phrase 1
    \clef bass
    <<
        {
            \voiceOne
            \stemDown
            \once \override DynamicText.Y-offset = #-5
            d16-1_\mp e-2 f-3 c'_2
            d,-1 e-2 f-3 c'_2
            d, f g b
            d, f g b
            |
            cis, e g bes
            cis, e g bes
            d,-1 f-2 a-3 c_2
            bes-3 a-2 g-1 a-2
            |
            \clef treble
            s4
            c16 e g bes
            s4
            d,16 e f a
            |
            s4 d,16-1 e-2 gis-3 b-5
            \stemUp
            cis a-3 g-2 e-1
            cis-4 a-2 
            \once \override TextScript.Y-offset = -8
            g_1 e_3
            \stemNeutral
            |
        }

        \new Voice {
            \voiceTwo
            \stemUp
            s8. 
            \override TextScript.X-offset = -1.75
            \override TextScript.Y-offset = -5
            c'4_\markup{ \italic "m.s." } 
            c_\markup{ \italic "m.s." }  
            b b
            bes bes 
            c
            a
            s4 bes'2 a2
            s16
            \once \stemDown <cis! e, cis!>2_\markup{ \italic "m.s." }
            \stemNeutral
            \revert TextScript.X-offset
            \revert TextScript.Y-offset
            
        }
    >>
    |
    % Phrase 2
    <<
        {
            \voiceOne
            \stemDown
            <d f, d>2 <gis b, gis>
            |
            <bes e, bes> <f a, f>
            |
            <e bes e,> <c f, c>
            |
            <gis' b, gis> <a cis,! a>
            \stemNeutral
        }

        \new Voice {
            \voiceTwo
            \stemUp
            s1 
            |
            s1
            |
            s4 <g,^3 e^2 bes_2>--
            s4 <f^3 d^2 a_2>--
            |
            \override TextScript.X-offset = -1.75
            \override TextScript.Y-offset = -5
            s4 <d b gis>--_\markup{ \italic "m.s." }
            s4 <cis a g e>--_\markup{ \italic "m.s." }
            \revert TextScript.X-offset
            \revert TextScript.Y-offset
            \stemNeutral
        }
    >>
    
}

tenebroso-lower = \relative b,, {
    \stemNeutral
    % Phrase 1
    <d~ d,_~>1
    |
    q1
    |
    \break
    c'16 e g bes
    s4
    d,16_4 e f a
    s4
    |
    d,16_5 e gis b 
    s4 s2
    % Phrase 2
    d,16_4 e_3 f_2 a_1
    \once \override TextScript.X-offset = -1.75
    c^1^\markup{ \italic "m.d." } a_1 f_2 d_4
    b_5 e_3 gis_2 b_1 
    \once \override TextScript.X-offset = -1.75
    d^1^\markup{ \italic "m.d." } b_1 gis_2 e_3
    |
    cis!_5 e_3 g_2 bes_1
    cis_2 e_1 g-1 bes-2
    d,,_4 e_3 f_2 a_1
    d_3 e_2 f-1 a-2
    |
    \break
    <e, c bes g>4-- s4
    <c a f d>-- s4
    |
    <e b gis e>-- s4
    <e cis a e>-- s4
    
}

rilassato-upper = \relative b {
    \tempo "Rilassato ma con ritmo"
    % Phrase 1
    <<
        {
            \voiceOne
            r8. 
            \clef bass
            \stemDown
            <c! a>16
            \override Rest.staff-position = #4
            r8 q4 q8-. r8 q8-.
            \stemNeutral
            \revert Rest.staff-position
        }
        
        \new Voice {
            \voiceTwo
            \once \override DynamicText.Y-offset = #-5
            <d' d, c>1_\fp
        }
    >> 
    |
    \break
    r8 <b, gis>4 q8-.
    r8 q8. q16 r8
    |
    <bes-3 g-1>8. q16 r8
    q8. q8. r8
    q16 <d~-5 a~-2>16
    |
    <d a>8. <d-4 a-1>16
    r16 q16 r16 q16~
    q16. <d a>32( e4-5)
    <cis!-3 a-1>16-. r16
    |
    % Phrase 2
    \break
    \override Rest.staff-position = #0
    <fis, d>8. q16
    r8 q4.. q8-. r16
    |
    r8 <gis-2 eis-1>8. q16 r8
    q8. r16 q16 r16 q16 r16
    |
    \revert Rest.staff-position
}

rilassato-lower = \relative b, {
    % Phrase 1
    \override Rest.staff-position = #0
    <d c a f d>2 r8
    <f, d>8. <d' a>16 r8
    |
    d,2 r8
    <d' gis,>8. q16 r8
    |
    d,2 r8
    <d' g,>8. q16 r8
    |
    d,2 r8
    <e cis>8. q16 r8
    |
    <b' fis d b>2 r8
    <b fis>8. q16 r8
    |
    b,2 r8
    <eis b>8. q16 r8
}

endingOne-upper = \relative b {
    \break
    <cis-5 ais-4>8. q16 r8
    <g-2 e-1>8. <cis ais>16 r8
    ais8-.-2 <cis-4 ais-2>16 b16-1~
    |
    b8 \acciaccatura{\once \stemUp e8-4} eis16-5 e16 r8
    d8-. \acciaccatura{\once \stemUp e8} <eis b eis,>8.--
    \once \override Fingering.padding = 0.5
    <e-4 a,-1>16( d16-3) r8.
    |
    \clef treble
    \verseOneBeforeRepeat-upper
    
}

endingOne-lower = \relative b,, {
    b2 r8 
    <fis' b,>8. q16 r16 <b~ b,_~>16
    |
    q4. q4 r16 e16( d16) <a' a,>8-. r16
    |
    \verseOneBeforeRepeat-lower
}

endingTwo-upper = \relative b {
    \break
    \clef bass
    \stemDown
    <cis-5 ais-4>8. q16 r8
    <g-2 e-1>8. <cis ais>16 r8
    ais8-.-2 <cis-4 ais-2>16 b16-1~
    |
    b8 \acciaccatura{\once \stemUp e8-4} eis16-5 e8-. d-. <e-4 e,>16-.
    r16 <eis-5 eis,>16-. <e-5 e,>8-. <d-5 d,>-. b->~
    |
    b2 r2
    \bar "|."
    \stemNeutral
}

endingTwo-lower = \relative b,, {
    b2 r8 
    <fis' b,>8. q16 r16 <b~ b,_~>16
    |
    q2 r16
    <d d,>16 b8-. <a fis d>8-. <b~ fis~ b,_~>8
    |
    q2 r2
    \revert Rest.staff-position
}

upper = \relative c'' {
  \clef treble
  \key b \minor
  \time 4/4

  \intro-upper
  \verseOneBeforeRepeat-upper

  \repeat volta 2 {
    \verseOneAfterRepeat-upper
    \verseTwo-upper
    \chorusOne-upper
    \interludeOne-upper
    \affettuoso-upper
    \calamitoso-upper
    \chorusTwo-upper
    \chorusThree-upper
    \acrobatico-upper
    \tenebroso-upper
    \rilassato-upper
    \alternative {
        \volta 1 { \endingOne-upper }
        \volta 2 { \endingTwo-upper }
    }
  }
  
}



lower = \relative c {
  \clef bass
  \key b \minor
  \time 4/4

  \intro-lower
  \verseOneBeforeRepeat-lower

  \repeat volta 2 {
    \verseOneAfterRepeat-lower
    \verseTwo-lower
    \chorusOne-lower
    \interludeOne-lower
    \affettuoso-lower
    \calamitoso-lower
    \chorusTwo-lower
    \chorusThree-lower
    \acrobatico-lower
    \tenebroso-lower
    \rilassato-lower
    \alternative {
        \volta 1 { \endingOne-lower }
        \volta 2 { \endingTwo-lower }
    }
  }
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
