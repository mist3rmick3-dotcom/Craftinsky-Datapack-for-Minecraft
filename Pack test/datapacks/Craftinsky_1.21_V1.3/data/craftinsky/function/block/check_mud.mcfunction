scoreboard objectives add cs_mud_count dummy
execute store result score @s cs_mud_count run clear @s mud 0
execute if score @s cs_mud_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[mud here?]","color":"gray"}]
execute if score @s cs_mud_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_mud_count matches ..63 run advancement revoke @s only craftinsky:muddy
