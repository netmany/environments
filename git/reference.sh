#setup git environment
ssh-keygen -t rsa
git config --global user.name "someone"
git config --global user.email "someone@galaxy.com"

mkdir projects; cd projects

#config source code IP and branch
IP="xx.xx.xx.xx" 
port="xxxx"
branch="XXX_INT"

#make local code view, and customize sys.lst
#ssh -p $port $IP gerrit ls-projects > sys.lst 
cat sys.lst | while read pro
do
   mkdir -p "$pro"
   (cd "$pro/.."; git clone "ssh://$IP:$port/$pro" -b $branch)
   (cd  $pro; scp -P $port -p $IP:/hooks/commit-msg .git/hooks/)
done

#change to the directroy containing new.c
cd "xxxx/xxx/xx/" 

#get another remote branch
git fetch origin remote-branch:local-branch

#rename local branch
git branch -m <old_branch_name> <new_branch_name>  

#rename remote branch to newbranch
git branch -m remotebranch newbranch
git push origin :remotebranch
git push origin newbranch

#checkout and update local view
git fetch origin; git rebase origin/$branch

#modification
vim new.cc
#vi search "/keywords\c"
find . -iname *filename*
grep -in keyword filename
grep -rin keyworld directory

#switch to branch
git checkout XXX_Dev
#checkin
git rm -- path/file.c
git rm -r -- path/dirZ
git add new.cc
git commit  -s -m "SN2345235:someone_test new.cc"
git commit --amend -C cb40f43

# -a to add modification and deletion
git commit  -s -am "commit-msg"

# bundle commits to one
git rebase -i commit-id-before-all-changes
# change pick to f to bundle

git push origin HEAD:refs/for/XXXX_Int

#check version tree of file
git log new.cc
git show e0727995fc #commit-id

# vim cancel highlight
:noh

#vim search circularly
/pattern #forward
?pattern #backward

# check history of commits
git log --oneline -20 dir/file
 
# check last modifier commit of the lines
git blame -L 200,+30 dir/file
 
# check the modification of the commit-id on the file
git show commit-id dir/file
 
# check the difference of start ... end commit on the file
git diff start-commit end-commit dir/file
 
# check the modification of the commit-id
git show commit-id
 
# check the short diff
git diff --name-status start-commit end-commit
git diff --stat start-commit end-commit
 
# check the diff of branches on the file
git diff mybranch master -- dir|file
git diff branch1:file branch2:file
 
# check the diff of branches
git diff branch_1 branch_2
git diff --name-status master dev
 
# copy dev to int
git checkout int-br
git checkout dev-br -- dir|file
git add .
git commit -m 'Add dir|file to int-br.'

# add new file to repo
git add filename

# check modification freq
git log --pretty=format: --name-only | sort | uniq -c |sort -rg| head

# copy files from server
smbclient "//xx.xx.xx.xx/share_dir/" -U someone
cd some_sub\
get archive.tar.gz
q

# unpkg and pkg dir
tar -xzf back.tar.gz
tar -czf back.tar.gz tmp/

# zip a dir
zip -r dst.zip .

# unzip a zipfile
unzip dst.zip -d dst

# check file integrity
md5sum dst.zip

# encrypt a file with [ des | aes256 ]
openssl enc -e -des -k myword -in test.zip -out test.zip.sec

# decrypt a file
openssl enc -d -des -k myword -in test.zip.sec -out test.zip

# rsa encrypt a file
echo "this is my doc key!" > mypassword
openssl rand 256 -out key.rand
openssl genrsa -rand key.rand -out privatekey.rsa 1024
openssl rsa -pubout -in privatekey.rsa -out publickey.rsa
openssl enc -e -kfile mypassword -aes256 -in test.zip -out test.zip.sec
openssl rsautl -encrypt -pubin -inkey publickey.rsa -in mypassword -out mypassword.sec

# rsa decrypt a file
openssl rsautl -decrypt -inkey privatekey.rsa -in mypassword.sec -out mypassword2
openssl enc -d -kfile mypassword2 -aes256 -in test.zip.sec -out test2.zip
#######################################

# split and concatennate files
split -b 10M some.file someprefix
cat someprefix* >some2.file

# sort a line
echo -n "one two  three four five" | tr -s " " "\n" | sort | tr "\n" " "

# find a word in file
echo -n "one two  three four five" | grep -w two

# decompress gz archive in multi-files
cat some-large-base.tar.gz* | tar -zxvf -

 # copy origin files
 scp some/local/file remote-user@xx.xx.20.xx:/remote/dir/place
enter password: some-word

 
