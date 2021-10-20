/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import {insertar} from './insert';

function select(){
            if(document.getElementsByName("Action")[0].checked){
                return "a";
            }
            if(document.getElementsByName("Action")[1].checked){
                return document.getElementsByName("Action")[1].value;                
            }
            if(document.getElementsByName("Action")[2].checked){
                return insertar;                
            }
        }

