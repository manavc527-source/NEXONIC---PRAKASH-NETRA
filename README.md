# NEXONIC---PRAKASH-NETRA - Firebase SCADA Dashboard

🏫 **GLA University Mathura - IoT Sensor Network Monitoring System**

A real-time SCADA (Supervisory Control and Data Acquisition) dashboard for monitoring sensor nodes across GLA University Mathura campus using Firebase Realtime Database.

## ✨ Features

### 🔐 Firebase Authentication
- **Google Sign-In**: Secure OAuth2 authentication with Google accounts
- **Demo Mode**: Local development testing with demo user credentials
- **Anonymous Access**: Firebase anonymous authentication for quick access
- **Session Management**: Automatic login/logout with user state persistence

### 📊 Real-time Dashboard
- **Live Data**: Real-time sensor data updates via Firebase Realtime Database
- **Interactive Map**: Click-to-select devices on OpenStreetMap with Leaflet.js
- **Device Details**: Comprehensive sensor readings panel with voltage, current, power, temperature, humidity, and more
- **Environmental Monitoring**: Average temperature, humidity, and rain detection across all sensors
- **System Status**: Live connection status and device health monitoring

### 🎯 Interactive Features
- **Device Selection**: Click devices on map or device list to view detailed metrics
- **Visual Feedback**: Color-coded status indicators (Online/Warning/Offline)
- **Responsive Design**: Professional SCADA-style UI with grid overlay
- **Real-time Updates**: Live updates preserve device selections and UI state

## 🚀 Quick Start

### Prerequisites
- Web browser with JavaScript enabled
- Firebase project with Realtime Database
- Local web server (included: `serve.ps1`)

### Setup
1. **Clone the repository**:
   ```bash
   git clone https://github.com/manavc527-source/SENSOR-GRID-MONITORING.git
   cd SENSOR-GRID-MONITORING
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Start the server**:
   ```powershell
   .\serve.ps1
   ```

4. **Access the dashboard**:
   - Open: `http://localhost:8080/firebase-dashboard.html`
   - Login with Google, Demo User, or Anonymous mode

## 🗺️ Campus Sensor Locations

The system monitors 5 sensor nodes across GLA University Mathura:

- **NODE_1**: GLA University Main Campus
- **NODE_2**: GLA Engineering Block  
- **NODE_3**: GLA Administrative Block
- **NODE_4**: GLA Student Hostel
- **NODE_5**: GLA Girls Hostel

## 📈 Monitored Parameters

Each sensor node provides real-time data for:

- **Electrical**: Voltage, Current, Power, Frequency, Power Factor
- **Environmental**: Temperature, Humidity, Ambient Light, Rain Detection
- **System**: Health Status, Fault Alarms, Connection Status

## 🛠️ Technology Stack

- **Frontend**: HTML5, CSS3, JavaScript (ES6 Modules)
- **Backend**: Firebase Realtime Database
- **Authentication**: Firebase Auth (Google OAuth2, Anonymous)
- **Maps**: Leaflet.js with OpenStreetMap
- **Styling**: Custom SCADA-style CSS with JetBrains Mono font
- **Server**: Node.js with http-server

## 🔧 Configuration

Firebase configuration is embedded in the dashboard. For production deployment:

1. Replace Firebase config in `firebase-dashboard.html`
2. Update authorized domains in Firebase Console
3. Configure proper security rules for Firebase Database

## 📁 Project Structure

```
├── firebase-dashboard.html    # Main dashboard with Firebase integration
├── style.css                 # SCADA-style CSS styling
├── package.json              # Node.js dependencies
├── serve.ps1                 # PowerShell server script
├── .gitignore               # Git ignore rules
└── README.md                # Project documentation
```

## 🔒 Security

- Firebase Authentication required for access
- Real-time database security rules implemented
- Demo mode for local development only
- Secure credential handling

## 🚀 Deployment

For production deployment:
1. Set up Firebase hosting or deploy to web server
2. Configure authorized domains
3. Update Firebase security rules
4. Set environment-specific configurations

---                                                                                                                                                                                                                 <img width="1919" height="900" alt="Screenshot 2025-08-31 085904" src="https://github.com/user-attachments/assets/723904d9-7cc2-4451-a1ec-c6a9eb3a950f" />


**Developed for GLA University Mathura IoT Research Project**
*Real-time sensor network monitoring with Firebase integration*
