# notlob-vids

Short animations about [notlob](https://github.com/adamburkegh/notlob), written in notlob. Each video is the output of a program: the scenes are drawn with manim, and what they show (source listings, claim results, context measurements, the name graph) is read or run from real notlob projects at render time. The first is a 30-second teaser built around one module of [pn-chomper](https://github.com/adamburkegh/pn-chomper). The modules are in `src/`; start with [src/notlob/vids.lob](src/notlob/vids.lob) and [src/teaser.lob](src/teaser.lob).

## Install

Needs Python 3.12, Node, and `notlob` on PATH. Text is set in Georgia and Consolas.

```
git clone https://github.com/adamburkegh/notlob ref-projects/notlob
git clone --branch v0.8.0 https://github.com/adamburkegh/pn-chomper ref-projects/pn-chomper
python -m venv nvids
./run.sh env
./run.sh test
./run.sh render    # videos in media/
./run.sh frames    # contact sheets in media/frames/
```
