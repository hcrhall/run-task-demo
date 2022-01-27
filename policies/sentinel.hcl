policy "limit-aws-instance-hourly-cost" {  
    source = "./policies/limit-aws-instance-hourly-cost.sentinel"  
    enforcement_level = "hard-mandatory"
}

policy "limit-aws-instance-iops-cost" {  
    source = "./policies/limit-aws-instance-iops-cost.sentinel"  
    enforcement_level = "hard-mandatory"
}

policy "limit-total-monthly-cost" {  
    source = "./policies/limit-total-monthly-cost.sentinel"  
    enforcement_level = "hard-mandatory"
}
