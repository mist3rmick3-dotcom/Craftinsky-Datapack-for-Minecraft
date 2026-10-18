# Conversion de tous les items dirt proches en mud, effets, puis suppression
execute as @e[type=item,nbt={Item:{id:"minecraft:dirt"}},distance=..1] at @s run data merge entity @s {Item:{id:"minecraft:mud"}}
# Retire le tag de protection pour permettre une nouvelle conversion si remis dans l'eau
execute as @e[type=item,nbt={Item:{id:"minecraft:mud"}},distance=..1,tag=dtm_has_timer] at @s run tag @s remove dtm_has_timer
execute as @e[type=item,nbt={Item:{id:"minecraft:mud"}},distance=..1] at @s run data merge entity @s {Motion:[0.0,0.35,0.0]}
particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.1 10
playsound entity.player.levelup master @a[distance=..5] ~ ~ ~ 1 1
kill @s
