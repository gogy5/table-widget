import React, {useState} from 'react';
import './table.css';

function Table({data, setSortOrder}) {
    let date = null;
    const [sortAscending, setSortAscending] = useState(true);

    function sortTableHandler(e) {
        e.stopPropagation();
        const sortOrder = {}
        switch (e.target.innerHTML) {
            case 'Название':
                sortOrder.field = 'name';
                break;
            case 'Количество':
                sortOrder.field = 'amount';
                break;
            case 'Расстояние':
                sortOrder.field = 'distance';
                break;
            default:
        }
        sortOrder.ascending = sortAscending;
        setSortOrder(sortOrder);

        // Изменение направления сортировки
        setSortAscending(!sortAscending);
    }

    return (
        <table className='striped'>
            <thead>
            <tr onClick={sortTableHandler}>
                <th>Дата</th>
                <th>Название</th>
                <th>Количество</th>
                <th>Расстояние</th>
            </tr>
            </thead>

            <tbody>
            {
                data.map((row) => {
                    date = Intl.DateTimeFormat('es-ES', {
                        day: '2-digit',
                        month: '2-digit',
                        year: 'numeric'
                    }).format(Date.parse(row.date));
                    return (
                        <tr key={row.id}>
                            <td>{date}</td>
                            <td>{row.name}</td>
                            <td>{row.amount}</td>
                            <td>{row.distance}</td>
                        </tr>
                    )
                })
            }
            </tbody>
        </table>
    )
}

export default Table;
