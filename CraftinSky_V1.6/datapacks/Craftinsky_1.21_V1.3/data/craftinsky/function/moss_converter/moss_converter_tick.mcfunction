# Incrémente le timer sur les armor stands moss converter
execute as @e[type=armor_stand,tag=mc_moss_convert] run scoreboard players add @s mc_moss_timer 1

# Vérifier si les blocs requis sont toujours présents, sinon détruire l'armor stand
execute as @e[type=armor_stand,tag=mc_moss_convert,scores={mc_moss_timer=1..5999}] at @s unless block ~ ~ ~ #minecraft:cave_vines run kill @s
execute as @e[type=armor_stand,tag=mc_moss_convert,scores={mc_moss_timer=1..5999}] at @s unless block ~ ~1 ~ minecraft:stone run kill @s
execute as @e[type=armor_stand,tag=mc_moss_convert,scores={mc_moss_timer=6001..11999}] at @s unless block ~ ~ ~ #minecraft:cave_vines run kill @s
execute as @e[type=armor_stand,tag=mc_moss_convert,scores={mc_moss_timer=6001..11999}] at @s unless block ~ ~1 ~ minecraft:pale_moss_block run kill @s

# Particules pendant tout le processus (1-11999 ticks) - émises depuis le bloc au-dessus
execute as @e[type=armor_stand,tag=mc_moss_convert,scores={mc_moss_timer=1..11999}] at @s run particle minecraft:falling_spore_blossom ~ ~1.5 ~ 0.3 0.2 0.3 0 1
# Son splash au début
execute as @e[type=armor_stand,tag=mc_moss_convert,scores={mc_moss_timer=2}] at @s run playsound entity.generic.splash master @a[distance=..5] ~ ~ ~ 0.5 1

# Étape 1 : Au bout de 6000 ticks (5 min), convertir stone en pale_moss_block
execute as @e[type=armor_stand,tag=mc_moss_convert,scores={mc_moss_timer=6000}] at @s if block ~ ~1 ~ minecraft:stone run setblock ~ ~1 ~ minecraft:pale_moss_block replace
execute as @e[type=armor_stand,tag=mc_moss_convert,scores={mc_moss_timer=6000}] at @s run particle minecraft:happy_villager ~ ~2 ~ 0.3 0.3 0.3 0.1 5
execute as @e[type=armor_stand,tag=mc_moss_convert,scores={mc_moss_timer=6000}] at @s run playsound block.moss.place block @a[distance=..5] ~ ~ ~ 1 1

# Étape 2 : Au bout de 12000 ticks (10 min), convertir pale_moss_block en moss_block, puis supprimer armor stand
execute as @e[type=armor_stand,tag=mc_moss_convert,scores={mc_moss_timer=12000}] at @s if block ~ ~1 ~ minecraft:pale_moss_block run setblock ~ ~1 ~ minecraft:moss_block replace
execute as @e[type=armor_stand,tag=mc_moss_convert,scores={mc_moss_timer=12000}] at @s run particle minecraft:happy_villager ~ ~2 ~ 0.5 0.5 0.5 0.1 8
execute as @e[type=armor_stand,tag=mc_moss_convert,scores={mc_moss_timer=12000}] at @s run playsound entity.player.levelup master @a[distance=..5] ~ ~ ~ 1 1
# Suppression de l'armor stand à la fin du cycle
execute as @e[type=armor_stand,tag=mc_moss_convert,scores={mc_moss_timer=12000}] at @s run kill @s
