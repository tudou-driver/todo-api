# Todo API - FastAPI + SQLite

A complete RESTful API for TODO application built with Python FastAPI.

## 🚀 Tech Stack

- **Framework:** FastAPI
- **Database:** SQLite
- **ORM:** SQLAlchemy
- **Authentication:** JWT (JSON Web Tokens)
- **Validation:** Pydantic

## ✨ Features

- ✅ User registration and login
- ✅ JWT token authentication
- ✅ Create, read, update, delete TODOs
- ✅ User-specific TODOs (privacy)
- ✅ Auto-generated API docs (Swagger UI)
- ✅ Production-ready code

## 📦 Installation

```bash
# Install dependencies
pip install -r requirements.txt

# Run server
python main.py
# Or with uvicorn
uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

## 📡 API Endpoints

### Authentication
- `POST /auth/register` - Register new user
- `POST /auth/login` - Login user

### TODOs (requires authentication)
- `GET /todos` - Get all TODOs for current user
- `POST /todos` - Create new TODO
- `GET /todos/{id}` - Get single TODO
- `PUT /todos/{id}` - Update TODO
- `DELETE /todos/{id}` - Delete TODO

## 🔐 Usage Examples

### Register
```bash
curl -X POST http://localhost:8000/auth/register \
  -H "Content-Type: application/json" \
  -d '{"email":"user@example.com","password":"password123"}'
```

### Login
```bash
curl -X POST http://localhost:8000/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"user@example.com","password":"password123"}'
```

### Create TODO (with token)
```bash
curl -X POST http://localhost:8000/todos \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{"title":"Buy groceries","description":"Milk, eggs, bread"}'
```

### Get TODOs
```bash
curl -X GET http://localhost:8000/todos \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## 📖 API Documentation

Once the server is running, visit:
- **Swagger UI:** http://localhost:8000/docs
- **ReDoc:** http://localhost:8000/redoc

## 🔧 Environment Variables

Create a `.env` file or modify `main.py`:

```python
SECRET_KEY = "your-secret-key-change-in-production"
DATABASE_URL = "sqlite:///./todo.db"
ACCESS_TOKEN_EXPIRE_MINUTES = 30
```

## 📂 Project Structure

```
todo-api/
├── main.py              # Main application
├── requirements.txt     # Python dependencies
└── README.md           # This file
```

## 🎯 Why FastAPI?

- ⚡ **Fast:** Very high performance (on par with NodeJS and Go)
- 🎯 **Intuitive:** Great editor support, auto-completion
- 📝 **Validated:** Automatic data validation
- 📚 **Documented:** Automatic OpenAPI docs
- 🔐 **Secure:** Built-in security features

---

**Made with ❤️ by 土豆桑**
