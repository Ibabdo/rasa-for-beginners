FROM rasa/rasa:3.6.10-full

# Copy project files into the container
COPY . /app
WORKDIR /app

# Install Rasa dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run Rasa server on port 5005
CMD ["run", "--enable-api", "--cors", "*", "--port", "5005"]
