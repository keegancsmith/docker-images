images := $(patsubst %/Dockerfile,%,$(wildcard */Dockerfile))

TAG ?= latest

default:
	@echo Possible targets: $(images)

$(images):
	$(eval image := keegancsmith/$@)
	[ ! -f $@/Makefile ] || (cd $@; $(MAKE))
	docker build -t $(image):$(TAG) $@
	@echo "To push run:"
	@echo "  docker push $(image):$(TAG)"

.PHONY: default $(images) 
