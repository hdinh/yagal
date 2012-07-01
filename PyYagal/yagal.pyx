cdef extern from "yagal.h":
    ctypedef struct EvolutionState:
        pass

    ctypedef struct Individual:
        pass

    ctypedef struct Population:
        Individual* individuals

    ctypedef struct Problem:
        pass

    ctypedef struct SimpleProblemForm:
        Population* subpops

    void yagal_set_fitness(Individual *ind, EvolutionState *state)
    void yagal_evolve(Problem *problem)


"""
class EvolutionState(object):
    def __init__(self):
        self.breed_threads = 2
        self.eval_threads = 2
        self.generation = 1

    def setup(self):
        pass

    def finish(self):
        pass

    def evolve(self):
        pass

    def run(self):
        pass
"""

cdef evolve(problem):
    #yagal_evolve(problem)
    pass

#if __name__ == '__main__':
#    main()
