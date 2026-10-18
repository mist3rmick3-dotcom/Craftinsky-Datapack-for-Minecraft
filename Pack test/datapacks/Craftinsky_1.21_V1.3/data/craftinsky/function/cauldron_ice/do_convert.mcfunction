# Conversion immediate: eau -> glace
tag @s add co_ice_done
playsound minecraft:block.ice.break block @a ~ ~ ~ 1 1
particle minecraft:snowflake ~ ~ ~ 0.4 0.4 0.4 0.05 8
setblock ~ ~-1 ~ minecraft:cauldron replace
summon interaction ~ ~-1 ~ {Tags:["co_ice_second_interaction"],width:1.01f,height:1.01f,response:1b}
summon minecraft:block_display ~-0.37 ~-0.75 ~-0.37 {Tags:["co_ice_ghost"],transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.75f,0.6875f,0.75f]},block_state:{Name:"minecraft:ice"}}