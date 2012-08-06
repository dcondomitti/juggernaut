require 'rubygems'
require 'bundler/setup'

require 'grocer'

pusher = Grocer.pusher(
  certificate: "/Users/dcondomitti/Desktop/apns/certificate.pem",      # required
  gateway:     "gateway.sandbox.push.apple.com", # optional; See note below.
  retries:     0                         # optional
)

notification = Grocer::Notification.new(
  device_token: "1a0638fa58dd377e267a4698384b9caa9fb05f70957ee0541ea7e8fa85932d30",
  alert:        "Hello from Grocer!",
  badge:        42
)

pusher.push(notification)

