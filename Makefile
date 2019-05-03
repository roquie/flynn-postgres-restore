IMAGE = roquie/flynn-postgres-restore
VERSION = 9.5

image:
	docker build -t $(IMAGE):$(VERSION) .

push:
	docker push $(IMAGE):$(VERSION)
