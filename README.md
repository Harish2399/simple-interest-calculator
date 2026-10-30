# Simple Interest Calculator

A simple program that calculates simple interest on a principal amount over a period of time at a given annual rate.

## Formula

```
Simple Interest (SI) = (P × R × T) / 100
Total Amount (A)     = P + SI
```

| Symbol | Meaning                      |
|--------|------------------------------|
| P      | Principal amount             |
| R      | Annual rate of interest (%)  |
| T      | Time period (in years)       |

## Features

- Takes principal, rate and time as input
- Calculates the simple interest
- Displays the total amount (principal + interest)
- Validates that inputs are positive numbers

## Example

**Input**

```
Principal : 10000
Rate (%)  : 5
Time (yrs): 3
```

**Output**

```
Simple Interest : 1500.00
Total Amount    : 11500.00
```

## Sample Code (Python)

```python
def simple_interest(principal, rate, time):
    return (principal * rate * time) / 100

p = float(input("Principal: "))
r = float(input("Rate (%): "))
t = float(input("Time (years): "))

si = simple_interest(p, r, t)
print(f"Simple Interest: {si:.2f}")
print(f"Total Amount: {p + si:.2f}")
```

## How to Run

1. Install Python 3.
2. Save the code as `simple_interest.py`.
3. Run `python simple_interest.py` and enter the values when prompted.

## Author

Your Name
