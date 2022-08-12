#!/bin/bash

helm upgrade \
	--install \
	--create-namespace \
	--atomic \
	--wait \
	--namespace staging \
	csweb \
	./csweb \
	--set image.repository=calvincs.azurecr.io \
	--dry-run
