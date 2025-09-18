// API route to check backend health
export default function handler(req, res) {
  res.status(200).json({ 
    status: 'ok',
    message: 'Rukun App Backend is running',
    timestamp: new Date().toISOString()
  });
}