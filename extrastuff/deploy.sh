
# This assumes you're either in the top folder of the repo 
# OR the Franklin.jl folder.
# I can't imagine why one would call this script from a different directory.
[ -d "AcademicSite" ] && cd AcademicSite

password=$(cat .passfile)

rm -rf __site/*
julia -e "using Franklin; optimize(minify=false)"

sshpass -f ".passfile" scp -r __site/* jjgarzel@math-login.ucsd.edu:~/public_html

echo "Done."
