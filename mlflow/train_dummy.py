"""
Extra Credit: MLflow Tracking Sample Script
DevOps Intern Final Assessment - Step 7
Candidate: Oseni Sakariyau Oluwadamilare
"""

import random

def run_dummy_experiment():
    print("==========================================")
    print("  Initializing MLflow Dummy Experiment    ")
    print("==========================================")
    
    # Simulating metric and parameter logging
    params = {"learning_rate": 0.01, "batch_size": 32, "epochs": 10}
    accuracy = round(random.uniform(0.88, 0.98), 4)
    loss = round(random.uniform(0.02, 0.12), 4)
    
    print(f"\n[+] Logged Parameters: {params}")
    print(f"[+] Logged Metrics: accuracy={accuracy}, loss={loss}")
    print("\n==========================================")
    print("  MLflow Experiment Completed Successfully ")
    print("==========================================")

if __name__ == "__main__":
    run_dummy_experiment()
