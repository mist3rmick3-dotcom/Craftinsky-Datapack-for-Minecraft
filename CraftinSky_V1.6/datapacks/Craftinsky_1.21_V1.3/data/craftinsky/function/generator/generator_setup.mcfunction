# Spawn marker invisible au niveau de la lodestone regardée
summon marker ~ ~ ~ {Tags:["generator"]}

# Spawn item frames sur chaque face de la lodestone
summon item_frame ~ ~ ~ {Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:4b,Tags:["generator_frame"],Item:{id:"minecraft:cobblestone",count:1}}
summon item_frame ~ ~ ~ {Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:5b,Tags:["generator_frame"],Item:{id:"minecraft:cobblestone",count:1}}
summon item_frame ~ ~ ~ {Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:2b,Tags:["generator_frame"],Item:{id:"minecraft:cobblestone",count:1}}
summon item_frame ~ ~ ~ {Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:3b,Tags:["generator_frame"],Item:{id:"minecraft:cobblestone",count:1}}
summon item_frame ~ ~1 ~ {Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:1b,Tags:["generator_frame"],Item:{id:"minecraft:iron_pickaxe",count:1}}
