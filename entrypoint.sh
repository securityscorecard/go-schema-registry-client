#!/bin/bash
glide install
go test $(glide novendor) -tags=integration -cover
