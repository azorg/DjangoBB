#!/bin/bash
#----------------------------------------------------------------------------
mkdir -p clones
cd clones

#----------------------------------------------------------------------------
vc() # $1=hg/git $2=clone $3=url $4=dir
{
  if [ -d "$4" ]
  then
    echo ">>> Update '$4':"
    cd $4
    $1 pull
    cd -
  else
    echo ">>> Clone '$4':"
    $1 $2 $3 $4
  fi
}
#----------------------------------------------------------------------------

# DjangoBB
vc hg  clone https://bitbucket.org/slav0nic/djangobb#stable  djangobb-stable-hg
vc hg  clone https://bitbucket.org/slav0nic/djangobb         djangobb-hg
vc hg  clone https://bitbucket.org/slav0nic/djangobb_project djangobb_project-hg
vc git clone https://github.com/slav0nic/DjangoBB            DjangoBB-git

# Django OpenID
vc hg clone https://bitbucket.org/benoitc/django-authopenid django-authopenid-hg

# Django registration (for explorer source)
vc git clone https://github.com/macropin/django-registration django-registration-git

# linaro-django-pagination (DEPRICATED)
# As soon as a release after v2.0.2 is made, we can revert to
# a normal PyPI requirement. Python 3 support is brand new in this package.
vc git clone https://github.com/zyga/django-pagination.git linaro-django-pagination-git

# mailer (optional? ha-ha!)
vc git clone https://github.com/pinax/django-mailer.git django-mailer-git

# django-messages (PM_SUPPORT optional)
vc git clone https://github.com/arneb/django-messages.git django-messages-git

# other
vc git clone https://github.com/sehmaschine/django-grappelli.git django-grappelli-git
vc git clone https://github.com/django-mptt/django-mptt.git django-mptt-git
vc git clone https://github.com/krvss/django-social-auth.git django-social-auth-git
vc git clone https://github.com/gabrielhurley/django-wymeditor.git django-wymeditor-git
vc git clone https://github.com/tweepy/tweepy.git tweepy-git

# graph_models
vc git clone https://github.com/django-extensions/django-extensions django-extensions-git

# bash console
#vc git clone https://github.com/atmb4u/django-console django-console-git

# django-pagination (DEPRICATED TOO!)
#!!!
svn checkout http://django-pagination.googlecode.com/svn/trunk/ django-pagination-svn-ro

#----------------------------------------------------------------------------
# djbook.ru - as example
#vc git clone https://github.com/RaD/djbookru djbookru-git
#----------------------------------------------------------------------------
cd -

