# DevOps Project - 4TWIN2

A complete DevOps project demonstrating modern CI/CD practices with a Node.js REST API, Docker containerization, and automated testing.

## 🚀 Features

- **RESTful API**: Built with Express.js
- **Containerization**: Docker and Docker Compose support
- **CI/CD Pipeline**: Automated testing and building with GitHub Actions
- **Testing**: Comprehensive test suite with Jest and Supertest
- **Code Quality**: ESLint for code linting
- **Security**: Automated security scanning with npm audit and Trivy
- **Health Checks**: Built-in health monitoring endpoints

## 📋 Prerequisites

- Node.js (v16.x, v18.x, or v20.x)
- npm or yarn
- Docker and Docker Compose (optional)

## 🛠️ Installation

### Local Development

1. Clone the repository:
```bash
git clone https://github.com/khaliltriki02/Khalil_Triki_4twin2.git
cd Khalil_Triki_4twin2
```

2. Install dependencies:
```bash
npm install
```

3. Create environment file:
```bash
cp .env.example .env
```

4. Start the development server:
```bash
npm run dev
```

The API will be available at `http://localhost:3000`

### Docker Deployment

1. Build and run with Docker Compose:
```bash
docker-compose up -d
```

2. Or build and run manually:
```bash
docker build -t devops-project .
docker run -p 3000:3000 devops-project
```

## 📝 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/` | API information |
| GET | `/health` | Health check |
| GET | `/api/users` | Get all users |
| GET | `/api/users/:id` | Get user by ID |
| POST | `/api/users` | Create new user |
| PUT | `/api/users/:id` | Update user |
| DELETE | `/api/users/:id` | Delete user |

### Example Requests

**Get all users:**
```bash
curl http://localhost:3000/api/users
```

**Create a user:**
```bash
curl -X POST http://localhost:3000/api/users \
  -H "Content-Type: application/json" \
  -d '{"name":"Jane Doe","email":"jane@example.com"}'
```

**Health check:**
```bash
curl http://localhost:3000/health
```

## 🧪 Testing

Run tests with coverage:
```bash
npm test
```

Run tests in watch mode:
```bash
npm run test:watch
```

## 🔍 Code Quality

Run ESLint:
```bash
npm run lint
```

## 🏗️ Project Structure

```
.
├── .github/
│   └── workflows/
│       └── ci-cd.yml          # CI/CD pipeline configuration
├── src/
│   ├── app.js                 # Express application
│   └── server.js              # Server entry point
├── tests/
│   └── api.test.js            # API tests
├── .dockerignore              # Docker ignore file
├── .env.example               # Environment variables template
├── .eslintrc.json             # ESLint configuration
├── .gitignore                 # Git ignore file
├── docker-compose.yml         # Docker Compose configuration
├── Dockerfile                 # Docker image definition
├── package.json               # Project dependencies
└── README.md                  # This file
```

## 🔄 CI/CD Pipeline

The project includes a comprehensive CI/CD pipeline that runs on every push and pull request:

1. **Testing**: Runs tests on multiple Node.js versions (16.x, 18.x, 20.x)
2. **Building**: Builds and tests the Docker image
3. **Security**: Performs security scans with npm audit and Trivy

## 🐳 Docker

The project includes:
- **Dockerfile**: Multi-stage build for optimized production images
- **docker-compose.yml**: Easy local development setup
- **Health checks**: Built-in container health monitoring
- **.dockerignore**: Optimized build context

## 📊 Monitoring

The application includes a `/health` endpoint that provides:
- Service status
- Current timestamp
- Process uptime

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License.

## 👤 Author

**Khalil Triki**

- GitHub: [@khaliltriki02](https://github.com/khaliltriki02)

## 🙏 Acknowledgments

- Express.js team for the excellent framework
- Jest and Supertest for testing utilities
- Docker for containerization
- GitHub Actions for CI/CD automation