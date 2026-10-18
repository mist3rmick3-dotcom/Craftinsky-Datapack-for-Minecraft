execute if block ~ ~ ~ minecraft:lava_cauldron run setblock ~ ~ ~ minecraft:cauldron replace
execute if block ~ ~ ~ minecraft:cauldron run summon block_display ~ ~ ~ {Tags:["co_ghost"],transformation:{scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:obsidian"}}
execute if block ~ ~ ~ minecraft:cauldron run particle minecraft:poof ~ ~0.5 ~ 0.2 0.2 0.2 0.05 15
execute if block ~ ~ ~ minecraft:cauldron run playsound minecraft:block.lava.extinguish master @a[distance=..5] ~ ~ ~ 1 1
execute as @p[distance=..6,nbt={SelectedItem:{id:"minecraft:water_bucket"}}] run clear @s minecraft:water_bucket 1
execute as @p[distance=..6,nbt={SelectedItem:{id:"minecraft:water_bucket"}}] run give @s minecraft:empty_bucket 1
data remove entity @s interaction
kill @s
