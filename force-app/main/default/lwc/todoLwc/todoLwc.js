import { LightningElement, api , track} from 'lwc';
import getTodoList from '@salesforce/apex/TodoController.getTodoList'
import insertTodolist from '@salesforce/apex/TodoController.insertTodolist'

export default class TodoLwc extends LightningElement {
   @track todoList = [];
    task;
    connectedCallback(){
        this.getRecord();
        // console.log(todoList);
    }

    getRecord(){
        getTodoList()
            .then(result => {
                this.todoList = result;
                console.log(result);
            })
            .catch(error => {
                console.log('Error in getRecord : '+error);
            })
    }


   
    handleOnChange(event){
        console.log('>>> handleOnChange',event.target.value);
        this.task = event.target.value;
    }

    handleOnClick(){
        console.log('>>> input');
        console.log('todo >> list >> ',this.todoList);
        if(this.task){
            console.log('>>> text',this.task);
            this.insertTodolist1();
            setTimeout(getRecord(), 2000);
        }

    }



    insertTodolist1(){
        console.log("this.task >>> "+this.task);
        insertTodolist({text : this.task })
            .then(result => {
                console.log('result >>> '+result);
            })
            .catch(error => {
                console.log('Error in getRecord : '+JSON.stringify(error));
            })
    }
}