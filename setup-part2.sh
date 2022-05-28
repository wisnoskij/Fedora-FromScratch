#!/bin/bash

########## Selinux permissions for greetd ##########

audit2allow -a
audit2allow -a -M greetd

semodule -i greetd.pp
