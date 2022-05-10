#  OpenRCT2/OpenMusic/replacements

This page is the main hub for the soundtrack of OpenRCT2.

Why different names, you might ask?  
This is so people can use the original RCT soundtrack together with the OpenRCT2 soundtrack without interfering with one another. Is RCT2 not loaded in? It then loaded parks will fall back onto its OpenRCT2 equivalent.

## Status

In this Document we have listed the (potential) names of styles to replace the original set with.  
The reason we have different names than the base game RollerCoaster Tycoon 2 is so you can use both OpenRCT2's official soundtrack aswell as RCT2's official soundtrack without it getting confusing. If the game is standalone and RCT2 is not loaded in the game it will fall back onto the following styles:

| RollerCoaster Tycoon 2      | OpenRCT2/OpenMusic               | Status | Signature | Merged? |
| ----------------------      | ------------------               | ------ | --------- | ------- |
| Gentle style                | Soft style                       |
| Summer style                | Spring style                     |
| Water style                 | Fountain style                   |
| Ragtime style               | 1900 style                       |
| Techno style                | Acid style                       |
| Mechanical style            | Club style                       |
| Modern style                | House style                      |
| Wild west style             | Cowboy style                     |
| Pirates style               | Sailor style                     |
| Rock style 1/2/3            | Rock style 4 / Metal style 1/2   |
| Fantasy style               | Magic style                      |
| Horror style                | Terror style                     |
| Toyland style               | Joy style                        |
| Candy style                 | Sweets style                     |
| Roman fanfare style         | Empire style                     |
| Oriental style              | Eastern style                    |
| Martian style               | Alien style                      |
| Space style                 | Galaxy style                     | Finished | [karst](https://github.com/karst) | Yes
| Jungle drums style          | Swamp style                      |
| Jurassic style              | Pre-history style                |
| Egyptian style              | Arabian style                    |
| Dodgems beat style          | Bumpercar style                  | Finished | [karst](https://github.com/karst) | Yes
| Snow style                  | Winter style                     |
| Ice style                   | Frost style                      |
| Medieval style              | Miners style                     |
| Urban style                 | Breakdance style                 |
| Organ style                 | Church style                     |


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
- (Optional) A project file.


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