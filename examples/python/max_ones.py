import yagal

class MaxOnes(yagal.SimpleProblemForm):
    def __init__(self):
        yagal.SimpleProblemForm.__init__(self)

    def evaluate(self, state, individual, subpopulation, threadnum):
        if not individual.evaluated:
            num_ones = len([i for i in ind.genome if i == 1])
            individual.fitness.set_fitness(state, num_ones == len(ind.genome))
            individual.evaluated = True

def main():
    problem = MaxOnes()
    yagal.evolve(problem)
    print(problem.population.subpops[0].individuals[0])

if __name__ == '__main__':
    main()
