# Deploy to Koyeb

## How to Create an Account in Koyeb

1. Go to the Koyeb website at https://www.koyeb.com/ and click on the "Sign up" button at the top right corner of the page.
2. You can sign up for Koyeb using your email address or a third-party authentication provider such as GitHub, GitLab, or Google.
3. Once you have signed up, you will be redirected to the Koyeb dashboard. From here, you can create a new application and deploy your code to Koyeb.

## How to Deploy to Koyeb using the Koyeb Deploy Button

1. Click on the Koyeb Deploy Button link that is provided in the README.md file.
2. You will be redirected to the Koyeb Deploy Button page. Here, you can select the deployment source you want to use. In this case, select "Docker".
3. In the "Image" field, enter the name of the Docker image you want to deploy. For example, `developeranaz/rcindex:latest`.
4. In the "Name" field, enter the name you want to give your Koyeb application. For example, `rcindex`.
5. In the "Ports" field, enter the port number you want to use for your application. For example, `3000;http;/`.
6. In the "env" field, enter the environment variables required to run your application. In this example, you would enter the following environment variables:

```
CONFIG_IN_URL=<CONFIG_IN_URL>
template=dark
indexauthentication=false
INDEXusername=<INDEXusername>
INDEXpassword=<INDEXpassword>
PORT=3000
```

7. In the "Command" field, enter the command you want to use to start your application. In this case, rcindex.
8. Click on the "Deploy to Koyeb" button to deploy your application.
9. Your application will be deployed to Koyeb and you can monitor its status in the Koyeb dashboard.

## Deployment Buttons

[![Deploy to Koyeb](https://www.koyeb.com/static/images/deploy/button.svg)](https://app.koyeb.com/apps/deploy?type=docker&image=developeranaz/rcindex:latest&name=rcindex&ports=3000;http;/&env[CONFIG_IN_URL]=<CONFIG_IN_URL>&env[template]=dark&env[indexauthentication]=false&env[INDEXusername]=<INDEXusername>&env[INDEXpassword]=<INDEXpassword>&env[PORT]=3000&command=rcindex)
