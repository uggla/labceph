#!/bin/sh
ceph-deploy purge cephosd1 cephosd2 cephosd3 cephgw
ceph-deploy purgedata cephosd1 cephosd2 cephosd3 cephgw
ceph-deploy forgetkeys
rm -rf ceph-cluster/
