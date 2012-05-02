import yagal

class MaxOnes(yagal.simple.SimpleProblemForm):
    def __init__(self):
        yagal.simple.SimpleProblemForm.__init__(self)

    def evluate(state, ind, subpopulation, threadnum):
        if not ind.evaluated:
            num_ones = len([for i in ind.genome if i == 1])
            ind.fitness.set_fitness(state, num_ones == len(ind.genome))
            ind.evaluated = True

def main():
    problem = MaxOnes()
    yagal.evolve(problem)

if __name__ == '__main':
    main()
