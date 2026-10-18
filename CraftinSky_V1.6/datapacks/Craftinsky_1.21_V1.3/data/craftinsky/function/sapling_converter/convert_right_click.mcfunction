# Détection de l'acacia sapling visé (clic droit déjà déclenché par l'advancement)
tag @s add sc_rc
execute as @s at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ acacia_sapling run tag @s add sc_converted
execute as @s at @s anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ acacia_sapling run tag @s add sc_converted
execute as @s at @s anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ acacia_sapling run tag @s add sc_converted
execute as @s at @s anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ acacia_sapling run tag @s add sc_converted
execute as @s at @s anchored eyes positioned ^ ^ ^5 if block ~ ~ ~ acacia_sapling run tag @s add sc_converted

# Conversion effective
execute as @s[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ acacia_sapling run setblock ~ ~ ~ cherry_sapling
execute as @s[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ acacia_sapling run setblock ~ ~ ~ cherry_sapling
execute as @s[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ acacia_sapling run setblock ~ ~ ~ cherry_sapling
execute as @s[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ acacia_sapling run setblock ~ ~ ~ cherry_sapling
execute as @s[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^5 if block ~ ~ ~ acacia_sapling run setblock ~ ~ ~ cherry_sapling

# Particules + son + consommation du colorant (une seule fois)
execute as @s[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ cherry_sapling run particle minecraft:dust{color:[1.0,0.4,0.7],scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 0.5 20
execute as @s[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ cherry_sapling run particle minecraft:dust{color:[1.0,0.4,0.7],scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 0.5 20
execute as @s[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ cherry_sapling run particle minecraft:dust{color:[1.0,0.4,0.7],scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 0.5 20
execute as @s[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ cherry_sapling run particle minecraft:dust{color:[1.0,0.4,0.7],scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 0.5 20
execute as @s[tag=sc_converted] at @s anchored eyes positioned ^ ^ ^5 if block ~ ~ ~ cherry_sapling run particle minecraft:dust{color:[1.0,0.4,0.7],scale:1.0} ~ ~0.5 ~ 0.3 0.3 0.3 0.5 20
execute as @s[tag=sc_converted] run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.5
execute as @s[tag=sc_converted] run clear @s pink_dye 1

# Reset
tag @s remove sc_rc
tag @s remove sc_converted
advancement revoke @s only craftinsky:sapling/acacia_to_cherry_right_click
