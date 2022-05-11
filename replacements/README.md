#  OpenRCT2/OpenMusic/replacements

This page is the main hub for the soundtrack of OpenRCT2.

> What are the different names for?  

This is so people can use the original RCT soundtrack together with the OpenRCT2 soundtrack without interfering with one another. Is RCT2 not loaded in? Loaded parks will then fall back onto its OpenRCT2 equivalent.

 There will be three asset packs:
 
 * `rct2.music` - All the music from RCT2.
 * `openrct2.music.cover` - Cover of non-copyright music, e.g. merry-go-round, pirate theme, ragtime, organ etc.
 * `openrct2.music.alternative` - Replaces copyright music with an OpenRCT2 official music object equivalent, e.g. space -> galaxy.

Since the merry-go-round music is a playlist of fairground organ this might require some extra coordination in it's own folder. Please check `/replacements/openrct2.music.fairground/`'s README.md for the plan.

## Progress

| RollerCoaster Tycoon 2      | OpenRCT2/OpenMusic               | Type        | Status | Signature | Merged? |
| ----------------------      | ------------------               | ----        | ------ | --------- | ------- |
| Title screen                | OpenRCT2 style                   | Alternative | WIP | [mattheasboelter](https://github.com/mattheasboelter) |
| Dodgems beat style          | Dodgems beat style               | Cover       | Finished | [karst](https://github.com/karst) | ✔
| Fairground organ style      | Fairground organ style           | Cover       | [See here](https://github.com/OpenRCT2/OpenMusic/tree/master/replacements/openrct2.music.fairground) | Multiple  | 
| Organ style                 | Organ style                      | Cover
| Pirates style               | Pirates style                    | Cover 
| Ragtime style               | Ragtime style                    | Cover
| Candy style                 | Sweets style                     | Alternative
| Egyptian style              | Arabian style                    | Alternative
| Fantasy style               | Magic style                      | Alternative
| Gentle style                | Soft style                       | Alternative
| Horror style                | Thriller style                   | Alternative
| Ice style                   | Frost style                      | Alternative
| Jungle drums style          | Swamp style                      | Alternative
| Jurassic style              | Pre-history style                | Alternative
| Martian style               | Alien style                      | Alternative
| Mechanical style            | Club style                       | Alternative
| Medieval style              | Miners style                     | Alternative
| Modern style                | House style                      | Alternative
| Oriental style              | Eastern style                    | Alternative
| Rock style 1                | Rock style 4                     | Alternative
| Rock style 2                | Metal style 1                    | Alternative
| Rock style 3                | Metal style 2                    | Alternative
| Roman fanfare style         | Empire style                     | Alternative
| Summer style                | Spring style                     | Alternative
| Snow style                  | Winter style                     | Alternative
| Space style                 | Galaxy style                     | Alternative | Finished | [karst](https://github.com/karst) | ✔
| Techno style                | Acid style                       | Alternative
| Toyland style               | Joy style                        | Alternative
| Urban style                 | Breakdance style                 | Alternative
| Water style                 | Fountain style                   | Alternative
| Wild west style             | Cowboy style                     | Alternative



Names are not final, changes are likely!

## Rendering Guide

Please include the following files:

Please make sure you have all the rights to your samples! All original works included should be licensed under the Creative Commons licensing. (Probably under CC BY-SA)

Please put each style in their own folder.  
Folder naming format: `openrct2.music.<style>`

-----------------------
For unfinished works:
- Stems in WAV format of each instrument.  
- A `unfinished.txt` document with the following info: Full name of the creator(s), Song name (ID if unknown), Artist name (if any)
- (Optional) A project file. (Please provide what DAW and what VST plugins were used to create this project file in `unfinished.txt`)


-----------------------
For finished works:

- A FLAC file of the finished product. Call this 0.flac and put it in a folder named `music` in the `openrct2.music.<style>` folder.

A object.json file following the format of `object.json` found on the root of `\replacements\`

Replace the following:  
`<style>` with the name of the style.  
`<Full Name>` with your full name, add multiple if more people.  
`<Artist Name - Song Name>` with the artist name and songname seperated by a dash.  

-----------------------
For testing, please follow this guide:  
https://youtu.be/AavaaLHgdYk

Until OGG or other format support is added to the game you can render the file as a WAV file in the following format (this can be done in Audacity): `Project rate: 22050Hz`, Save as `WAV`, `Encoding: Unsigned 8-bit PCM`.
