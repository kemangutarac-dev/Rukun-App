/** @type {import('next').NextConfig} */
const nextConfig = {
  // Configure for Replit environment
  trailingSlash: false,
  output: 'standalone',
  // Allow Replit proxy origins
  allowedDevOrigins: [
    "cd79fcb6-35b0-4e05-bff9-67eda49dfde2-00-20sqbhakk0czv.sisko.replit.dev",
    "*.replit.dev",
    "127.0.0.1",
    "localhost",
    "0.0.0.0"
  ],
  async headers() {
    return [
      {
        source: '/:path*',
        headers: [
          { key: 'X-Frame-Options', value: 'SAMEORIGIN' },
          { key: 'Cache-Control', value: 'no-cache, no-store, must-revalidate' },
          { key: 'Pragma', value: 'no-cache' },
          { key: 'Expires', value: '0' },
        ],
      },
      {
        source: '/api/:path*',
        headers: [
          { key: 'Access-Control-Allow-Origin', value: '*' },
          { key: 'Access-Control-Allow-Methods', value: 'GET, POST, PUT, DELETE, OPTIONS' },
          { key: 'Access-Control-Allow-Headers', value: 'Content-Type, Authorization' },
        ],
      },
    ];
  },
}

module.exports = nextConfig