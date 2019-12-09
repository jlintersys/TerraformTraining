
plan: init
	terraform plan

apply: init
	terraform apply

destroy: 
	terraform destroy

init:
	terraform init

update-graph: init
	terraform graph | dot -Tpng > graph.png
	git add graph.png
	git commit -m "Updating graph" 

output:
	terraform output pubip