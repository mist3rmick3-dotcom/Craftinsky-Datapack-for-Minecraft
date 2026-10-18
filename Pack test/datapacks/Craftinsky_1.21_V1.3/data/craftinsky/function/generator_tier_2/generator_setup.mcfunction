# Spawn armor stand invisible au niveau de la chiseled_tuff_bricks regardée
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["generator_tier_2"]}

# Spawn item frames sur chaque face de la lodestone, sans condition sur les blocs autour
summon item_frame ~ ~ ~ {Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:4b,Tags:["generator_tier_2_frame"],Item:{id:"minecraft:cobblestone",count:1}}
summon item_frame ~ ~ ~ {Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:5b,Tags:["generator_tier_2_frame"],Item:{id:"minecraft:cobblestone",count:1}}
summon item_frame ~ ~ ~ {Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:2b,Tags:["generator_tier_2_frame"],Item:{id:"minecraft:cobblestone",count:1}}
summon item_frame ~ ~ ~ {Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:3b,Tags:["generator_tier_2_frame"],Item:{id:"minecraft:cobblestone",count:1}}
summon item_frame ~ ~1 ~ {Invisible:1b,Invulnerable:1b,Fixed:1b,Facing:1b,Tags:["generator_tier_2_frame"],Item:{id:"minecraft:diamond_pickaxe",count:1}}
