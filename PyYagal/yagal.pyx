cdef extern from "yagal.h":
    ctypedef struct EvolutionParams:
        int generations

    ctypedef struct EvolutionState:
        pass

    ctypedef struct Individual:
        pass

    ctypedef struct Population:
        Individual* individuals

    ctypedef void (*evaluateFunction)(EvolutionState *, Individual *, Population *)

    ctypedef struct Problem:
        evaluateFunction evaluate

    ctypedef struct SimpleProblemForm:
        Population* subpops


    void yagal_set_fitness(Individual *ind, EvolutionState *state)
    void yagal_evolve(Problem *problem)


cdef Population c_evolve(Problem* problem):
    yagal_evolve(problem)
    return Population()

def begin_evolve(evaluate_method):
    """
    The asynchronous evolve function.
    This method will be for more advanced users.
    I need to figure out a common way to pass a threading event
    to the c function.
    For now, do a ghetto thread join
    """
    cdef Problem problem

    # TODO: Next _MAJOR_ hurdle.
    # How do you call Python from C
    #problem.evaluate = <evaluateFunction>evaluate_method

    def evolve_function():
        c_evolve(&problem)

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


def evolve(evaluate_method):
    """
    The synchronous evolve function.
    This method is intended for beginners and light-weights.
    It will block until everything is finished.
    """
    cdef Problem problem

    # TODO: Next _MAJOR_ hurdle.
    # How do you call Python from C
    #problem.evaluate = <evaluateFunction>evaluate_method

    c_evolve(&problem)

if __name__ == '__main__':
    pass
