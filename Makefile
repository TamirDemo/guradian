deps:
	mix local.hex --force
	mix local.rebar --force
	mix deps.get
	AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMAAAKEY
	AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMAAAKEK

testing: deps
	mix compile --warnings-as-errors --force
	mix format --check-formatted
	mix credo --strict
	MIX_ENV=test mix coveralls.json
	mix dialyzer --halt-exit-status

docs:
	mix inch.report
