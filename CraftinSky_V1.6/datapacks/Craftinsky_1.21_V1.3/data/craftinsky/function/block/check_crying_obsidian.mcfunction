scoreboard objectives add cs_crying_obsidian_count dummy
execute store result score @s cs_crying_obsidian_count run clear @s crying_obsidian 0
execute if score @s cs_crying_obsidian_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Crying Obsidian Collector]","color":"blue"}]
execute if score @s cs_crying_obsidian_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_crying_obsidian_count matches ..63 run advancement revoke @s only craftinsky:block/crying_obsidian
