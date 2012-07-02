#ifndef _YAGAL_H_
#define _YAGAL_H_

#include "config.h"

typedef struct
{
    int generations;
} EvolutionParams;

typedef struct
{
} EvolutionState;

typedef struct
{
    int evaluated;
} Individual;

typedef struct
{
    Individual* individuals;
} Population;

typedef struct
{
    Population* population;
} SimpleProblemForm;

typedef void (*evaluateFunction)(EvolutionState *, Individual *, Population *);
typedef void (*setFinessFunction)(Individual *, EvolutionState *, int);

typedef struct
{
    evaluateFunction evaluate;
} Problem;

YagalAPI(void) yagal_set_fitness(Individual *, EvolutionState *);
YagalAPI(Problem*) yagal_simple_problem_form(evaluateFunction *);
YagalAPI(void) yagal_evolve(Problem *);

#endif
