extends Node2D

@export var seat_scene: PackedScene

var seats: Array[Node2D] = []

func create_seats(player_count: int, center: Vector2, radius_x: float, radius_y: float) -> void:
	for seat in seats:
		seat.queue_free()

	seats.clear()

	for i in range(player_count):
		var seat = seat_scene.instantiate()

		var angle = TAU * i / player_count - PI / 2

		seat.position = Vector2(
			center.x + cos(angle) * radius_x,
			center.y + sin(angle) * radius_y
		)

		add_child(seat)
		seats.append(seat)


func get_seat(index: int) -> Node2D:
	return seats[index]
