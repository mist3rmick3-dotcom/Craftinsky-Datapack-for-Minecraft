data remove entity @s interaction
playsound minecraft:block.stone.break block @a ~ ~ ~ 1 1
execute at @s positioned ~ ~1 ~ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:ice",Count:1b},PickupDelay:20,Tags:["co_ice_ice_drop"],Motion:[0.0d,0.3d,0.0d]}
kill @e[type=block_display,tag=co_ice_ghost]
kill @s