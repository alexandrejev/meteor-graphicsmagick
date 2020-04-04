I am using this dockerfile for Meteor 1.9+ with Graphicsmagick and using MUP to deploy it. 

Make this change to your mup.js file


    docker: {
      image: "curlychap/meteor-graphicsmagick",
    },
    
Then make sure you are also making a volume available to docker if you want to map something to a permenant location so your files arenn't deleted when you do new mup deploys. 


    volumes: {
      "/opt/uploads": "/uploads"
    },
    
