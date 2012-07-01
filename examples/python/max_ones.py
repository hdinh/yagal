#!/usr/bin/env python

from yagal import begin_evolve

class MaxOnes(object):
    def evaluate(self, state, individual, subpopulation, threadnum):
        if not individual.evaluated:
            num_ones = len([i for i in ind.genome if i == 1])
            individual.fitness.set_fitness(state, num_ones == len(ind.genome))
            individual.evaluated = True

def main():
    problem = MaxOnes()
    future_result = begin_evolve(problem)
    result = future_result.join()
    print(result.individuals[0])

if __name__ == '__main__':
    main()
