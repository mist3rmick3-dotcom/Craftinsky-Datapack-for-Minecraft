scoreboard objectives add cs_stone_count dummy
execute store result score @s cs_stone_count run clear @s stone 0
execute if score @s cs_stone_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Stone collector]","color":"light_purple"}]
execute if score @s cs_stone_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_stone_count matches ..63 run advancement revoke @s only craftinsky:block/stone
