def print_message(num):
    if num % 3 == 0 and num % 5 == 0:
        print("Testing")
    elif num % 3 == 0:
        print("Software")
    elif num % 5 == 0:
        print("Agile")
    else:
        print(num)

def main():
    try:
        user_input = int(input("Enter a positive integer: "))
        if user_input < 1:
            print("Please enter a positive integer.")
        else:
            for i in range(user_input, 0, -1):
                print_message(i)
    except ValueError:
        print("Invalid input. Please enter a valid positive integer.")

if __name__ == "__main__":
    main()
