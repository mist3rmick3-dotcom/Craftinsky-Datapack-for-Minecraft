scoreboard objectives add cs_red_nether_bricks_count dummy
execute store result score @s cs_red_nether_bricks_count run clear @s red_nether_bricks 0
execute if score @s cs_red_nether_bricks_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Red Nether Bricks Collector]","color":"dark_red"}]
execute if score @s cs_red_nether_bricks_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_red_nether_bricks_count matches ..63 run advancement revoke @s only craftinsky:block/red_nether_bricks
