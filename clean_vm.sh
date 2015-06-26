#!/bin/bash

for i in $(virsh list --all | grep ceph | awk '{print $2}'); do virsh undefine $i; done
for i in $(virsh list --all | grep ceph | awk '{print $2}'); do virsh destroy $i; done
