def snake_case_to_capital_all(_list):
	return map(lambda str: snake_case_to_capital(str), _list)

def snake_case_to_capital(str):
	return str.replace('_', ' ').capitalize()

def snake_case_to_lower(str):
	return str.replace('_', ' ').lower()
