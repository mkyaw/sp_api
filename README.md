# README

## Description

This is a basic Rails endpoint that will fetch all the appointments

Appointment data may include:

- appointment info
- start time
- end time
- client (i.e. the person receiving the service)
- professional (i.e. the service provider e.g. therapist, chiropractor, etc.)

## Models

### 1. Appointment

- info
- start time
- end time

-> belongs_to client
-> belongs_to professional

### 2. Client

- name

-> has_many appointments

### 3. Professional

- business_name

-> has_many appointments

## Controller

### Appointments

- method: index
- sample response:

[
  {
    info: ...,
    start_time: ...,
    end_time: ...,
    client: {
      display_name: ....
    },
    professional: {
      business_name: ...
    }
  },
  {
    ...
  }
]

* `display_name` is the first 2 characters of the client name for privacy purposes