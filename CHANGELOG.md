# Changelog

## Unreleased

- **Sound**: the teaser now has music. It is synthesised when the video
  is rendered, from a score in `src/teaser.lob`: a two-note rocking line
  on one unbroken pulse, a low note that alternates between two
  harmonies, and an arpeggio above them for the middle bars. It fades in
  from almost nothing and is over just before the video ends. The score
  takes its length from the storyboard and does not follow the beats;
  claims check that the pulse never breaks, that nothing loud is struck
  at once, and that the music ends before the picture does.
- **Teaser**: the second beat's caption now reads "Prose and code in one
  context window", and captions may run to seven words.

## 0.4.0 - 2026-10-03

First version under source control.

- **Teaser**: a 30-second, square video about notlob in six beats: a
  Knuth quotation with one cut made to it; one module shown as a context
  window; its claims run for real, with a tick on each line notlob
  reports; a chomper splitting as the example that says so passes; the
  characters an agent reads by search against by `notlob query`; and the
  name-graph, from one module's names out to the whole project. It
  renders silent.
- **Shown from real projects**: the star module is pn-chomper's Petri
  Marking, at pn-chomper 0.8.0. Listings are coloured by notlob's parser,
  claim results come from `notlob test`, the split from pn-chomper's own
  firing rule, the context figures from measurement at render time, and
  the graph from `notlob graph`.
- **Game board**: Petri nets drawn the way pn-chomper's renderer draws
  them, with a claim that fails if the renderer's colours or measurements
  change.
- **Graph layout**: each module a flower of its names, modules in
  dependency order on a sunflower spiral, with spacing guarantees checked
  on generated and real graphs.
- **Sound**: a synthesised track exists but is switched off; the first
  attempt did not suit the pictures.

### Development

- `run.sh` with `env`, `test`, `render` and `frames` targets. `frames`
  writes contact sheets of each render and reports its length and
  whether it has sound.
- `docs/notlob-backport.md` describes features built here that belong in
  notlob.
