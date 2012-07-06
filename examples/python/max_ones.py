#!/usr/bin/env python

from yagal import begin_evolve, EvolutionProblem

class MaxOnes(object):
    def evaluate(self, state, individual, subpopulation, threadnum):
        import pdb; pdb.set_trace()
        if not individual.evaluated:
            num_ones = len([i for i in ind.genome if i == 1])
            individual.fitness.set_fitness(state, num_ones == len(individual.genome))
            individual.evaluated = True

def main():
    max_ones = MaxOnes()
    params = {}
    params['generations'] = 100

    problem = EvolutionProblem()
    problem.evaluate = max_ones.evaluate

    future_result = begin_evolve(problem, params)
    #result = future_result.join()
    #print(result.individuals[0])

if __name__ == '__main__':
    main()
