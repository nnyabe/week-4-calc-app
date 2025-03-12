# Todo List Application Using Fargate and ECR

This is a **full-stack Todo List application** built using **Java 17 (Spring Boot) for the backend** and **HTML, CSS, and JavaScript for the frontend**. The application allows users to **add, delete, and update** todos, with all data being persisted in a backend database.

## Features
- **Add new tasks**
- **Modify existing tasks**
- **Delete tasks**
- **View all tasks in real-time**
- **User-friendly and responsive UI**
- **Automated deployment using GitHub Actions & AWS ECR**

## Tech Stack
### Frontend:
- HTML, CSS, JavaScript

### Backend:
- Java 17
- Spring Boot
- RESTful API
- MySQL (or H2 for testing)

### Deployment:
- Docker
- AWS Elastic Container Registry (ECR)
- GitHub Actions for CI/CD

## Project Structure
```
📂 todo-app
├── 📁 backend (Spring Boot Backend)
│   ├── src/main/java/com/todo
│   ├── src/main/resources/application.properties
│   └── Dockerfile
│
├── 📁 frontend (HTML, CSS, JS Frontend)
│   ├── index.html
│   ├── styles.css
│   ├── script.js
│   └── Dockerfile
│
├── 📁 .github/workflows (GitHub Actions Workflow)
│   └── deploy.yml
│
└── README.md
```

## Setup Instructions

### Prerequisites
- **Java 17**
- **Maven**
- **Node.js & npm** (for frontend dependency management)
- **Docker**
- **AWS CLI** (configured with proper IAM permissions)

### Running Locally
#### Backend
1. Navigate to the backend directory:
   ```sh
   cd backend
   ```
2. Build and run the application:
   ```sh
   mvn spring-boot:run
   ```
3. The backend will be available at `http://localhost:8080`

#### Frontend
1. Navigate to the frontend directory:
   ```sh
   cd frontend
   ```
2. Open `index.html` in a browser or serve it using:
   ```sh
   npx live-server
   ```

## API Endpoints
| Method | Endpoint       | Description       |
|--------|--------------|------------------|
| GET    | /todos       | Get all todos    |
| POST   | /todos       | Create a new todo |
| PUT    | /todos/{id}  | Update a todo    |
| DELETE | /todos/{id}  | Delete a todo    |

## Deployment
### Docker
1. Build the backend Docker image:
   ```sh
   docker build -t todo-backend ./backend
   ```
2. Build the frontend Docker image:
   ```sh
   docker build -t todo-frontend ./frontend
   ```
3. Run the containers:
   ```sh
   docker run -p 8080:8080 todo-backend
   docker run -p 3000:80 todo-frontend
   ```

### AWS ECR & GitHub Actions
- The **GitHub Actions Workflow** automatically builds and pushes the Docker image to **AWS ECR**.
- The image is tagged as:
  ```sh
  chamamme_nnyabe_todo
  ```
- Public ECR Repository: **[public.ecr.aws/l1r3k7b9/week-4-repo](https://public.ecr.aws/l1r3k7b9/week-4-repo)**

## License
This project is open-source and available under the **MIT License**.

---

### Author
Developed by **Chamamme Nnyabe** 🚀
