extends Node2D

# Ordem correta das User Stories
var correct_order = [5, 4, 2, 6, 1, 3]
# 1 2 3 4 5 6
# 5, 4, 2, 6, 3, 1
 
# Ordem clicada pelo jogador
var user_order = []
var show_order = []

func _reset_game():
	# Limpa a ordem do jogador para nova tentativa
	user_order.clear()
	show_order.clear()


func _on_us_1_pressed() -> void:
	user_order.push_back(5)
	show_order.push_back(1)
	$Label.text = "Ordem escolhida: " + str(show_order)
	$VBoxContainer/US1.disabled = true


func _on_us_2_pressed() -> void:
	user_order.push_back(3)
	show_order.push_back(2)
	$Label.text = "Ordem escolhida: " + str(show_order)
	$VBoxContainer/US2.disabled = true

func _on_us_3_pressed() -> void:
	user_order.push_back(6)
	show_order.push_back(3)
	$Label.text = "Ordem escolhida: " + str(show_order)
	$VBoxContainer/US3.disabled = true


func _on_us_4_pressed() -> void:
	user_order.push_back(2)
	show_order.push_back(4)
	$Label.text = "Ordem escolhida: " + str(show_order)
	$VBoxContainer/US4.disabled = true

func _on_us_5_pressed() -> void:
	user_order.push_back(1)
	show_order.push_back(5)
	$Label.text = "Ordem escolhida: " +  str(show_order)
	$VBoxContainer/US5.disabled = true # Replace with function body.

func _on_us_6_pressed() -> void:
	user_order.push_back(4)
	show_order.push_back(6)
	$Label.text = "Ordem escolhida: " + str(show_order)
	$VBoxContainer/US6.disabled = true
	
func _avancar() -> void:
	print(calcula_inversoes())
	get_tree().change_scene_to_file('res://addons/gut/gui/BottomPanelShortcuts.tscn')


var inversions = 0

# Função merge para unir dois subarrays
func merge(arr, left, mid, right):
	var n1 = mid - left + 1
	var n2 = right - mid

	# Vetores temporários L e R
	var L = []
	var R = []

	# Preenche os vetores temporários
	for i in range(n1):
		L.append(arr[left + i])
	for j in range(n2):
		R.append(arr[mid + 1 + j])

	var i = 0
	var j = 0
	var k = left
	var inv1 = n1

	# Mescla os vetores temporários de volta no array original
	while i < n1 and j < n2:
		if L[i] <= R[j]:
			arr[k] = L[i]
			inv1 -= 1
			i += 1
		else:
			inversions += inv1
			arr[k] = R[j]
			j += 1
		k += 1

	# Copia os elementos restantes de L[]
	while i < n1:
		arr[k] = L[i]
		i += 1
		k += 1

	# Copia os elementos restantes de R[]
	while j < n2:
		arr[k] = R[j]
		j += 1
		k += 1

# Função mergeSort para dividir e ordenar o array
func merge_sort(arr, left, right):
	if left >= right:
		return
	var mid = left + (right - left) / 2
	merge_sort(arr, left, mid)
	merge_sort(arr, mid + 1, right)
	merge(arr, left, mid, right)

# Função principal para rodar o algoritmo
func calcula_inversoes():
	var n = 6

	print("Vetor original:")
	print(user_order)

	merge_sort(user_order, 0, n - 1)

	print("\nVetor ordenado:")
	print("\nInversões:")
	print(inversions)
	return inversions
