# Card Players

Card Players is a simple, non-interactive web-based card game taking the results of [AC-Resolve](https://github.com/jcolag/AC-Resolve) to experiment with the [Phoenix web framework](http://www.phoenixframework.org/).  The "play" should be identical to the example game there.

It uses, as standard, my card data and card images from [AttaCard-Generator](https://github.com/jcolag/AttaCard-Generator).

The quick logo uses [Droid Serif]() and [Exo 2](http://ndiscovered.com/exo-2/), available under the terms of the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0.html) and the [SIL Open Font License](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL), respectively.  The logo is included as an SVG as well as PNG file.

To load the card content into the database via ecto, call...

    mix run priv/repo/seeds.exs

...before starting the server.

The game is mostly built around the existing card set, but if replacing the cards with another deck, use `generate_seeds.sh` to produce the `insert!()` calls.
