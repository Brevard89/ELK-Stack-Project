### Arthur Brevard ELK Stack Project 

UNCC Cybersecurity Boot Camp

#### *December 15, 2021*


# Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

https://drive.google.com/file/d/1bMkHIdD64FSudHU-GLnt7W5sSXhdjwtO/view?usp=sharing()

![ELK-Stack-Project1 drawio html](https://user-images.githubusercontent.com/89888435/146475624-8955c9f4-e6fd-42eb-8d66-42c3729a0987.png)


These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the **_config and yml_** file may be used to install only certain pieces of it, such as Filebeat.

  - [My-Playbook](https://drive.google.com/file/d/15ZrX9j-Uktai8H76tbGj87pxZoyUqCQQ/view?usp=sharing)
  - [Ansible Configuration](https://drive.google.com/file/d/1ojU2Scrz5oz_sdPjV5aNPZfDUyNXYXqz/view?usp=sharing)
  - [Hosts Configuration](https://drive.google.com/file/d/1eVEFO-u99TojKEWgjAKKNIXcDg46hHDA/view?usp=sharing)
  - [Install ELK Playbook](https://drive.google.com/file/d/1QClVvT4iUz1Kin5TMzFwG7N-wXrbaLT_/view?usp=sharing)
  - [Filebeat Playbook](https://drive.google.com/file/d/1sz3g4Gtm9gEMovYkp3v6wPdYddnp6eXV/view?usp=sharing)
  - [Metricbeat Playbook](https://drive.google.com/file/d/1oKPTBp19XYLJAHs_uChDH0Inlp1EnXt0/view?usp=sharing)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


# Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly **_available and reliable_**, in addition to restricting **_traffic_** to the network.

  - What aspect of security do load balancers protect? 
  
    - *_Load balancers help to eliminate single points of failure by distributing incoming network traffic amongst multiple servers which could prevent DDoS attacks._*

  - What is the advantage of a jump box?
  
    - *_The advantage of a Jump Box is that is prevents VM's in the Azure environment from being exposed publicly by restricting public IP Addresses to only the Jump Box while allowing traffic to flow to backend servers downstream._*


Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the *_network_* and *_system logs_*.
- What does Filebeat watch for?
  
  - *_Filebeat monitors log files and then collects those files and forward them to Elasticsearch for indexing._* 

- What does Metricbeat record?
  
  - *_Metricbeat gathers statistics and metrics, then delivers them to the output specified by the requester._*

The configuration details of each machine may be found below.

| Name            | Function | IP Address                | Operating System      |
|-----------------|----------|---------------------------|-----------------------|
| Jump Box        | Gateway  | 10.0.0.4 / 20.124.99.31   | Linux                 |
| Web1 (DVWA)     | Server   | 10.0.0.5 / 23.96.35.101   | Linux                 |
| Web2 (DVWA)     | Server   | 10.0.0.6 / 23.96.35.101   | Linux                 |
| Web3 (DVWA)     | Server   | 10.0.0.7 / 23.96.35.101   | Linux                 |
| ELK Server      | Server   | 10.1.0.4 / 157.56.166.8   | Linux                 |
# Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the *_JumpBoxProvisioner_* machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- *_Local Workstation with my Public IP address using TCP 5601_*

Machines within the network can only be accessed by *_Local Workstation as well as JumpBoxProvisioner using SSH._*.

- Which machine did you allow to access your ELK VM?

  - *_JumpBoxProvisioner using port 22_* 

- What was its IP address?

  - *_Local Workstation with my Public IP address using TCP 5601_*

A summary of the access policies in place can be found in the table below.

| Name        | Publicly Accessible | Allowed IP Addresses            |
|-------------|---------------------|---------------------------------|
| Jump Box    | Yes                 | 20.124.99.31                    |
| Web1 (DVWA) | No                  | 10.0.0.5                        |
| Web2 (DVWA) | No                  | 10.0.0.6                        |
| Web3 (DVWA) | No                  | 10.0.0.7                        |
| ELK Server  | No                  | Local Workstation IP (TCP 5601) |
# Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- What is the main advantage of automating configuration with Ansible?_

   - *_The main benefit of automating configurations with Ansible is that they reduce the probability of human error_*.

  
   - *_Another benefit is that Ansible can configure multiple machines all at once_*.


The playbook implements the following tasks:
- In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
  
  - Able to specify which group to configure using the following input:
   
    ![configure ELK VM with Docker](https://user-images.githubusercontent.com/89888435/146494692-82f9653e-799e-481f-a068-1cb0dd4eb5a9.png)

  - Install docker.io
    
    ![install docker io](https://user-images.githubusercontent.com/89888435/146494805-ea8af184-54f0-42c4-8898-5a57a25ca90a.png)
 
  - Install Python

    ![Install Python](https://user-images.githubusercontent.com/89888435/146494877-80d0197f-f571-41bd-bc9b-3e9c2e204260.png)

  - Install docker module

    ![Install docker module](https://user-images.githubusercontent.com/89888435/146494950-47f49a68-8efe-4558-9a35-be345daf9bad.png)

  - Increase virtual memory

    ![Increase Virtual Memory](https://user-images.githubusercontent.com/89888435/146495003-fa9c2b08-81df-4ac1-b4fc-08df0c2c8bae.png)

  - Download and launch a docker ELK container

    ![Download and launch a docker elk container](https://user-images.githubusercontent.com/89888435/146495103-c8b0dcd6-3dd7-4c7c-bcce-708a4373324f.png)


The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

## ELK VM

![ELK docker ps](https://user-images.githubusercontent.com/89888435/146497231-90038ad6-86ed-43bd-9eef-1880b4e292cc.png)

## Web1 VM

![Web1 docker ps](https://user-images.githubusercontent.com/89888435/146497296-8998c6dd-978f-4edb-a651-e645de3191a7.png)

## Web2 VM

![Web2 docker ps](https://user-images.githubusercontent.com/89888435/146497345-420df3f1-932e-4546-ac51-79cf5d084b7f.png)

## Web3 VM

![web3 docker ps](https://user-images.githubusercontent.com/89888435/146497420-fa655ac5-d9ed-4c94-9c9f-d8a9e320c132.png)

## JumpBoxProvisioner

![JumpBoxProvisioner docker ps](https://user-images.githubusercontent.com/89888435/146497470-0c19388a-c27b-4db3-bea9-354eda171c0b.png)

# Target Machines & Beats
This ELK server is configured to monitor the following machines:
- List the IP addresses of the machines you are monitoring

  - Web1: 10.0.0.5
  - Web2: 10.0.0.6
  - Web3: 10.0.0.7

We have installed the following Beats on these machines:
- Filebeat
  - ![Filebeat success](https://user-images.githubusercontent.com/89888435/146499137-4bbb119e-cd3d-433a-b56c-8c885b0aee91.png)

- Metricbeat
  - ![Metricbeat success](https://user-images.githubusercontent.com/89888435/146499308-c2a00f67-90a9-4611-b096-2c9640f451a6.png)


These Beats allow us to collect the following information from each machine:
- Filebeat is used to collect log files from different servers and databases. Some examples include Apache and MySQL.

![Filebeat dashboard](https://user-images.githubusercontent.com/89888435/146507008-41d8703c-9f68-45d7-940b-e844996a43ef.png)


- Metricbeat is used to find and monitor statistical data of different virtual machines, memory and network statistics etc.

- ![Metricbeat dashboard](https://user-images.githubusercontent.com/89888435/146507470-416ee63d-8b62-47a3-843e-d8bd2df14d94.png)

- ![Web1 metrics](https://user-images.githubusercontent.com/89888435/146508161-342a4747-c72d-4cad-a2bc-389c7735c180.png)

- ![Web2 metrics](https://user-images.githubusercontent.com/89888435/146508190-e39628c4-7820-4f63-9d2d-fc641bd7023f.png)

- ![Web3 metrics](https://user-images.githubusercontent.com/89888435/146508209-bd0213fe-3f94-4b74-b935-64fa9f2ab65b.png)


# Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

- Verify Public IP by navigating to [What Is My IP?](https://www.bing.com/search?q=what+is+my+ip&cvid=5ec222ff4441452bbaa4e727aa1afd64&aqs=edge.1.69i57j0l6j69i60l2.4480j0j9&FORM=ANAB01&PC=NMTS#:~:text=My%20IP%20Location-,https%3A//www.whatismyip.com,-IP%20address%20stands)

SSH into the control node and follow the steps below:
- Copy the *_yml_* file to your *_ansible_* directory.
- Update the config file to include *_remote users and what ports_*
- Run the playbook, and navigate to the kibana website *_(your IP address:5601//app/kibana)_* to check that the installation worked as expected.

## For the ELK VM

- Copy the [Install ELK Playbook](https://drive.google.com/file/d/1QClVvT4iUz1Kin5TMzFwG7N-wXrbaLT_/view?usp=sharing)

- Type and execut the following command: ansible-playbook `/etc/ansible/install-elk.yml`

## For Filebeat

- You need to download the Filebeat Playbook using the following command: `

  - curl -L -O https://gist.githubusercontent.com/slape/5cc350109583af6cbe577bbcc0710c93/raw/eca603b72586fbe148c11f9c87bf96a63cb25760/Filebeat > /etc/ansible/filebeat-config.yml`
  - Next, copy the [Filebeat config](https://drive.google.com/file/d/1ual8JzBz19v3mt29zC_AsKXyVCLuPP_2/view?usp=sharing_) file to /etc/ansible
  - 
- Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?

  - *_/etc/ansible/hosts file (IP of the VM)._*

- Which URL do you navigate to in order to check that the ELK server is running?
   
   - http://157.56.166.8:5601//app/kibana 

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
