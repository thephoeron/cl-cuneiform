# CL-CUNEIFORM

Common Lisp library for handling and parsing unicode Sumerian and Akkadian cuneiform signs, and their ASCII and Latin representations.

### Reading Cuneiform Transcriptions

Transcription of cuneiform uses a specialized syntax:

**.** (dot): Top-level chaining of signs.

**×** (contains): The sign following the contains mark is contained within the preceding sign form.

**+** (plus): The sign following the plus mark is chained at the same level of nesting as the preceding sign form.

**&** (over): the preceding sign form is drawn stacked above the following sign form.

**%** (crossing): the following sign form is drawn over the preceding sign

**@** (opposing): the following sign form is drawn rotated 180°.

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

This project is released under the MIT License.  See cl-cuneiform/LICENSE for more information.
