# Conversion, effects, and armor stand removal
execute as @e[type=armor_stand,tag=dtm_timer,scores={dtm_timer=100..}] at @s run function craftinsky:dirt_to_mud_convert/dirt_to_mud_convert_once
