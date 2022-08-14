# Advanced Electric High Resolution
Advanced Electric is a Factorio mod that adds new types of solar panels and accumulators.

![Mod ingame image](https://mods-data.factorio.com/assets/425e92aaeefaaa211981bf784fe07ad730d39323.png)

# Contributing
If you want to make this mod compatible with other mods or add a feature that you are missing please issue a pull request.
If you are not versed in mod making in factorio please create an issue instead.

# Translating
If you do not see your language being supported by the mod feel free to issue a pull request and add your specific language file. I'm always thankful for contributors who want to make it easier for others to use the mod.

You can also use this google form: https://forms.gle/dLog7eigLCVccEtG6

### Further info:
The language file consists of 4 parts. Each part defines the name of
1. the item
2. the entity
3. the technology
4. the description of the technology

The file needs to be called locale.cfg and placed in "**Advanced-Electric-Revamped-v16/locale/[locale-shorthand] (e.g.: en, de, nl, ...)**"
`e.g: Advanced-Electric-Revamped-v16/locale/it/locale.cfg`.  
Take a look in the locale folder for more examples: [advanced-electric/locale](https://github.com/LsHallo/advanced-electric/tree/master/Advanced-Electric-Revamped-v16/locale)  
#### Sample language file (english)
```
[item-name]
advanced-accumulator=Advanced accumulator
elite-accumulator=Elite Accumulator
ultimate-accumulator=Ultimate accumulator
advanced-solar=Advanced solar panel
elite-solar=Elite solar panel
ultimate-solar=Ultimate solar panel

[entity-name]
advanced-accumulator=Advanced accumulator
elite-accumulator=Elite accumulator
ultimate-accumulator=Ultimate accumulator
advanced-solar=Advanced solar panel
elite-solar=Elite solar panel
ultimate-solar=Ultimate solar panel

[technology-name]
advanced-accumulator=Advanced Accumulator
elite-accumulator=Elite Accumulator
ultimate-accumulator=Ultimate Accumulator
advanced-solar=Advanced solar panel
elite-solar=Elite solar panel
ultimate-solar=Ultimate solar panel

[technology-description]
advanced-accumulator=Buildings that store excess electric energy for later.
elite-accumulator=Buildings that store excess electric energy for later.
ultimate-accumulator=Buildings that store excess electric energy for later.
advanced-solar=Source of free electric energy, but useless at night.
elite-solar=Source of free electric energy, but useless at night.
ultimate-solar=Source of free electric energy, but useless at night.

[mod-setting-name]
advanced-electric-enabled-tiers=Enabled Tiers
advanced-electric-multiplier-advanced-solar=Advanced Solar Tier Multiplier
advanced-electric-multiplier-elite-solar=Elite Solar Tier Multiplier
advanced-electric-multiplier-ultimate-solar=Ultimate Solar Tier Multiplier
advanced-electric-multiplier-advanced-accumulator=Advanced Accumulator Tier Multiplier
advanced-electric-multiplier-elite-accumulator=Elite Accumulator Tier Multiplier
advanced-electric-multiplier-ultimate-accumulator=Ultimate Accumulator Tier Multiplier

[mod-setting-description]
advanced-electric-enabled-tiers=Disable specific tiers.
advanced-electric-multiplier-advanced-solar=Multiplier for the production values of the tier. 60kW * [Multiplier]. E.g.: For a 600kW panel use 10.
advanced-electric-multiplier-elite-solar=Multiplier for the production values of the tier. 60kW * [Multiplier]. E.g.: For a 6MW panel use 100.
advanced-electric-multiplier-ultimate-solar=Multiplier for the production values of the tier. 60kW * [Multiplier]. E.g.: For a 60MW panel use 1000.
advanced-electric-multiplier-advanced-accumulator=Multiplier for the production values of the tier. 5MJ * [Multiplier]. E.g.: For a 50MJ accumulator use 10.
advanced-electric-multiplier-elite-accumulator=Multiplier for the production values of the tier. 5MJ * [Multiplier]. E.g.: For a 500MJ accumulator use 100.
advanced-electric-multiplier-ultimate-accumulator=Multiplier for the production values of the tier. 5MJ * [Multiplier]. E.g.: For a 5GJ accumulator use 1000.

[string-mod-setting]
advanced-electric-enabled-tiers-advanced=Advanced
advanced-electric-enabled-tiers-elite=Advanced + Elite
advanced-electric-enabled-tiers-ultimate=Advanced + Elite + Ultimate
```
