cdef class SimpleProblemForm(object):
    pass


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

if __name__ == '__main__':
    pass
