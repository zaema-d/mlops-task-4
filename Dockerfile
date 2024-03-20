# Step 1: Select base Python environment
FROM python:3.8-slim

# Step 2: Create a directory in the container
WORKDIR /app

# Step 3: Copy all content from local repository into the created directory
COPY . /app

# Step 4: Install necessary packages using requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Define the command to run the Python script
CMD ["python", "train_knn_model.py"]
