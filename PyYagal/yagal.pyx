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


cdef c_evolve(problem):
    #yagal_evolve(problem)
    print('evolving....')
    import time
    time.sleep(3)
    return ['Best']

def begin_evolve(problem):
    """
    The asynchronous evolve function.
    This method will be for more advanced users.
    I need to figure out a common way to pass a threading event
    to the c function.
    For now, do a ghetto thread join
    """
    def evolve_function():
        c_evolve(problem)

    import threading
    t = threading.Thread(target=evolve_function)
    t.setDaemon(True)
    t.start()
    return FutureEvolveResult(t)


class FutureEvolveResult(object):
    """
    Asynchronous result of the evolve method.
    """
    def __init__(self, thread):
        self.thread_to_wait_for = thread

    def join(self):
        self.thread_to_wait_for.join()


def evolve(problem):
    """
    The synchronous evolve function.
    This method is intended for beginners and light-weights.
    It will block until everything is finished.
    """
    c_evolve(problem)

if __name__ == '__main__':
    pass
