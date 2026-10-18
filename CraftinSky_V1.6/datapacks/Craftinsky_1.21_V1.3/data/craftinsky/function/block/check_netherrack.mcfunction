scoreboard objectives add cs_netherrack_count dummy
execute store result score @s cs_netherrack_count run clear @s netherrack 0
execute if score @s cs_netherrack_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Netherrack Collector]","color":"red"}]
execute if score @s cs_netherrack_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_netherrack_count matches ..63 run advancement revoke @s only craftinsky:block/netherrack
