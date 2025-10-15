# ShopSphere - Modern E-commerce with Spring Boot & Docker

A modern, responsive e-commerce application built with Spring Boot and Docker, featuring a clean UI and essential e-commerce functionality.

## Features

- 🛍️ **Product Catalog**: Browse a variety of products with images and prices
- 🛒 **Shopping Cart**: Add/remove items and view cart total
- 📱 **Responsive Design**: Works on desktop, tablet, and mobile devices
- 🚀 **Fast & Lightweight**: Optimized for performance
- 🐳 **Docker Support**: Easy containerization and deployment

## Technologies Used

- **Backend**:
  - Spring Boot 3.1.5
  - Java 17
  - Maven

- **Frontend**:
  - HTML5, CSS3, JavaScript
  - Tailwind CSS for styling
  - Font Awesome for icons

- **Containerization**:
  - Docker
  - Multi-stage builds
  - Lightweight Alpine Linux base image

## Prerequisites

- Java 17 or higher
- Maven 3.6.0 or higher
- Docker (optional, for containerization)
- Node.js (optional, for frontend development)

## Getting Started

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/springboot-docker-demo.git
   cd springboot-docker-demo
   ```

2. **Build and run with Maven**
   ```bash
   mvn spring-boot:run
   ```

3. **Access the application**
   - Frontend: http://localhost:8080
   - API Documentation: http://localhost:8080/swagger-ui.html (if enabled)

### Docker Setup

1. **Build the Docker image**
   ```bash
   docker build -t shopsphere .
   ```

2. **Run the container**
   ```bash
   docker run -p 8080:8080 shopsphere
   ```

3. **Access the application**
   - http://localhost:8080

### Environment Variables

You can configure the application using the following environment variables:

- `SPRING_PROFILES_ACTIVE`: Active Spring profile (default: `dev`)
- `SERVER_PORT`: Server port (default: `8080`)
- `SPRING_DATASOURCE_URL`: Database URL
- `SPRING_DATASOURCE_USERNAME`: Database username
- `SPRING_DATASOURCE_PASSWORD`: Database password

## Project Structure

```
springboot-docker-demo/
├── src/
│   ├── main/
│   │   ├── java/com/example/demo/
│   │   │   ├── DemoApplication.java    # Main application class
│   │   │   ├── controller/             # REST controllers
│   │   │   ├── model/                  # Data models
│   │   │   ├── repository/             # Data access layer
│   │   │   └── service/                # Business logic
│   │   └── resources/
│   │       ├── static/                 # Static assets (JS, CSS, images)
│   │       │   └── index.html          # Main frontend
│   │       └── application.properties  # Application configuration
│   └── test/                           # Test files
├── .dockerignore
├── Dockerfile
├── pom.xml
└── README.md
```

## API Endpoints

| Method | Endpoint    | Description                |
|--------|-------------|----------------------------|
| GET    | /api/hello  | Get a welcome message      |
| GET    | /api/time   | Get current server time    |
| GET    | /           | Home page (redirects to index.html) |

## Contributing

1. Fork the repository
2. Create a new branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin feature/your-feature`
5. Submit a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Spring Boot](https://spring.io/projects/spring-boot)
- [Docker](https://www.docker.com/)
- [Tailwind CSS](https://tailwindcss.com/)
- [Font Awesome](https://fontawesome.com/)

---

Developed with ❤️ by [Your Name]
