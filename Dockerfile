FROM amazoncorretto:17

# Set environment variables
ENV SPRING_APPLICATION_NAME=monolith \
    SPRING_CACHE_TYPE=caffeine \
    SPRING_CACHE_CAFFEINE_SPEC="maximumSize=1000,expireAfterWrite=10m" \
    SPRING_DATA_MONGODB_URI="mongodb+srv://matt:L1cIZXz5rEdsNcTQ@development.i0qcf.mongodb.net/?retryWrites=true&w=majority" \
    SPRING_DATA_MONGODB_DATABASE=Development \
    SPRING_SECURITY_OAUTH2_RESOURCESERVER_JWT_ISSUER_URI="https://emesbee-dev.us.auth0.com/" \
    SPRING_SECURITY_OAUTH2_RESOURCESERVER_JWT_AUDIENCE="https://emesbee-dev.us.auth0.com/api/v2/" \
    FUSION_AUTH0_ISSUER="https://emesbee-dev.us.auth0.com/" \
    FUSION_AUTH0_AUDIENCE="https://emesbee-dev.us.auth0.com/api/v2/" \
    FUSION_AUTH0_CLIENT_ID=xguZBJnmkcKK1DTrGmftvPX2Vmrdebur \
    FUSION_AUTH0_CONNECTION=Username-Password-Authentication \
    FUSION_AUTH0_CLIENT_SECRET="hKw08cKlnRqG5Wn86OoRkno2V6MRCA-rozEuoieuOaEaAVe5ySxm0Mjhf3BiUmx8" \
    META_API_API_KEY="eyJhbGciOiJSUzUxMiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiJjZjYwZmQxZmJjOGFlOGVjZDJlOGIwZDJjM2RjOWExNSIsInBlcm1pc3Npb25zIjpbXSwiYWNjZXNzUnVsZXMiOlt7ImlkIjoidHJhZGluZy1hY2NvdW50LW1hbmFnZW1lbnQtYXBpIiwibWV0aG9kcyI6WyJ0cmFkaW5nLWFjY291bnQtbWFuYWdlbWVudC1hcGk6cmVzdDpwdWJsaWM6KjoqIl0sInJvbGVzIjpbInJlYWRlciIsIndyaXRlciJdLCJyZXNvdXJjZXMiOlsiKjokVVNFUl9JRCQ6KiJdfSx7ImlkIjoibWV0YWFwaS1yZXN0LWFwaSIsIm1ldGhvZHMiOlsibWV0YWFwaS1hcGk6cmVzdDpwdWJsaWM6KjoqIl0sInJvbGVzIjpbInJlYWRlciIsIndyaXRlciJdLCJyZXNvdXJjZXMiOlsiKjokVVNFUl9JRCQ6KiJdfSx7ImlkIjoibWV0YWFwaS1ycGMtYXBpIiwibWV0aG9kcyI6WyJtZXRhYXBpLWFwaTp3czpwdWJsaWM6KjoqIl0sInJvbGVzIjpbInJlYWRlciIsIndyaXRlciJdLCJyZXNvdXJjZXMiOlsiKjokVVNFUl9JRCQ6KiJdfSx7ImlkIjoibWV0YWFwaS1yZWFsLXRpbWUtc3RyZWFtaW5nLWFwaSIsIm1ldGhvZHMiOlsibWV0YWFwaS1hcGk6d3M6cHVibGljOio6KiJdLCJyb2xlcyI6WyJyZWFkZXIiLCJ3cml0ZXIiXSwicmVzb3VyY2VzIjpbIio6JFVTRVJfSUQkOioiXX0seyJpZCI6Im1ldGFzdGF0cy1hcGkiLCJtZXRob2RzIjpbIm1ldGFzdGF0cy1hcGk6cmVzdDpwdWJsaWM6KjoqIl0sInJvbGVzIjpbInJlYWRlciIsIndyaXRlciJdLCJyZXNvdXJjZXMiOlsiKjokVVNFUl9JRCQ6KiJdfSx7ImlkIjoicmlzay1tYW5hZ2VtZW50LWFwaSIsIm1ldGhvZHMiOlsicmlzay1tYW5hZ2VtZW50LWFwaTpyZXN0OnB1YmxpYzoqOioiXSwicm9sZXMiOlsicmVhZGVyIiwid3JpdGVyIl0sInJlc291cmNlcyI6WyIqOiRVU0VSX0lEJDoqIl19LHsiaWQiOiJjb3B5ZmFjdG9yeS1hcGkiLCJtZXRob2RzIjpbImNvcHlmYWN0b3J5LWFwaTpyZXN0OnB1YmxpYzoqOioiXSwicm9sZXMiOlsicmVhZGVyIiwid3JpdGVyIl0sInJlc291cmNlcyI6WyIqOiRVU0VSX0lEJDoqIl19LHsiaWQiOiJtdC1tYW5hZ2VyLWFwaSIsIm1ldGhvZHMiOlsibXQtbWFuYWdlci1hcGk6cmVzdDpkZWFsaW5nOio6KiIsIm10LW1hbmFnZXItYXBpOnJlc3Q6cHVibGljOio6KiJdLCJyb2xlcyI6WyJyZWFkZXIiLCJ3cml0ZXIiXSwicmVzb3VyY2VzIjpbIio6JFVTRVJfSUQkOioiXX0seyJpZCI6ImJpbGxpbmctYXBpIiwibWV0aG9kcyI6WyJiaWxsaW5nLWFwaTpyZXN0OnB1YmxpYzoqOioiXSwicm9sZXMiOlsicmVhZGVyIl0sInJlc291cmNlcyI6WyIqOiRVU0VSX0lEJDoqIl19XSwidG9rZW5JZCI6IjIwMjEwMjEzIiwiaW1wZXJzb25hdGVkIjpmYWxzZSwicmVhbFVzZXJJZCI6ImNmNjBmZDFmYmM4YWU4ZWNkMmU4YjBkMmMzZGM5YTE1IiwiaWF0IjoxNzI2NDYyODY3fQ.H4ATSROhdx41oqUzmtEI74D92hJvNHU6uvTe383f3wolpBVrOy2I-pn0ArvjxypA2iOtefadirX4j9G7Ofo5hDeWcG8aEl5h7Q7cAvsU5SvDJqosPkpb2TN1HDC6nGsGGc-vSM65n4lC1WW6dEoMjgJ0xMLakPFmodPVZPtBEB2gd2XLwOmI9DeOaXj2hwhmWRGYq4eJu18U_IMw3rYkMketMNll7sO39XGXEWryhpkqM2jE0sW3wGKs6-G9t-gQtnPPl6_aNZCrPRQucaygoDLSbU1ImMga4ytFVWLGR_1WPqVMit8gMDPL5ZMNObBmJFufMnECS3vxiLwzBaVDfXW3E3DJj0YWBFY9nipt6KUdg502PEs6LMT2KiZbDxj5Hj298XKGjCbrCsrCZlnbEz3oZ_WyJqUPzculsgCd_BungoAy7NRBd6WKz_-JbZ6wYZKZuo78eXT9gCDMV4cV4eSHGTKA5mX6d0vmgG1DlLAIiq9-ot37vCWh0HwOy-dXrz6yM-TKbq248R1ng_uFJDF2Zc5hxUJ9J_AgOMngWETkF-_p1IeR5qxc-2J6SfD09zLR0BrtAMMHd5stWIFEOE-8F7yUZPZI9AD4nCUIOY62-VgnUNPXbpzB4YUodgyV8CMK2txSVRofMLgDpaitZhsF3lwz07VK6h_TSR65Udk"

# Copy the jar file into the container
COPY target/Monolith-0.0.1-SNAPSHOT.jar app.jar

# Set the entry point to run the app
ENTRYPOINT ["java", "-jar", "/app.jar"]
