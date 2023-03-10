#  OpenRCT2/OpenMusic/replacements

This page is the main hub for the soundtrack of OpenRCT2.

> What are the different names for?  

This is so people can use the original RCT soundtrack together with the OpenRCT2 soundtrack without interfering with one another. Is RCT2 not loaded in? Loaded parks will then fall back onto its OpenRCT2 equivalent.

 There will be three asset packs:
 
 * `rct2.music` - All the music from RCT2.
 * `openrct2.music.cover` - Cover of non-copyright music, e.g. merry-go-round, pirate theme, ragtime, organ etc.
 * `openrct2.music.alternative` - Replaces copyright music with an OpenRCT2 official music object equivalent, e.g. space -> galaxy. These will also be available as their own when RollerCoaster Tycoon 2 is loaded into the game.

Since the merry-go-round music is a playlist of fairground organ this might require some extra coordination in it's own folder. Please check `/replacements/openrct2.music.fairground/`'s README.md for the plan.

## Progress

| Object                     | RollerCoaster Tycoon 2      | OpenRCT2/OpenMusic               | Type        | Status   | Signature | Merged? |
| ------                     | ----------------------      | ------------------               | ----        | ------   | --------- | ------- |
| openrct2.music.title       | Title screen                | OpenRCT2 style                   | Alternative | WIP      | [mattheasboelter](https://github.com/mattheasboelter) |
| openrct2.music.bumpercar   | Dodgems beat style          | Dodgems beat style               | Cover       | Finished | [karst](https://github.com/karst) | ✔
| openrct2.music.fairground  | Fairground organ style      | Fairground organ style           | Cover       | [See here](https://github.com/OpenRCT2/OpenMusic/tree/master/replacements/openrct2.music.fairground) | Multiple  | 
|                            | Organ style                 | Organ style                      | Cover       |
|                            | Pirates style               | Pirates style                    | Cover       |
| openrct2.music.ragtime     | Ragtime style               | Ragtime style                    | Cover       |
|                            | Candy style                 | Sweets style                     | Alternative |
|                            | Egyptian style              | Arabian style                    | Alternative |
|                            | Fantasy style               | Magic style                      | Alternative |
|                            | Gentle style                | Soft style                       | Alternative |
|                            | Horror style                | Thriller style                   | Alternative |
| openrct2.music.blizzard    | Ice style                   | Blizzard style                   | Alternative | Finished | [karst](https://github.com/karst) | ✔
|                            | Jungle drums style          | Swamp style                      | Alternative |
| openrct2.music.prehistoric | Jurassic style              | Prehistoric style                | Alternative | Finished | [Flyxxpy](https://github.com/Flyxxpy) | ✔
|                            | Martian style               | Alien style                      | Alternative |
|                            | Mechanical style            | Club style                       | Alternative |
| openrct2.music.medieval    | Medieval style              | Miners style                     | Alternative |
|                            | Modern style                | House style                      | Alternative |
|                            | Oriental style              | Eastern style                    | Alternative |
|                            | Rock style 1                | Rock style 4                     | Alternative |
|                            | Rock style 2                | Metal style 1                    | Alternative |
|                            | Rock style 3                | Metal style 2                    | Alternative |
|                            | Roman fanfare style         | Empire style                     | Alternative |
|                            | Summer style                | Spring style                     | Alternative |
|                            | Snow style                  | Winter style                     | Alternative |
| openrct2.music.galaxy      | Space style                 | Galaxy style                     | Alternative | Finished | [karst](https://github.com/karst) | ✔
| openrct2.music.acid        | Techno style                | Acid style                       | Alternative | Finished | [karst](https://github.com/karst) | ✔
|                            | Toyland style               | Joy style                        | Alternative |
|                            | Urban style                 | Breakdance style                 | Alternative |
|                            | Water style                 | Fountain style                   | Alternative |
|                            | Wild west style             | Cowboy style                     | Alternative |


Names are not final, changes are likely!

## Rendering Guide

Please include the following files:

All original works included in the OpenRCT2 project are licensed under the following Creative Commons licensing: [CC BY-SA](https://creativecommons.org/licenses/by-sa/3.0/).  
Please make sure you have all the rights to your samples!

Put each style in their own folder.  
Folder naming format: `openrct2.music.<style>`  
Make sure to update the `README.md`'s Progress table with your PR!

-----------------------
For unfinished works:
- A folder called `WIP`
- Stems in WAV format of each instrument. Put these in the `WIP` folder. This way people can work on it 
- A file called `unfinished.txt` which contains the following information: Full Name, Artist Name, Song name (ID if it has no name yet.), Style name.
- (Optional) A project file. (Please provide what DAW and what VST plugins were used to create this project file in `unfinished.txt`)

-----------------------
For finished works:

- A FLAC file of the finished product. Call this `0.flac` and put it in a folder named `music` in the `openrct2.music.<style>` folder.
- An `object.json` file following the format found in README.md on the root of `/replacements/`  
- Make sure that the song loops perfectly so there's no noticable popping or gaps.

-----------------------
For testing, please follow this guide:  
https://youtu.be/AavaaLHgdYk

The guide is slightly out of date since you can now use OGG Vorbis. For testing you can render in this format to keep the file size low.

-----------------------
Code template for `object.json`:

```
{
    "id": "openrct2.music.<style>",
    "sourceGame":"official",
    "authors": [
        "<Full Name>"
    ],
    "version": "1.0",
    "objectType": "music",
    "properties": {
        "tracks": [
            {
                "source": "music/0.flac",
                "name": "<Artist Name - Song Name>"
            }
        ]
    },
    "strings": {
        "name": {
            "en-GB": "<Style> style"
        }
    }
}
```

Replace the following:  
`<style>` with the name of the style.  
`<Full Name>` with your full name, add multiple if more people.  
`<Artist Name - Song Name>` with the artist name and songname seperated by a dash.  


###### OpenMusic is a project of OpenRCT2 ©2014-2022