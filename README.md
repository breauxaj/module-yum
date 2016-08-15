yum
===

A software package manager that installs, updates, and removes packages on
RPM-based systems. It automatically computes dependencies and figures out what
things should occur to install packages. yum makes it easier to maintain groups
of machines without having to manually update each one using rpm.

Samples
-------
```
include yum
```
```
yum::config {
  "exclude": value => 'kernel*';
}
```
```
yum::gpgkey { 'somerepo':
  location => '',
  content  => ''
}
```

Hiera
-----
```
repos:
  ius:
   mirrorlist:     'https://mirrors.iuscommunity.org/mirrorlist?repo=ius-centos7&arch=$basearch&protocol=http'
   failovermethod: 'priority'
   enabled:        '1'
   gpgcheck:       '1'
   gpgkey:         'file:///etc/pki/rpm-gpg/IUS-COMMUNITY-GPG-KEY'
   descr:          'IUS Community Packages for Enterprise Linux 7 - $basearch'
```

License
-------
GPL3

Contact
-------
breauxaj AT gmail DOT com