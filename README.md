# crt.sh
Without using  JSON processor(jq) we can extract subdomains from crt.sh  by using this bash script.

# Setup:
git clone https://github.com/sekharlee/crt_shell.git	   

cd crt_shell   
chmod +x crt.sh			
				
# Usage: 			
./crt.sh domain.name

# Output
./crt.sh  domian.name > output.txt


