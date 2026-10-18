# Increment timer on dirt-to-mud armor stands
execute as @e[type=armor_stand,tag=dtm_timer] run scoreboard players add @s dtm_timer 1
# Bubble particles (start to conversion)
execute as @e[type=armor_stand,tag=dtm_timer,scores={dtm_timer=..70}] at @s run particle minecraft:bubble ~ ~0.2 ~ 0.3 0.3 0.3 0.01 2
execute as @e[type=armor_stand,tag=dtm_timer,scores={dtm_timer=..80}] at @s run particle minecraft:bubble_pop ~ ~0.2 ~ 0.3 0.3 0.3 0.01 1
# Cauldron level visual feedback (only valid levels 1-3, at correct Y)
execute as @e[type=armor_stand,tag=dtm_timer,scores={dtm_timer=35}] at @s run setblock ~ ~ ~ minecraft:water_cauldron[level=2]
execute as @e[type=armor_stand,tag=dtm_timer,scores={dtm_timer=65}] at @s run setblock ~ ~ ~ minecraft:water_cauldron[level=1]
execute as @e[type=armor_stand,tag=dtm_timer,scores={dtm_timer=100}] at @s run setblock ~ ~ ~ minecraft:cauldron replace
# Splash sound at start and just before conversion
execute as @e[type=armor_stand,tag=dtm_timer,scores={dtm_timer=2}] at @s run playsound entity.generic.splash master @a[distance=..5] ~ ~ ~ 0.5 1
# After 5s (100 ticks), conversion
execute as @e[type=armor_stand,tag=dtm_timer,scores={dtm_timer=100..}] at @s run function craftinsky:dirt_to_mud_convert/dirt_to_mud_convert
# Remove new tag after effect
execute as @e[type=armor_stand,tag=dtm_new] run tag @s remove dtm_new
