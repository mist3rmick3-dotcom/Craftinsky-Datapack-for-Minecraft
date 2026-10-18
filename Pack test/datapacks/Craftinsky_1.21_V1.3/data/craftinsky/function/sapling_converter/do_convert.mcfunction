# Conversion au clic droit
execute at @s if block ~ ~ ~ acacia_sapling run setblock ~ ~ ~ cherry_sapling
execute at @s if block ~ ~ ~ cherry_sapling run particle minecraft:dust{color:[1.0,0.4,0.7],scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 0.5 20
execute at @s run playsound minecraft:block.amethyst_block.chime master @a[distance=..5] ~ ~ ~ 0.8 1.5
kill @s
