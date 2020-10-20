# The name of your project. A project typically maps 1:1 to a VCS repository.
# This name must be unique for your Waypoint server. If you're running in
# local mode, this must be unique to your machine.
project = "mbaykara.github.io"

# Labels can be specified for organizational purposes.
# labels = { "foo" = "bar" }

# An application to deploy.
app "resume" {
    build {
        use "docker" {}
        
    }

    # Deploy to Docker
    deploy {
        use "docker" {
            service_port=80
        }
       
    }
}
