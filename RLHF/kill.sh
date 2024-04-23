#!/bin/bash

ps -ef | grep rl_training.py | grep -v grep | awk '{print $2}' | xargs kill -9