const { handler } = require('../src/hello');

test('Handler returns correct status code and message', async () => {
    const event = {};

    const result = await handler(event);

    expect(result.statusCode).toBe(200);
    expect(JSON.parse(result.body).message).toBe('Hello from AWS Lambda');
});
