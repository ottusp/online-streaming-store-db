from online_streaming_store.utils.helpers import snake_case_to_capital, snake_case_to_lower

def init_app(app):

	@app.context_processor
	def utility_processor():
		return dict(
			snake_case_to_capital=snake_case_to_capital,
			snake_case_to_lower=snake_case_to_lower
			)