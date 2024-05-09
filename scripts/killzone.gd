extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("You died!")
	# 死亡后时间速度放慢为0.5
	Engine.time_scale=0.5
	# 死亡后玩家移除碰撞体从地图掉落
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout():
	# 重生后时间速度恢复为1
	Engine.time_scale=1
	get_tree().reload_current_scene()
