#!/bin/bash
set -e

echo "🚀 Setting up Creator Management Platform..."

# Backend Setup
echo "📦 Installing NestJS backend..."
cd backend
npm install --save @nestjs/core @nestjs/common @nestjs/platform-express @nestjs/config @nestjs/jwt @nestjs/passport passport passport-jwt bcrypt @prisma/client bullmq ioredis class-validator class-transformer
npm install --save-dev @nestjs/cli @nestjs/schematics @nestjs/testing @types/node @types/jest @types/passport-jwt typescript ts-node prisma

echo "📦 Initializing Prisma..."
npx prisma init

cd ..

# Frontend Setup  
echo "📦 Installing Next.js frontend..."
cd frontend
npx create-next-app@latest . --typescript --tailwind --app --no-src-dir --import-alias "@/*" --use-npm
npm install @tanstack/react-query axios zod react-hook-form @hookform/resolvers

echo "✅ Setup complete!"
