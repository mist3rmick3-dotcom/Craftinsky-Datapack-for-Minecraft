# Detect dirt items on filled water cauldron and summon a timer armor stand 1 block below, invisible (only if none within 1 block)
execute as @e[type=item,nbt={Item:{id:"minecraft:dirt"}},tag=!dtm_has_timer] at @s if block ~ ~-1 ~ minecraft:water_cauldron[level=3] unless entity @e[type=armor_stand,tag=dtm_timer,distance=..1] run summon armor_stand ~ ~-1 ~ {Tags:["dtm_timer","dtm_new"],NoGravity:1b,Marker:0b,Invisible:1b}
# Tag the item to prevent multiple armor stands
execute as @e[type=item,nbt={Item:{id:"minecraft:dirt"}},tag=!dtm_has_timer] at @s if block ~ ~-1 ~ minecraft:water_cauldron[level=3] run tag @s add dtm_has_timer
