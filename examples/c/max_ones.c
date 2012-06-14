#include "yagal.h"

void max_ones(State *state, Individual *ind, Population *subpopulation, int threadnum)
{
    int numOnes = 0;
    if (ind->evaluated == 0)
    {
        numOnes = 0;
        yagal_set_fitness(ind, state);
        ind->evaluated = 1;
    }
}

int main()
{
    Problem* problem;

    problem = yagal_simple_problem_form(&max_ones);
    yagal_evolve(&problem);
}
