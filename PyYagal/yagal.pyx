cdef extern from "yagal.h":
    ctypedef struct State:
        pass

    ctypedef struct Population:
        pass

    ctypedef struct Individual:
        pass

    ctypedef struct Problem:
        pass

    void yagal_set_fitness(Individual *ind, State *state)
    void yagal_evolve(Problem *problem)


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

class Evolve:
    @staticmethod
    def run(argv):
        pass

cdef main():
    cdef Problem* problem
    yagal_evolve(problem)

if __name__ == '__main__':
    main()
