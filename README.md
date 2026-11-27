# Vacations Website

A fullstack web app for browsing and following vacation deals, built as the final project of the John Bryce Fullstack Developer course.

## Features

- User registration and login with JWT authentication and bcrypt password hashing
- Users can browse vacations and follow or unfollow the ones they like
- Admin can add, edit and delete vacations, including image upload
- Chart of how many followers each vacation has (Chart.js)

## Tech stack

- **Frontend:** React, TypeScript, Redux, Axios, Chart.js
- **Backend:** Node.js, Express, TypeScript, JWT, bcrypt, Multer
- **Database:** MySQL

## Project structure

```
frontend/   React app
backend/    Express REST API (routes, controllers, logic, models)
DataBase/   MySQL table definitions and sample vacations
```

## Running locally

1. Create a MySQL database and import the files in `DataBase/`.
2. In `backend/`, copy `.env.example` to `.env` and fill in your own values.
3. Start the backend:
   ```
   cd backend
   npm install
   npm start
   ```
4. Start the frontend:
   ```
   cd frontend
   npm install
   npm start
   ```
5. Register a user in the app. To make it an admin, set its admin flag to `1` in the `users` table.
