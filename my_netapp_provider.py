import subprocess
import json

def get_aws_instance(instance_id):
    command = ["terraform", "show", "-json"]
    output = subprocess.check_output(command)

    data = json.loads(output)

    instances = data["values"]["aws_instance"]

    for instance in instances:
        if instance["id"] == instance_id:
            return instance

    return None
