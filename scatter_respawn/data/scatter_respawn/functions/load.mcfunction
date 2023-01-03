tellraw @a ["",{"text":"Welcome ","color":"red"},{"text":"to","color":"gold"},{"text":" Scatter ","color":"yellow"},{"text":"Respawn","color":"green"},{"text":" Game","color":"dark_green"},{"text":"\n---------------------------------\nゲームを開始するには start\nゲームを終了するには stop\nを実行してください。"}]
scoreboard objectives add sr_difficulty dummy
scoreboard objectives add sr_player dummy
execute unless entity @e[tag=sr_MapCenter] run summon armor_stand 1024 0 1024 {NoGravity:true,Marker:true,Invisible:true,Tags:["sr_MapCenter"]}