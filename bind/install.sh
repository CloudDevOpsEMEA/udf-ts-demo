#!/bin/bash

set -x
sudo service bind9 stop

sudo cp named.conf /etc/bind
sudo cp named.conf.local /etc/bind
sudo cp named.conf.options /etc/bind

sudo cp forward.f5telemetry-demo.eu /var/cache/bind
sudo cp reverse.f5telemetry-demo.eu /var/cache/bind

sudo chown bind:bind /etc/bind
sudo chown bind:bind /var/cache/bind
sudo chmod 777 /etc/bind
sudo chmod 777 /var/cache/bind

sudo chown bind:bind /etc/bind/*
sudo chown bind:bind /var/cache/bind/*
sudo chmod 666 /etc/bind/*
sudo chmod 666 /var/cache/bind/*

sudo mkdir -p /var/log/bind
sudo chown -R bind:bind /var/log/bind
sudo chmod -R 777 /var/log/bind

sudo service bind9 start
sleep 10
sudo service bind9 status
