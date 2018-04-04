# InfrastructurePractice
Assignment: https://gist.github.com/e30chris/a168f3c687047eab522af3ee222d2f4d

Discovery
---------
- Searched for existing options within Google Cloud for hosting Wordpress https://cloud.google.com/wordpress/ 
Google specifies, “Note: For automatic software updates and security patches, consider using a provider such as Kinsta or WP Engine which offers fully-managed WordPress solutions.”
- I looked at both options and they don’t seem necessary for the scale of this project 
- Different WordPress on GCP options include:
  - WordPress Single Instance using Cloud Launcher
  - WordPress on Kubernetes Engine
  - WordPress on App Engine
  - WordPress Plugins
- The two most beneficial options are WP on K8s and WP on App Engine
  - Both provide scalability for variable traffic
  - I’ll choose k8s because I’m more familiar with it and it provides more flexibility of containers
- Using this tutorial for following best practices/recommendations https://cloud.google.com/kubernetes-engine/docs/tutorials/persistent-disk
- Instead of using gcloud commands/CLI, I’m looking to deploy the k8s cluster with Terraform https://www.terraform.io/docs/providers/google/r/container_cluster.html 
