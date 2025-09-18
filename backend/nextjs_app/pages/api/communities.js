// API route for communities management
export default function handler(req, res) {
  if (req.method === 'GET') {
    // Return mock communities data for now
    res.status(200).json({
      communities: [
        {
          id: 1,
          name: 'Jakarta Selatan',
          description: 'Komunitas warga Jakarta Selatan',
          memberCount: 150,
          location: {
            latitude: -6.2615,
            longitude: 106.8106
          }
        },
        {
          id: 2,
          name: 'Bandung Utara',
          description: 'Komunitas warga Bandung Utara',
          memberCount: 89,
          location: {
            latitude: -6.8619,
            longitude: 107.6095
          }
        }
      ]
    });
  } else {
    res.status(405).json({ message: 'Method not allowed' });
  }
}