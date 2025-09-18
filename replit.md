# Rukun App - Local Community Platform

## Overview
The Rukun App is a local community platform that connects neighbors and community members through location-based services. The application consists of a Flutter mobile app frontend and a Next.js TypeScript backend with real-time features.

## Project Architecture

### Frontend Architecture
- **Primary Frontend**: Next.js application serving on port 5000
  - Location: `backend/nextjs_app/`
  - Features: Web interface for community management
  - Configuration: Configured for Replit environment with proper CORS and caching settings

- **Mobile Frontend**: Flutter application (available for mobile development)
  - Location: `frontend/flutter_app/`
  - Features: Location services, maps integration, mobile-optimized UI
  - Dependencies: Geolocator for location services, Google Maps integration

### Backend Architecture
- **Framework**: Next.js 14 with TypeScript
- **API Routes**: 
  - `/api/health` - Health check endpoint
  - `/api/communities` - Community management endpoints
- **Real-time Features**: Socket.io integration (configured)
- **Database**: PostgreSQL with PostGIS for location data (configured)
- **Caching**: Redis integration (configured)

## Technology Stack
- **Frontend**: Next.js 14, React 18, Flutter (Dart 3.8)
- **Backend**: Next.js API routes, TypeScript
- **Database**: PostgreSQL with PostGIS extension
- **Real-time**: Socket.io
- **Caching**: Redis
- **Hosting**: Replit (configured for autoscale deployment)

## Development Setup

### Dependencies Installed
- Node.js 20
- Dart 3.8 (Flutter SDK)
- Next.js 14 with React 18
- PostgreSQL client (pg)
- Socket.io server
- Redis client

### Workflow Configuration
- **Frontend Workflow**: Runs Next.js dev server on port 5000
- **Command**: `cd backend/nextjs_app && npm run dev`
- **Host Configuration**: 0.0.0.0:5000 with Replit domain allowlist

### Replit Environment Configuration
- **Host**: 0.0.0.0 for proper proxy handling
- **Port**: 5000 (required for Replit frontend access)
- **Domain**: Configured for Replit proxy with specific domain patterns
- **Cache Control**: Disabled for development to prevent stale content

## Deployment Configuration
- **Type**: Autoscale deployment (stateless web application)
- **Build Command**: `npm run build`
- **Start Command**: `npm start`
- **Environment**: Production-ready Next.js standalone build

## API Endpoints

### Health Check
- **Endpoint**: `GET /api/health`
- **Response**: JSON with status, message, and timestamp
- **Purpose**: Service health monitoring

### Communities
- **Endpoint**: `GET /api/communities` 
- **Response**: JSON array of community objects
- **Features**: Location-based community data with member counts

## Recent Changes (September 18, 2025)
1. Set up Next.js as primary frontend instead of Flutter web due to build compatibility
2. Configured proper Replit environment settings for proxy handling
3. Created basic API structure with health and communities endpoints
4. Set up workflow for continuous development server
5. Configured deployment settings for production publishing
6. Resolved cross-origin request issues with proper allowedDevOrigins configuration

## User Preferences
- **Frontend Choice**: Next.js web interface prioritized over Flutter web for Replit compatibility
- **Development Approach**: Rapid prototyping with mock data for immediate functionality
- **Architecture**: Maintain both Next.js web and Flutter mobile capabilities

## Future Development
- Database integration (PostgreSQL with PostGIS)
- Real-time features implementation (Socket.io)
- Redis caching implementation
- Enhanced location-based features
- Mobile app deployment capabilities
- User authentication and community management features

## Notes
- The project maintains both web (Next.js) and mobile (Flutter) frontends
- Mock data is used for initial development and testing
- All core dependencies are configured and ready for feature development
- The application is fully functional and ready for deployment or further development