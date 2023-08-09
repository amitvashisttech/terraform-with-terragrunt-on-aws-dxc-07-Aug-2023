resource "aws_eip" "lb" {
    vpc = true 
}

resource "aws_eip_association" "ass_eip" {
    allocation_id = aws_eip.lb.id
    instance_id   = aws_instance.front[0].id
}