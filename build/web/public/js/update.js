/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function actualizar() {
            var isbn = document.getElementsByName("isbn")[0].value.toString();            
            var titulo = document.getElementsByName("titulo")[0].value;
            var autor = document.getElementsByName("autor")[0].value;
            var editorial = document.getElementsByName("editorial")[0].value;
            console.log(isbn);
            location.href="update.jsp?isbn="+isbn+"&titulo="+titulo+"&autor="+autor+"&editorial="+editorial;
        }
