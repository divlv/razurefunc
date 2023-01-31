# Execute plumber
# Port "80" is necessary for Azure Function
plumber::plumb(file='services.R')$run(host = '0.0.0.0', port = 80)
