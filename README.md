# OpenRCT2-OpenMusic
This project aims to create an alternative, higher quality version of the music from RollerCoaster Tycoon 2 for use in [OpenRCT2](https://github.com/OpenRCT2/OpenRCT2).

## Chat
[![Gitter](https://img.shields.io/badge/gitter-Lobby-red.svg?style=flat-square)](https://gitter.im/OpenRCT2-OpenMusic/Lobby)

## Progress
### Fairground organ style
All of the pieces from the fairground organ style are so old that they fall under public domain.

#### Theoretical background
A fairground organ is a musical instrument that usually plays by itself. It usually contains a small/medium sized pipe organ with a few different stops, lots of percussion (xylophone, tambourine, triangle, cymbals, multiple kinds of drums) and sometimes a Glockenspiel and/or Bells.
The score is provided in form of [music rolls](https://en.wikipedia.org/wiki/Music_roll) or [book music](https://en.wikipedia.org/wiki/Book_music).

The fairground organ is limited by its instruments. As all pieces should be in the same style and sound as if they are played by the same fairground organ, all arrangements are limited to the same instruments and the same set of organ registrations (yet to be determined).

Another limitation is the lack of dynamics. Fairground organs don't have a swell box, so dynamics are achieved by different registrations. Therefore the LilyPond files do not contain dynamic symbols for the organ parts.

Fairground organs are used mostly outside, and although they are somewhat protected inside their enclosure, they still experience massive changes in temperature and humidity. This causes the pipe organ to go out of tune. While this is really bad for classical pipe organs, when not too extreme this effect enriches the sound of fairground organs and is therefore desirable. In my experiments, I found a tone instability of about 2-3 percent to be rather pleasant.

#### Status
The lists of the pieces of music in the game credits and [here](http://rct.wikia.com/wiki/Music) are unfortunately not 100% correct. If you know the name of the missing pieces, please let me know!

| File | Piece of music | Status |
| ---- | -------------- | ------ |
| css4.dat | Die Regimentskinder by Julius Fučík | Work in progress ([current state](https://cuervo.phoenix.uberspace.de/music/cotr5.ogg)) |
| css5.dat | Serenade by Jonny Heykens | Work in progress ([current state](https://cuervo.phoenix.uberspace.de/music/serenade1.ogg)) |
| css6.dat | La Belle Espagnole, Op.103 by Robert Vollstedt | TODO |
| css7.dat | Dornröschens Brautfahrt by Max Rhode | TODO |
| css8.dat | Tales from the Vienna Woods Waltz by Johann Strauss II | TODO |
| css9.dat | ? | TODO |
| css11.dat | ?Called "Das Alpenhorn", sound a bit like the "Schnacklwalzer"? | TODO |
| css12.dat | Bella Bella Bimba | TODO |
| css13.dat | The Blond Sailor by The Andrews Sisters | TODO |
| css14.dat | Overture from Poet and Peasant by Franz von Suppé | TODO |
| css15.dat | Multiple waltzes by Johann Strauß II: 00:00 Morgenblätter/01:10 Die Fledermaus - Overture/01:35 Rosen aus dem Süden/02:20 Wiener Blut/03:05 The Blue Danube | TODO |

### Other music styles
A few of the other music styles are original compositions for the game, so the can't be recreated. The others could. TODO.
