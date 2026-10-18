scoreboard objectives add cs_gravel_count dummy
execute store result score @s cs_gravel_count run clear @s gravel 0
execute if score @s cs_gravel_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Gravel collector]","color":"light_purple"}]
execute if score @s cs_gravel_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_gravel_count matches ..63 run advancement revoke @s only craftinsky:gravel
