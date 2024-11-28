# 🍁 ehrbl

> a tiny board to celebrate the coming of 🍂 with minimal finger travel.

![populated board prototype](.images/prototype_populated.png)

After spending the day at my computer, I stepped out with friends Saturday night
for a burger & beverage. On the patio of our local institution, the air was
cool.

> _Autumn had undeniably arrived._

I had been wanting to squeeze a Ferris Sweep out of a Xiao somehow and it
occurred to me as I later continued working that maybe I was actually trying to
make a 28 key keyboard. I reached for a leaf to lay over the keys: the maple fit
nicely, conjuring memories of _beurre d'érable_ (maple butter) in Montreal's
Jean-Talon Market.

## BOM

|      QTY      |             Part             | JLCPCB Part # |
| :-----------: | :--------------------------: | :-----------: |
|       2       |         MY-LR44-03-J         |   C5457116    |
|       4       |       100 nF 0402 cap        |    C60474     |
|       2       |          SSSS811101          |    C109335    |
|       4       |      MF254V-11-07-0743       |   C2889988    |
|       6       |          CESD5V0D3           |    C22643     |
|       2       |   0906-2-15-20-75-14-11-0    |   C5261048    |
|       8       |           UMP1NTR            |    C510065    |
| 56 (optional) |   3305-0-15-80-47-27-10-0    |   C17370797   |
|     26/28     |       ChocV1 switches        |      N/A      |
| 2 (optional)  | Panasonic EVQWGD001 encoders |      N/A      |
|       2       |   3.7V LIR1254 (NOT LR44)    |      N/A      |
|       2       |        Xiao nRF52840         |      N/A      |

## Putting it Together

[![KiBot](https://github.com/willpuckett/ehrbl/actions/workflows/kibot.yml/badge.svg)](https://github.com/willpuckett/ehrbl/actions/workflows/kibot.yml)

### Fabrication & Assembly Files [[zip](https://github.com/willpuckett/ehrbl/releases/latest/download/jlcpcb.zip)]

JLC likes to install the 3305's upside down. Include
[this pic](.images/3305-installation.png) along with a note requesting they be
installed thru-hole.

Choose 28 keys, or 26 keys with encoders.

> [!CAUTION]
> Use **3.7v LIR1254** (lithium ion rechargable) battery **only**, being sure to
> not install it upside down.

## Case

[![Build123d Case](https://github.com/willpuckett/ehrbl/actions/workflows/case.yml/badge.svg)](https://github.com/willpuckett/ehrbl/actions/workflows/case.yml)

### There's a case [[step](https://github.com/willpuckett/ehrbl/releases/latest/download/case.step)] [[stl](https://github.com/willpuckett/ehrbl/releases/latest/download/case.step)]

![case](.images/case.png)

It's really more of a skin. Print and place the pcb directly in it. The case is
only one half, flip it in your slicer for the other half 🙃

> [!TIP]
> Polymaker TPU works well. It seems to like to print slow and cool—leave the
> door ajar.

TPU is relatively non-slip, and it absorbs and distributes the force of
typing—no bumpons necessary.

## Caster

[![ZMK Build](https://github.com/willpuckett/ehrbl/actions/workflows/zmk.yml/badge.svg)](https://github.com/willpuckett/ehrbl/actions/workflows/zmk.yml)
[![keymap drawer](https://github.com/willpuckett/ehrbl/actions/workflows/keymap.yml/badge.svg)](https://github.com/willpuckett/ehrbl/actions/workflows/keymap.yml)

### Download the latest firmware [[left](https://github.com/willpuckett/ehrbl/releases/latest/download/caster_left.uf2)] [[right](https://github.com/willpuckett/ehrbl/releases/latest/download/caster_right.uf2)]

Using a variant that should probably be referred to as _Befuddle_, scoring a
whispy 636.1 "total word effort" on
[cyanophage](https://cyanophage.github.io/playground.html?layout=bfdl%2F%3Bpouyjcstrx-naihqvwgm%5C%3Dk%2C.%27ze&mode=ergo&lan=english).
The Y-punctuation cluster interaction is its greatest shortcoming, but it seems
to be the least of all evils.

![cyanophage stats](.images/cyanophage.png)

Optimized for right handed CAD—Blender, KiCad, Shapr...

> [!NOTE]
> The combo-forward layout obscures CAGS home row mods in the graphics.

![Caster](.images/keymap_caster.svg)

### ZMK Studio

For easy customization, connect to ZMK Studio in a
[web-serial capable browser](https://zmk.studio) or with the
[stand alone app](https://github.com/zmkfirmware/zmk-studio/releases/latest).

> [!IMPORTANT]
> Please drop a note to your local Seeed representative asking that they
> breakout the PDM pins (pins 0.16, 1.0, and 1.10) to pads on the underside of
> Xiao nRF52840. [[Seeed USA](mailto:seeed_us@seeed.cc)]
> [[Seeed Europe](mailto:seeed_emea@seeed.cc)]
