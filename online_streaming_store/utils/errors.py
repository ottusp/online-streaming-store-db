from online_streaming_store.utils.helpers import snake_case_to_lower

def get_integrity_error_message(error):
	if "cannot insert NULL" in str(error):
		field = str(error).split('"')[-2]
		return f"""O campo {snake_case_to_lower(field)} é necessário"""

	if "check constraint" in str(error):
		return "Regra violada para um campo"

	if "invalid number" in str(error):
		return "Um campo precisa ter valor numérico"

	return str(error)