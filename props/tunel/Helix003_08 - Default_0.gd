extends MeshInstance



export(Color) var new_color = Color(255, 0, 0, 255)

# Called when the node enters the scene tree for the first time.
func _ready():
	#randomize()
	#var newMaterial = SpatialMaterial.new()
	#newMaterial.albedo_color = Color(0.92, 0.69, 0.13, 1.0)
	#self.material_override = newMaterial
	#print($".".mesh.surface_get_material(0).albedo_color)
	
	#$".".mesh.surface_get_material(0).emission = new_color
	#print($".".mesh.surface_get_material(0).emission_enabled )
	#set_process(true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
