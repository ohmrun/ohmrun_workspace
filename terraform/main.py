#!/usr/bin/env python
from constructs import Construct
from cdktf import App, TerraformStack, LocalProvider

class MyStack(TerraformStack):
    def __init__(self, scope: Construct, id: str):
        super().__init__(scope, id)
        # define resources here
        provider = LocalProvider(self,"local",{})


app = App()
MyStack(app, "terraform")

app.synth()
