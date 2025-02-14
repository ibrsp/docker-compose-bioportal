#!/bin/bash

sudo rm -fr data/bioportal/repository/*
sudo rm -fr data/4store/*
sudo rm -fr data/redis/goo/*
sudo rm -fr data/redis/http/*
sudo rm -fr data/redis/annotator/*
sudo rm -fr data/solr/term_search_core1/data
sudo rm -fr data/solr/term_search_core2/data
sudo rm -fr data/solr/prop_search_core1/data
sudo rm -fr data/solr/prop_search_core2/data
sudo rm -fr data/ncbo_logs/*

sudo bash -c 'echo -e "1000\tNULL" > data/mgrep/dictionary.txt'
