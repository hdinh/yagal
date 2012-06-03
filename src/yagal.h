#ifndef _YAGAL_H_
#define _YAGAL_H_

struct Propulation;
struct Individual;
struct State;

struct State
{
};

struct Population
{
};

struct Individual
{
    int evaluated;
};


typedef void (*evaluateFunction)(struct State *, struct Individual *, struct Population *);
typedef void (*setFinessFunction)(struct Individual *, struct State *, int);

struct Problem
{
    evaluateFunction evaluate;
};

void yagal_set_fitness(struct Individual *, struct State *);
struct Problem* yagal_simple_problem_form(evaluateFunction *);
void yagal_evolve(struct Problem *);

#endif
