# OpenRCT2/OpenMusic
This project aims to create an alternative, high quality soundtrack as replacement for, and addition to RollerCoaster Tycoon 2's soundtrack for use in [OpenRCT2](https://github.com/OpenRCT2/OpenRCT2).

[![Build Status](https://api.travis-ci.org/OpenRCT2/OpenMusic.svg?branch=master)](https://travis-ci.org/OpenRCT2/OpenMusic)

Project discussion takes place on Discord.

- Invitation link: https://discord.gg/uNzSmAj
- [![](https://img.shields.io/discord/264137540670324737?label=OpenRCT2%2Fsound-and-music)](https://discordapp.com/channels/264137540670324737/694586451500859469)

## Licensing
All songs provided with OpenRCT2 are by default copyrighted under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). Make sure that your song is CC BY-SA 4.0 or something less strict.  
The following tunes are part of public domain:
* All Ragtime styles
* All Fairground organ styles
* Pirate style

## Progress
### Claim Thread

Are you looking to contribute to this project? Please check out the Discussion for claiming what tunes you want to replace. Additional music is always welcome, too as long as it fits the project.  
Discussion page: https://github.com/OpenRCT2/OpenMusic/issues/24

## PR contributions
### Localisation
Translations are welcome to be done at any time. You can find the names of all files under `"strings"` in the `object.json` file of each object folder. These will be located under the folders of either `alternative` or `additions`.

Please add the correct string name for your language.
List:
```
en-GB: Default / English (GB)
ar-EG: Arabic (Egypt)
ca-ES: Catalan (Spain)
cs-CZ: Chzech
da-DK: Danish
de-DE: German
en-US: English (USA)
eo-ZZ: Esperanto
es-ES: Spanish (Spain)
fi-FI: Finnish
fr-CA: French (Canada)
fr-FR: French
hu-HU: Hungarian
it-IT: Italian
ja-JP: Japanese
ko-KR: Korean
nb-NO: Bokmål (Norway)
nl-NL: Dutch
pl-PL: Polish
pt-BR: Portugese (Brazil)
ru-RU: Russian
sv-SE: Swedish
tr-TR: Turkish
vi-VN: Vietnamese
zh-CN: Chinese (Simplified, People's Republic of China)
zh-TW: Chinese (Traditional, Taiwan)
```

### Music  

Follow the following steps to ensure everything is right:
- Is the tune a replacement or an addition? If a replacement please claim the tune in the thread listed above.
- If the tune is a cover or an alternative tune make sure to edit `openrct2.music.alternative.json` or `openrct2.music.cover.json` respectively. Use the other listings in that file as a base. Please check the code on [JSONlint](https://jsonlint.com/) to see if the code is valid. Beware: JSON is stingy about comma's.  
- If the tune is an alternative or additional tune please include an `object.json` file and fill out the code template listed below.

Tip: You can create custom music files on [GOES](https://goes.rctspace.com/music)

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
                "name": "<Song Name>",
                "composer": "<Artist name>"
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

### Creating a new OpenMusic release

The following is documentation for people that have the rights when updating.
Make sure to follow the following checklist

- [ ] Update `CMakeLists.txt`: `OPENMSX_VERSION` & `OPENMSX_SHA1` (Tip: SHA1 can easily be optained when 7zip is installed).
- [ ] Update `openrct2.proj`: `OpenMSXUrl` & `OpenMSXSha1`.

 With new additions also update the following:
      
- [ ] Update `distribution/changelog.txt`.
- [ ] Add song id to `src/openrct2/object/DefaultObjects.cpp` (Can be found under `const std::string_view DefaultSelectedObjects[]`).
- [ ] Update `extern const std::string_view DefaultSelectedObjects[`number`];` in `src/openrct2/object/DefaultObjects.h`.
- [ ] Add song id to `src/openrct2/rct12/RCT12.cpp` (Can be found under `static constexpr std::string_view _musicStyles[]`).


###### OpenMusic is a project of OpenRCT2 ©2014-2023
