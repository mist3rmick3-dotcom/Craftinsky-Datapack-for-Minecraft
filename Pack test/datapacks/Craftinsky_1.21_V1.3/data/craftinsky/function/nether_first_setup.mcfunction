fill ~-1 ~-2 ~-1 ~1 ~-5 ~-7 minecraft:netherrack
fill ~-1 ~-2 ~-1 ~1 ~-2 ~-4 minecraft:crimson_nylium
fill ~-1 ~-2 ~-5 ~1 ~-2 ~-7 minecraft:soul_sand
fill ~2 ~-3 ~-5 ~5 ~-5 ~-7 minecraft:netherrack
fill ~2 ~-2 ~-5 ~5 ~-2 ~-7 minecraft:warped_nylium
setblock ~5 ~-1 ~-6 minecraft:chest[facing=west] replace
item replace block ~5 ~-1 ~-6 container.9 with minecraft:crimson_fungus 1
item replace block ~5 ~-1 ~-6 container.13 with minecraft:blaze_rod 1
item replace block ~5 ~-1 ~-6 container.17 with minecraft:warped_fungus 1
scoreboard players set @s cs_nether_spawned 1
