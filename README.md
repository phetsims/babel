babel
=====

This repo contains the translated strings for PhET's simulations. The strings are submitted to this repository via a
web-based utility. If you are interested in translating PhET simulations, please see
https://phet.colorado.edu/en/for-translators.

By PhET Interactive Simulations
https://phet.colorado.edu/

### localeData

We have a localeData.json file that is the ground truth for information about the locales that we support.
This is a critical file, since simulation builds always use the tip of babel's main branch to build. Be careful
about modifying this file!

If you modify localeData.json:

1. Run updateLocaleInfo.js (see documentation there). It will update information in various legacy files (e.g.
   localeInfo).
2. Notify the responsible developers for rosetta, weddell, yotta, and the website that localeData/localeInfo were
   updated.

Notes about the format and data:

Locale data was originally based on Java's Locale object, but has been modified. Essentially each locale has the
following data:

- locale: Either in the format `xx` or `xx_XX` (ISO-639-1 with 2-letter country code optional). Sometimes these do not
  match with ISO-639-1, we have had to add some for our needs.
    - language codes are ISO 639-1, see http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
    - country codes are ISO 3166-1 alpha2, see http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
    - We have added made-up locales that fits in this format when it doesn't conflict with other cases. Every locale has
      one of these locale values (used as the primary locale value). E.g. for Lakota, we added `lk` as a locale.
    - NOTE: We are using an older version of ISO 639-1 because java.util.Locale maps some of the newer language codes to
      older codes. See Locale.convertOldISOCodes. The affected country codes are:
        - he -> iw (Hebrew)
        - yi -> ji (Yiddish)
        - id -> in (Indonesian)
- locale3: Format of `xxx`. The ISO-639-2 code for the language (3-letter code), if available. Some locales do not
  have this information (most do).
- direction: either `ltr` or `rtl` for left-to-right or right-to-left
- englishName: The name of the locale in English
- localizedName: The name of the locale in the locale itself

### License

See the [license](LICENSE)
