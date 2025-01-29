FROM ruby:3.4.1

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set the working directory
WORKDIR /wizeline

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the entire application
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]