//GUARDA TODAS LAS PREGUNTAS
function Registrar_Seguimiento() {
    // $('#resu').html("<center> <img src='iconos/cargando.gif' width='30' height='30' ></center>");
    //
    alert('registrando');
    var tdCabeza = ' <th>Name</th>';
    tdCabeza += ' <th>Position</th>';
    tdCabeza += ' <th>Office</th>';
    tdCabeza += ' <th>Age</th>';
    tdCabeza += ' <th>Start date</th>';
    tdCabeza += ' <th>Salary</th>';
    $('#td').html(tdCabeza);
    var htmTr = ' <tr>';
    htmTr += ' <td>Tiger Nixon</td>';
    htmTr += ' <td>System Architect</td>';
    htmTr += ' <td>Edinburgh</td>';
    htmTr += '  <td>61</td>';
    htmTr += '  <td>2011/04/25</td>';
    htmTr += '<td>$320,800</td>';
    htmTr += '</tr>';
    htmTr += ' <tr>';
    htmTr += ' <td>Garrett Winters</td>';
    htmTr += '<td>Accountant</td>';
    htmTr += '  <td>Tokyo</td>';
    htmTr += '  <td>63</td>';
    htmTr += ' <td>2011/07/25</td>';
    htmTr += '  <td>$170,750</td>';
    htmTr += '  </tr>';
    htmTr += '     <tr>';
    htmTr += ' <td>Ashton Cox</td>';
    htmTr += '  <td>Junior Technical Author</td>';
    htmTr += ' <td>San Francisco</td>';
    htmTr += ' <td>66</td>';
    htmTr += ' <td>2009/01/12</td>';
    htmTr += '   <td>$86,000</td>';
    htmTr += ' </tr> ';
    $('#tr').html(htmTr);
}