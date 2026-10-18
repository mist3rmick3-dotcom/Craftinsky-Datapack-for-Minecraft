# Tag les joueurs qui regardent un acacia sapling avec pink_dye
execute as @a[nbt={SelectedItem:{id:"minecraft:pink_dye"}},tag=!sc_converted] at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ acacia_sapling run tag @s add sc_converted
execute as @a[nbt={SelectedItem:{id:"minecraft:pink_dye"}},tag=!sc_converted] at @s anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ acacia_sapling run tag @s add sc_converted
execute as @a[nbt={SelectedItem:{id:"minecraft:pink_dye"}},tag=!sc_converted] at @s anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ acacia_sapling run tag @s add sc_converted
execute as @a[nbt={SelectedItem:{id:"minecraft:pink_dye"}},tag=!sc_converted] at @s anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ acacia_sapling run tag @s add sc_converted
execute as @a[nbt={SelectedItem:{id:"minecraft:pink_dye"}},tag=!sc_converted] at @s anchored eyes positioned ^ ^ ^5 if block ~ ~ ~ acacia_sapling run tag @s add sc_converted

# Convertit les acacia en cherry pour les joueurs taggés
execute as @a[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ acacia_sapling run setblock ~ ~ ~ cherry_sapling
execute as @a[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ acacia_sapling run setblock ~ ~ ~ cherry_sapling
execute as @a[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ acacia_sapling run setblock ~ ~ ~ cherry_sapling
execute as @a[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ acacia_sapling run setblock ~ ~ ~ cherry_sapling
execute as @a[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^5 if block ~ ~ ~ acacia_sapling run setblock ~ ~ ~ cherry_sapling

# Particules sur les cherry (résultat de la conversion)
execute as @a[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ cherry_sapling run particle minecraft:dust{color:[1.0,0.4,0.7],scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 0.5 20
execute as @a[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ cherry_sapling run particle minecraft:dust{color:[1.0,0.4,0.7],scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 0.5 20
execute as @a[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ cherry_sapling run particle minecraft:dust{color:[1.0,0.4,0.7],scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 0.5 20
execute as @a[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ cherry_sapling run particle minecraft:dust{color:[1.0,0.4,0.7],scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 0.5 20
execute as @a[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^5 if block ~ ~ ~ cherry_sapling run particle minecraft:dust{color:[1.0,0.4,0.7],scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 0.5 20

# Son + consommation UNE FOIS puis retire le tag
execute as @a[tag=sc_converted] run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.5
execute as @a[tag=sc_converted] run clear @s pink_dye 1
tag @a[tag=sc_converted] remove sc_converted
