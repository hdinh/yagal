#include "config.h"
#include "yagal.h"


void yagal_set_fitness(Individual *ind, EvolutionState *state)
{
    return;
}

Problem* yagal_simple_problem_form(evaluateFunction *evaluate_function)
{
    return 0;
}

void yagal_evolve(Problem* problem)
{
    printf("calling!!!");
    EvolutionState state;
    Individual ind;
    Population subpop;
    int threadnum;

    /*
    ((evaluateFunction)problem)(&state, &ind, &subpop);
    EvolutionState state;
    problem->setup(state);
    problem->run(state);
    problem->finish(state);
    */
    return;
}
