export MY_COOL_NODE_APP=$HOME/Documents/generateApp/

echo enter files path like Documents/openapiyamls
read search_dir
# =$HOME/Documents/openapiyamls/

echo enter output filename
read myfile




for entry in "$HOME/$search_dir"/*
do
file $entry
curl -F "myapi=@$entry;type=text/yaml" https://aqueous-retreat-41952.herokuapp.com/uploadopenapi
done

curl https://aqueous-retreat-41952.herokuapp.com/downloadDocument -o $myfile.zip








# node $MY_COOL_NODE_APP/index.js 
