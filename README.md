# 𒀰 CL-CUNEIFORM

[![Join the chat at https://gitter.im/thephoeron/cl-cuneiform](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/thephoeron/cl-cuneiform?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![Build Status](https://travis-ci.org/thephoeron/cl-cuneiform.svg?branch=master)](https://travis-ci.org/thephoeron/cl-cuneiform)
[![Coverage Status](https://coveralls.io/repos/thephoeron/cl-cuneiform/badge.svg?branch=master)](https://coveralls.io/r/thephoeron/cl-cuneiform?branch=master)
[![Not Available in Quicklisp](https://img.shields.io/badge/quicklisp-not%20available-red.svg)](https://quicklisp.org/)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE)

Common Lisp library for handling and parsing unicode Sumerian and Akkadian cuneiform signs, and their ASCII and Latin representations.

### Supported Platforms

CL-CUNEIFORM is known to compile and pass all tests with 100% code coverage on the latest 64-bit versions of the following Lisp implementations:

- SBCL
- Clozure CL
- CLISP
- ECL
- ABCL
- Allegro CL

It *does not build* on:
- CMUCL

It *has not been tested* on:
- LispWorks
- Clasp
- or other available Common Lisp implementations

### Unicode Cuneiform Fonts

In order to make the most use of this library, you will need the unicode fonts which contain the glyphs for range 0x12000&mdash;0x123FF; you may download the required fonts from: [Unicode Fonts for Ancient Scripts](http://users.teilar.gr/~g1951d/) &mdash; recommended: Akkadian 7.15, for the full range of cuneiform characters defined in Unicode 8.0.  They are made available free for any use, without license, copyright, or trademark.  Alternatively, you may try out some of Google's web fonts which contain the cuneiform range, such as Noto Sans.

If you can see the cuneiform sign at the top of this document, fonts have been installed correctly.

### Reading Cuneiform Transcriptions

Transcription of cuneiform uses a specialized syntax:

**.** (dot): Top-level chaining of signs.

**×** (contains): The sign following the contains mark is contained within the preceding sign form.

**+** (plus): The sign following the plus mark is chained at the same level of nesting as the preceding sign form.

**&** (over): the preceding sign form is drawn stacked above the following sign form.

**%** (crossing): the following sign form is drawn over the preceding sign

**@** (opposing): the following sign form is drawn rotated 180°.  Alternate uses of **@** include terminal **@t**, signifying that the sign form is rotated 45°; and **@180**, signifying that the whole sign form is inverted, *i.e.,* rotated 180°.

**×4** (squared): the preceding sign is repeated four times, rotated, in a square formation.

As well, reading of cuneiform signs requires additional characters.  Sumerian is transcribed to the Latin alphabet using: a, e, i, u, m, n, ŋ, p, b, t, d, k, g, s, z, š, ḫ, r̂, l, r.  And Akkadian using: a, e, i, u, m, p, b, n, t, d, s, z, r, l, ṭ, ṣ, š, y, k, g, ḫ, w, q, ʔ.

**ʔ** (aleph): /ʔ/, glottal stop. In ASCII transcriptions it appears as **'**.

**Ŋ** (engma): /ŋ/, such as the English terminal phoneme in "si**ng**".  Also commonly transcribed as **G̃**.  In ASCII transcriptions, it appears as "NG" or "J".

**Ḫ** (h-breve): /ḫ/, velar fricative. In ASCII transcriptions, it appears as either "H" or "X".

**R̂** (r-circumflex): /r̂/, possibly an alveolar tap. In ASCII transcriptions, it appears as "DR".

**Š** (shin): /ʃ/, such as the English phoneme in "fi**sh**" or "**sh**ip".  In ASCII transcriptions, it appears as "SH", "SZ", or "C".

**Ṣ** (sadhe): /t͡sʼ/, possibly an alveolar ejective fricative. In ASCII transcriptions, it appears as "S,".

**Ṭ** (teth): /t'/, possibly an alveolar ejective. In ASCII transcriptions, it appears as "T,".

Subscript numerals in the transcriptions are not read, they are used for cataloging purposes.

### License

Copyright &copy; 2014--2015, "the Phoeron" Colin J.E. Lupton. This project has been released under the MIT License; please see `cl-cuneiform/LICENSE` for more information.
