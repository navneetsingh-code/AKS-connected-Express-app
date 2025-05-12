# AKS-connected Express App 🚀

A production-ready Node.js + Express REST API deployed to **Azure Kubernetes Service (AKS)** with container images from **Azure Container Registry (ACR)**. Built for secure, scalable, cloud-native deployment with integrated observability, messaging, and email.

---

## 🧩 Tech Stack

| Layer          | Tech/Service                      |
|----------------|-----------------------------------|
| Framework      | Express.js (Node.js)              |
| Auth           | JWT                               |
| Database       | MongoDB Atlas                     |
| Messaging      | Azure Service Bus (Topic)         |
| Email          | Nodemailer + Gmail App Password   |
| Telemetry      | Azure Application Insights        |
| Containerization| Docker + Azure Container Registry |
| Orchestration  | Azure Kubernetes Service (AKS)    |

---

## 🌐 Features

- ✅ User Registration, Login, Update APIs
- 🔐 Secure JWT-based Authentication
- 📬 Publish Notifications via Azure Service Bus
- 📧 Email sending via Gmail + Nodemailer
- 📊 Logs and metrics tracked in Azure Application Insights
- ☁️ Deployed via Docker + AKS for scalability

---

## ⚙️ Local Development Setup

### 1. Clone and Install

```bash
git clone https://github.com/<your-username>/AKS-connected-Express-app.git
cd AKS-connected-Express-app
npm install

2. Create .env file (based on .env.example)
PORT=3000
JWT_SECRET=your-jwt-secret
EMAIL_USER=your_email@gmail.com
EMAIL_PASS=your_gmail_app_password
AZURE_SERVICE_BUS_CONNECTION_STRING=your_service_bus_connection
AZURE_SERVICE_BUS_TOPIC_NAME=notification-topic
AZURE_SERVICE_BUS_SUBSCRIPTION_NAME=notification-subscription
MONGODB_URI=your_mongodb_uri
APPINSIGHTS_CONNECTION_STRING=your_app_insights_connection_string

3. Run Locally
npm run dev

App is available at http://localhost:3000

☸️ Kubernetes Deployment (AKS)
Push Docker Image to ACR

Create Kubernetes Secret in AKS for your env variables

Apply Deployment YAML (see k8s-deployment.yaml)

Expose Service via LoadBalancer
kubectl apply -f k8s-deployment.yaml
kubectl expose deployment my-express-app \
  --type LoadBalancer --port 80 --target-port 3000

Get your app’s public IP with:
kubectl get svc my-express-app

📁 Project Structure
├── controllers/
├── routes/
├── middleware/
├── models/
├── services/
├── Dockerfile
├── .dockerignore
├── .env.example
├── k8s-deployment.yaml
├── index.js
└── README.md


👨‍💻 Author
Navneet Singh
Staff Software Developer | Azure AI Solutions Engineer

🚫 Disclaimer
Do not commit .env or real credentials. Use .env.example to share structure only.
