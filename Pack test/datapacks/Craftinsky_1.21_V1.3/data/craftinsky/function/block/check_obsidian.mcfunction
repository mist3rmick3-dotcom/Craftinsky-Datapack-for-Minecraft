scoreboard objectives add cs_obsidian_count dummy
execute store result score @s cs_obsidian_count run clear @s obsidian 0
execute if score @s cs_obsidian_count matches 64.. run tellraw @s ["",{"selector":"@s"},{"text":" has made the advancement "},{"text":"[Obsidian Collector]","color":"dark_purple"}]
execute if score @s cs_obsidian_count matches 64.. run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute if score @s cs_obsidian_count matches ..63 run advancement revoke @s only craftinsky:block/obsidian
