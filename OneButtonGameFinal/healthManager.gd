extends Node

signal health_updated

var health : int = 3

func subtract_health(num: int): 
	health -= num
	health_updated.emit(health)
