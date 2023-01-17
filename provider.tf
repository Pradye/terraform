terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "4.100.0"
    }
  }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  private_key_path = var.private_key_path
  fingerprint      = var.fingerprint
  region           = var.region
  #config_file_profile = "pradeep"

}

variable "tenancy_ocid" {
  type= string
  default = "ocid1.tenancy.oc1..aaaaaaaapzoexmi4wt3amsj6a3ognfkzwanrof6ff7kzv2oem2h5dgsx2d6q"
}
variable "user_ocid" {
  type= string
  default = "ocid1.user.oc1..aaaaaaaax2iu3yjtckirzo4hyqlrsu2fswvxyzz7273lr3wmde3ejrxny7qa"
}
variable "private_key_path" {
  type= string
  default = <<-EOF
              -----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDBEKWGCL260n1v
Z4MvrFqyHJULLnTLJPBbw/OdFkTv1WT9NqlxC/q6ibzGmFOtks1iSE9EU9JmIBZQ
fWDOWUJ81C89JALDmIPeP2x1NuDYPf31bnyI5hZJa2fgPLnY5T9yooUna3IKNlG+
sDjW4aw6hcxTsJDailsvo5E29A2t2YRfWBWFX1q9XruuyuyzLDN8TkwFTJ0kuz2u
Hy5gW8lzp0o7DQN3nTQ7DBbVeMVW/gHAZYg7VxUHHLKadrfwtnMNDQQtn2obmLu9
JEyiUMP9P+vBI+q3NnZ6kKpLArnBYt68U9P09jsrZwbsITf97dDWzclaLj7xI2OS
nV/rpqOXAgMBAAECggEAXMSFbH6VwAe1SwsHf6hHGi9etHU5nIUe01E4JSKWtFEq
yfrydwXlD63wXdLC3nPcKV4KbJAEWJsRbdKY6f380yNXoX7ErzyBHJEIKdhZOL6s
4ToaL+OzEMtBqf8z49Lf5lLOPW9E6EBKjiB551Kfoa05zXrZV5FEmIL1W1zwl7hF
zSzNc6mgArl9MU/0m3F/afEYy65kJU3Ky5Kntew9FIgbcEpx9YA7tAFiOX8Hu3yi
JJ2Q+oUCjsk+qXOFJvq6u2S9/xJ1+fv9uQtY4zChwxHp2/3tJemDQ9WRCp+O74m7
Tu5BUiInvWVdJle9UGOA0Oif3sGIossHRseka01rrQKBgQDBjKuvsTmVJxGu5+uY
CqzE/HcVsMoIgE1vgIMEyxz0ISckpHnX3O0AxiHU3h/8wx+JHIqRVSPsjstGB9Tc
xuxlus+EHGrV7gljhHUdQo17/bdm8H/bISv9T74hBUO6ioJ+m/j3DijZzBNn6yTd
yHrwsXqcvGjuuofniu4b1+oG/QKBgQD/W/VbwbFvIscSy1N8F0GlICg5ZIT9BMNk
KtejnxcxsuwbIWgBS4fIqp8ZY5vGvX80lRxjrryiZJLBuh6X5GSvM6Mefbi0xfy0
RESoUL1NbEVsT0EnKKEs49h99n3MYmAvBOrl8DdimoMc5xo/Qjet7lV01cmT/m+J
RCwf0wcbIwKBgQCdikK03yxfm01pcJzzRL0cGeNUZHIOOWDOQWxjmnAWxmV2Deqf
KdQ/rQYcnjCrLKeekvy3DvYOtqv+dKFukvwYUdZXUkojl31M46PwDRvcsMd3oopv
crC7nwzDE+XtEJDnPU2Iyp21qcah72QyodxvzgZfTXyb1HiKnyrwvu5egQKBgQC3
/BatFMJ103XhebPd/ZejlKbGq0ESWAM7wY566l44xbRN2+TmwffEQgK9tUIAkHn9
dc3tmHF7A8GlaScvwzQz8518k5KoVNo9O87IAtxR00e1wOitgR2XjVZnc1iyENNC
LWXdZBVTqwX6phwIJfqeC9Fwi7RgN/s+yGqOR2qgRwKBgC6DAiHjvYyM4UrFBgI9
ZydCAV5y+zNbH93dLcB+a+RSLsJHXLMiukMQ8J5xNM3sfs+uyxk1gjgOA71xcQo8
lGUl6sZxYVSn92605eTc3sCcbeuWA3bqAhuLBVDc1/3SC0dszq9o1+ltkRbSVN/h
apBR42N2QUs96tsmvQc/1Vcl
-----END PRIVATE KEY-----

              EOF
  
   }
variable "fingerprint" {
  type= string
  default = "55:99:b3:40:47:14:51:59:f0:3e:c5:44:f5:c8:1f:80"
}
variable "region" {
  type= string
  default = "ap-melbourne-1"
}

