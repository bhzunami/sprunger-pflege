#!/bin/bash

#hugo && scp -rp public/* nm:/home/nicolas/projects/sprunger-pflege/
hugo && rsync -avz --delete public/ nm:/home/nicolas/projects/sprunger-pflege

