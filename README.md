# Project Name

This project aims to demonstrate the setup of a Virtual Private Cloud (VPC) in AWS using Infrastructure as Code (IAC). It includes the creation of subnets and routing configurations.

## Architecture Diagram

![VPC - Subnets - Route](./VPC%20-%20Subnets-%20route.png)

## Prerequisites

Before getting started, make sure you have the following:

- AWS account with appropriate permissions
- AWS CLI installed and configured
- Terraform installed

## Getting Started

1. Clone this repository.
2. Navigate to the project directory.
3. Update the `variables.tf` file with your desired configurations.
4. Run `terraform init` to initialize the project.
5. Run `terraform plan` to see the execution plan.
6. Run `terraform apply` to create the VPC and associated resources.
7. Once the resources are created, you can start deploying your EC2 instances within the VPC.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).