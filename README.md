# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)


# LWC Topic 

## lightning card
## toast event
## hide/show component
## Decorators
## Imperative Method
## if else/ and for each loop
## call child from parent comp


## Track Decorator

@track
this is reactive in nature jb be salesforce me data change hota hai to ye automaticaly data lwc component me bi update ho jata hai, for example age aapne koi data table banaya hai and aap lwc pe data show krre hai and kis ne data/ rec delete kia to yahape bi without referesh deleted data show ni hoga.


## Wire Decorator
 
@wire
wire reactive nature hota hai means jb bi salesfoce org ke data me update hota hai to uski value automatically update ho ke LWC me aajati hai jiski property wire decorator se use ki hogi.

@AuraEnabled(cacheable=true) without mention this you can not connect class to lwc, in imperative method we can not need to use cacheable=true.


To read salesforce data, Lwc use a reactive wire service. When the wire service provisins data, the component re-renders

Componenet use @wire in their JavaScript class to specify a wire adaptor or an Apex method.

    @wire(listOfAccount)
    wiredAccountList({data, error}) {
        if (data) {
            this.data = data;   
        } else {
            console.log("Error Occured");
        }
    }


## Imperative Method
it is not nessasary to use (cacheable = true) in apex with @AauraEnabled
To control When the method invocatoin occurs(for example, on response to clicking a button), call te method imperatively.

jb hm imperative method call krte hai to it will return promisse to data ya error me store hota hai.

        getPizzaList()
        .then(result => {
            this.data = result;
        })
        .catch(error => {
            console.log("error Occured");
        });
