import time

THRESHOLD = 500

while True:
    ldr_value = int(input("Enter LDR Value: "))

    if ldr_value < THRESHOLD:
        print("Street Light ON")
    else:
        print("Street Light OFF")

    time.sleep(1)