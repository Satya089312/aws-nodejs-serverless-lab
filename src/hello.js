// Create an AWS Lambda handler that returns HTTP status code 200
// and a JSON response containing the message "Hello from AWS Lambda"
exports.handler = async (event) => {
    const response = {
        statusCode: 200,
        body: JSON.stringify({
            message: "Hello from AWS Lambda"
        })
    };
    return response;
};