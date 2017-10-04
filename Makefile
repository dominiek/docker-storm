
build:
	docker build -t dominiek/storm-base base
	docker build -t dominiek/storm-nimbus nimbus
	docker build -t dominiek/storm-worker worker
	docker build -t dominiek/storm-ui ui

.PHONY: push
push:
	docker push dominiek/storm-base
	docker push dominiek/storm-nimbus
	docker push dominiek/storm-worker
	docker push dominiek/storm-ui
