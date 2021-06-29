#!/bin/bash
cd {{ path }}
uvicorn main:app --host 0.0.0.0 --reload


