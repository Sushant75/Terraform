# Terraform
Terraform Bootcamp to learn in and out of terraform IAAC tool
<br><br>

## Introduction
<br>

<ul>
  <li>Infrastructure As a Code (IAAC)</li>
  <li>Define Infrastructure State</li>
  <li>Ansible, puppet or chef automates mostly OS related tasks.
    <ul>
    <li>Defines machine state</li>
  </ul>
  </li>
  <li>Terraform automates Infrastructure itself
    <ul>
      <li>Like AWS, GCP, Azure, Digital Ocean etc.</li>
    </ul>
  </li>
  <li>Terraform works with automation software like ansible after infra is set up and ready.</li>
  <li>No programming, its own syntax similar to json.</li>
</ul>


## Installation
<br>

<ul>
  <li>Download terraform binary from its website
  <ul>
    <li>Linux</li>
    <li>Windows</li>
    <li>Mac</li>
  </ul>
  </li>
  <li>Store binary in exported path e.g. Linux => /usr/local/bin</li>
</ul>
<br><br>

## Variables
<br>
<ul>
  <li>Move secrets to another file</li>
  <li>Values that change 
    <ul>
      <li>AMI, tags, keypair etc.</li>
    </ul>
  </li>
  <li>Reuse your code</li>
</ul>
<br><br>

## Provisioning
<br>
<ul>
<li>Build custom images with tools like packer</li>
<li> Use standard image and use provisioner to set up software and files.
<ul>
  <li>File uploads</li>
  <li>remote_exec</li>
  <li>Ansible, Puppet or Chef</li>
</ul>
</li>
</ul>

## Exercises

## Exercise - 1
<br>
<ul>
  <li>Exercise -1 : Launch an EC2 Instance</li>
</ul>
<br>

## Exercise - 2
<br>
<ul>
  <li>Write providers.tf file</li>
  <li>Write vars.tf file</li>
  <li>Write instance.tf file</li>
  <li>Apply changes</li>
  <li>Make some changes to instance.tf file</li>
  <li>Apply changes.</li>
</ul>
<br>

## Exercise - 3
<br>
<ul>
  <li>Generate key pair</li>
  <li>Write script</li>
  <li>Write providers.tf</li>
  <li>Write vars.tf</li>
  <li>Write Instances.tf</li>
  <li>Apply Changes.</li>
</ul>
