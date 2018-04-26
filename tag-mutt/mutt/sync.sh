#!/usr/bin/env sh

imapfilter && \
	mbsync robert maps && \
	mu index --maildir=~/mail 
