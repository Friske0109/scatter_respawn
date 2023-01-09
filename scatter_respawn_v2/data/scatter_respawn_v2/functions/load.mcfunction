tellraw @a ["",{"text":"Welcome","color":"red"},{"text":" to","color":"gold"},{"text":" Scatter","color":"yellow"},{"text":" Rewpawn","color":"green"},{"text":" Game","color":"blue"},{"text":"*開始説明*"}]

function scatter_respawn_v2:book_reload

#playconter

forceload add 0 0 0 0
execute unless entity @e[tag=sr_PlayCounter] run summon minecraft:armor_stand 0 100 0 {NoGravity:true,Marker:true,Invisible:true,Tags:["sr_PlayCounter"]}
execute unless entity @e[tag=sr_MapCenter] run summon minecraft:armor_stand 0 100 0 {NoGravity:true,Marker:true,Invisible:true,Tags:["sr_MapCenter"]}



#scoreboard
scoreboard objectives add sr_playcount dummy
scoreboard objectives add sr_report dummy
scoreboard objectives add sr_timelimit dummy
scoreboard objectives add sr_player dummy
scoreboard objectives add sr_display_timelimit dummy
scoreboard players set @e[tag=sr_PlayCounter] sr_report 3
scoreboard players set @e[tag=sr_PlayCounter] sr_timelimit 72000
scoreboard players set @e[tag=sr_PlayCounter] sr_display_timelimit 60