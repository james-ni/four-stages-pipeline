#!/usr/bin/env bash
echo 'Shutting down my app'
cd '/home/ubuntu'
#!/bin/bash
kill $(cat ./pid.file)
