# Récompense déclenchée par le clic droit sur l'interaction
execute as @e[type=interaction,tag=sc_interaction,sort=nearest,limit=1,distance=..6] at @s run function craftinsky:sapling_converter/do_convert
# Consomme le colorant une fois
clear @s pink_dye 1
advancement revoke @s only craftinsky:sapling/acacia_to_cherry_right_click
