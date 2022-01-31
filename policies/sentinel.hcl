module "eval" {
    source = "https://github.com/hcrhall/terraform-foundational-policies-library/raw/master/modules/eval/eval.sentinel"
}

policy "limit-aws-instance-hourly-cost" {  
    source = "./policies/limit-aws-instance-hourly-cost.sentinel"  
    enforcement_level = "advisory"
}

policy "limit-total-monthly-cost" {  
    source = "./policies/limit-total-monthly-cost.sentinel"  
    enforcement_level = "advisory"
}
