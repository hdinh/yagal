#ifndef _YAGAL_H_
#define _YAGAL_H_

struct Propulation;
struct Individual;
struct State;

typedef struct
{
} State;

typedef struct
{
} Population;

typedef struct
{
    int evaluated;
} Individual;

typedef void (*evaluateFunction)(State *, Individual *, Population *);
typedef void (*setFinessFunction)(Individual *, State *, int);

typedef struct
{
    evaluateFunction evaluate;
} Problem;

void yagal_set_fitness(Individual *, State *);
struct Problem* yagal_simple_problem_form(evaluateFunction *);
void yagal_evolve(Problem *);

#endif
