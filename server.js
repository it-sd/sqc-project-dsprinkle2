describe('GET /health', function() {
  it('returns a 200 response if the database is healthy', function(done) {
    request.get('/health', function(error, response, body) {
      expect(response.statusCode).toBeGreaterThanOrEqual(200);
      expect(response.statusCode).toBeLessThanOrEqual(399);
      done();
      
      
    });
  });
});

describe('GET /', function() {
  it('returns a 200 response', function(done) {
    request.get('/', function(error, response, body) {
      expect(response.statusCode).toBeGreaterThanOrEqual(200);
      expect(response.statusCode).toBeLessThanOrEqual(399);
      done();
    });
  });
});

describe('database queries', function()
