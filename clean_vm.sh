#!/bin/bash

for i in $(virsh list --all | grep ceph | awk '{print $2}'); do virsh undefine $i; done
for i in $(virsh list --all | grep ceph | awk '{print $2}'); do virsh destroy $i; done
virsh vol-list default | grep "_osd[0-9].img" | awk '{print $1}' | while read vol; do virsh vol-delete $vol --pool=default; done
