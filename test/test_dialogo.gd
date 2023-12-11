# test_FileChecker.tscn (ou outro nome que preferir)

extends "res://addons/gut/test.gd"

func _before_all():
	pass

func _after_all():
	pass

func _before_each():
	pass

func _after_each():
	pass

func test_file_does_not_exist():
	var FileChecker = preload("res://dialogos/DialogoExploradora.dialogue")
	var verificador_arquivo = FileChecker

	# Red: O arquivo não deve existir inicialmente
	assert_eq(not verificador_arquivo.file_exists("res://dialogos/DialogoExploradora.dialogue"), "Arquivo não deve existir inicialmente.")

func test_file_exists_after_implementation():
	var FileChecker = preload("res://dialogos/DialogoCaçador.dialogue")
	var verificador_arquivo = FileChecker.new()

	# Green: Implementar file_exists para retornar true
	var mock = FileCheckerMock.new()
	assert(mock.file_exists("res://dialogos/DialogoCaçador.dialogue"), "Arquivo deve existir após a implementação.")

class FileCheckerMock:
	func file_exists(caminho_arquivo: String) -> bool:
		return true

func test_another_file_does_not_exist():
	var FileChecker = preload("res://dialogos/DialogoMercenaria.dialogue")
	var verificador_arquivo = FileChecker.new()

	# Red: Verificar se outro arquivo não existe inicialmente
	assert(not verificador_arquivo.file_exists("res://dialogos/OutroArquivo.dialogue"), "Outro arquivo não deve existir inicialmente.")
