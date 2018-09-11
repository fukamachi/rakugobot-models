setup:
	createuser -l -d -P rakugobot
	createdb -U rakugobot rakugobot

destroy:
	dropdb rakugobot
	dropuser rakugobot

recreate: destroy setup migrate

generate:
	ros -s rakugobot-models -e '(mito:connect-toplevel :postgres :username "rakugobot" :password "rakugobot" :database-name "rakugobot")' -e '(mito.migration:generate-migrations #P"db/")'

migrate:
	ros -s rakugobot-models -e '(mito:connect-toplevel :postgres :username "rakugobot" :password "rakugobot" :database-name "rakugobot")' -e '(mito.migration:migrate #P"db/")'

status:
	ros -s rakugobot-models -e '(mito:connect-toplevel :postgres :username "rakugobot" :password "rakugobot" :database-name "rakugobot")' -e '(mito.migration:migration-status #P"db/")'
