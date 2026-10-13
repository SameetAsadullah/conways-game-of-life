# Conway's Game of Life

A C++ console simulation of Conway's Game of Life. The program loads an initial grid from a text file and displays each generation using the standard birth, survival, and death rules.

[![C++ checks](https://github.com/SameetAsadullah/conways-game-of-life/actions/workflows/quality.yml/badge.svg)](https://github.com/SameetAsadullah/conways-game-of-life/actions/workflows/quality.yml)

## Rules implemented

- A live cell with fewer than two live neighbours dies.
- A live cell with two or three live neighbours survives.
- A live cell with more than three live neighbours dies.
- A dead cell with exactly three live neighbours becomes alive.

## Build and run

```bash
make
./build/game-of-life
```

Run the executable from the repository root so it can read the bundled initial state.

## Input format

`data/initial-state.txt` contains:

1. the number of generations to simulate;
2. the number of initially live cells;
3. one `row column` coordinate pair per live cell.

The original implementation uses a `12 x 12` grid. Change `rows` and `cols` in `include/game.h` to experiment with another size.

```text
10
4
7 4
7 5
7 6
6 5
```

## Source layout

- `src/main.cpp` — entry point and generation loop
- `include/game.h` — grid loading, neighbour calculation, and transition rules
- `include/grid_info.h` — live-cell coordinates
- `include/neighbours_info.h` — neighbour state used during a generation
- `data/initial-state.txt` — sample simulation input

## Screenshots

| Input format | Grid configuration | Simulation |
|---|---|---|
| ![Input format](extras/input-details-ss.png) | ![Grid configuration](extras/change-grid-size-ss.png) | ![Simulation output](extras/working-ss.png) |

## Project status

The cellular-automaton logic remains intact, while generated IDE output and vendored package binaries are excluded from the maintained branch.
