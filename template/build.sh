#!/bin/bash

typst compile main.typ main.pdf && xdg-open main.pdf
