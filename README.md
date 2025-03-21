# Q-Learning Agent for Pacman

![Reinforcement Learning](https://img.shields.io/badge/Reinforcement_Learning-blue)
![Q Learning](https://img.shields.io/badge/Q_Learning-orange)
![Pacman](https://img.shields.io/badge/Pacman-yellow)
![Gridworld](https://img.shields.io/badge/Gridworld-green)
![Bellman Equation](https://img.shields.io/badge/Bellman_Equation-red)
![Python 2.7](https://img.shields.io/badge/Python-2.7-blue.svg)

## Overview
This project implements a model-free Q-learning agent for the Pacman game environment. The agent learns to play Pacman through experience, using reinforcement learning to make optimal decisions based on state-action values (Q-values).

## Implementation Details

### Core Components

#### Q-Learning Agent (`qlearningAgents.py`)
The main implementation consists of several key methods:

1. **Q-Value Storage**
   - Q-values are stored in a dictionary with (state, action) pairs as keys
   - Example: `{((2,3), 'North'): 0.5, ((2,3), 'East'): 0.8}`

2. **Key Methods**
   - `getQValue(state, action)`: Returns the Q-value for a state-action pair
   - `computeValueFromQValues(state)`: Returns maximum Q-value for available actions
   - `computeActionFromQValues(state)`: Determines best action based on Q-values
   - `getAction(state)`: Implements epsilon-greedy action selection
   - `update(state, action, nextState, reward)`: Updates Q-values based on experience

### Learning Parameters
- `epsilon`: Exploration rate (probability of choosing random action)
- `alpha`: Learning rate (how much to update Q-values)
- `gamma`: Discount factor (importance of future rewards)


## Features

### Epsilon-Greedy Strategy
- Balances exploration and exploitation
- With probability ε: Choose random action (exploration)
- With probability (1-ε): Choose best known action (exploitation)

### Q-Learning Update
Uses the Bellman equation:
Q(s,a) = (1-α)Q(s,a) + α[R + γ max_a'Q(s',a')]

Where:
- Q(s,a): Q-value for state s and action a
- α: Learning rate
- R: Reward
- γ: Discount factor
- max_a'Q(s',a'): Maximum Q-value for next state


## Requirements
- Use the Dockerfile and build the image. It uses python 2.7 version

- Run the container with the following command to get the graphical interface:

        $env:DISPLAY = "<ip_address>:0.0"
        docker run -it -e DISPLAY=$env:DISPLAY -v ${PWD}:/app session20_python2.7 gridworld.py -a q -k 10 -v -d 0.8 -r -0.3

- Make sure to install vcxsrv to get the graphical interface.


