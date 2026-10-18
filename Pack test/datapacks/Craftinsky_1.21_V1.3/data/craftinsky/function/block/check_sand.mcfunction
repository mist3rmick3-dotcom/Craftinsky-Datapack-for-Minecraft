scoreboard objectives add cs_sand_count dummy
execute store result score @s cs_sand_count run clear @s sand 0
execute if score @s cs_sand_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Sand Collector]","color":"gray"}]
execute if score @s cs_sand_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_sand_count matches ..63 run advancement revoke @s only craftinsky:block/sand
