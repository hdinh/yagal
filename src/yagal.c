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
    EvolutionState state;
    Individual ind;
    Population subpop;
    char *cheese = "cheese";

    evaluateFunction ef = (evaluateFunction)problem->evaluate;
    ef(cheese);
    //((evaluateFunction)(problem->evaluate))(threadnum);
    //((evaluateFunction)problem->evaluate)(&state, &ind, &subpop, threadnum);
    /*
    EvolutionState state;
    problem->setup(state);
    problem->run(state);
    problem->finish(state);
    */
    return;
}
