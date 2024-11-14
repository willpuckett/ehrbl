/*                              26 KEY MATRIX / LAYOUT MAPPING

  ╭ ────────────────┬────────────────╮╭ ────────────────┬─────────────────╮
  │      0   1   2   │  3  4   5         │ │     LT3 LT2 LT1 │ RT1 RT2 RT3     │
  │  6   7   8   9   │ 10  11 12  13     │ │ LM4 LM3 LM2 LM1 │ RM1 RM2 RM3 RM4 │
  │ 14   15  16  17  │ 18  19 20  21     │ │ LB4 LB3 LB2 LB1 │ RB1 RB2 RB3 RB4 │
  ╰ ───────╮ 22 23  │ 24 25  ╭───────╯  ╰ ──────╮ LH2 LH1 │ RH1 RH2 ╭───────╯  
           ╰────────┴────────╯                  ╰─────────┴─────────╯             */

#pragma once

// left-top row
#define LT1  2
#define LT2  1
#define LT3  0

// right-top row
#define RT1  3
#define RT2  4
#define RT3  5

// left-middle row
#define LM1 9
#define LM2 8
#define LM3 7
#define LM4 6

// right-middle row
#define RM1 10
#define RM2 11
#define RM3 12
#define RM4 13

// left-bottom row
#define LB1 17
#define LB2 16
#define LB3 15
#define LB4 14

// right-bottom row
#define RB1 18
#define RB2 19
#define RB3 20
#define RB4 21

#define LH1 23  // left thumb keys
#define LH2 22

#define RH1 24  // right thumb keys
#define RH2 25
