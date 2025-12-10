#!/bin/bash

echo "Running Newman API Tests..."
newman run postman/collection.json \
    -e postman/environment.json \
    -r cli,html \
    --reporter-html-export reports/newman-report.html

echo "Report generated in reports/newman-report.html"
