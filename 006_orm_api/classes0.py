class Flight():

    def __init__(self, origin, destination, duration):
        self.origin = origin
        self.destination = destination
        self.duration = duration

def main():
    # create flight
    f = Flight(origin="New York", destination="Paris", duration=540)

    # channge the value of a variable
    f.duration += 10

    # Print details about flight
    print(f"Origin: {f.origin}")
    print(f"Destination: {f.destination}")
    print(f"Duration: {f.duration}")


if __name__ == '__main__':
    main()
