# Volleyball Overlap / Rotation Trainer

A single-page web tool for teaching volleyball referees how to judge player
positioning (overlap) faults at the moment of serve. Built with
[p5.js](https://p5js.org/) — no build step, no dependencies to install.

## Use it

Open `volleyball-positions.html` in any modern browser. There's nothing to
install and no server required.

## What it does

- Shows one side of the court from the referee's view, with the **net at the top**.
- Six players are drawn as circles labeled by their position number.
  - Front row (nearest the net): **4 / 3 / 2**
  - Back row: **5 / 6 / 1**
- **Drag** any player to reposition them.
- Positioning is checked **live** against the overlap rules. Illegal players turn
  **red**, and the side panel explains exactly which rule is broken.
- **Reset to base rotation** restores a legal line-up.

## The overlap rules it checks

Judged at the moment the server contacts the ball, using each player's location:

**Left–right order within a row**
- Front row: 4 left of 3, 3 left of 2
- Back row: 5 left of 6, 6 left of 1

**Front player ahead of the back player behind them (closer to the net)**
- 2 ahead of 1
- 3 ahead of 6
- 4 ahead of 5

If every relationship holds, the alignment is legal.

## Notes / limitations

- The trainer compares player **centers**. Real officiating judges **foot
  contact**, so a borderline call on court may differ slightly.
- Once the ball is contacted, players may move freely (including the server);
  this tool models the **pre-serve line-up** only.
- Rotational order (correct 1→6 sequence) is not yet enforced — only overlap.

## License

MIT
