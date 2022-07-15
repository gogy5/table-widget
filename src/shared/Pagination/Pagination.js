import React, {useState} from 'react';
import './pagination.css';

function Pagination( { itemPerPage, totalItems, setCurrentPage } ) {

    const [activePage, setActivePage] = useState(1);

    const pageNumbers = [];
    const buttonNumber = Math.ceil(totalItems / itemPerPage);

    for(let i = 1; i <= buttonNumber; i++){
        pageNumbers.push(i);
    }

    function selectActivePage(pageNumber) {
        setActivePage(pageNumber);
        setCurrentPage(pageNumber);
    }


    return (
        <div className="pagination-container">
            <ul className="pagination">
                {pageNumbers.map( pageNumber => {
                    return (
                        <li className={"waves-effect pagination-item" + ((activePage === pageNumber) ? " active teal lighten-2" : "")} key={pageNumber}>
                            <a href="#!" onClick={() => selectActivePage(pageNumber)}>{pageNumber}</a>
                        </li>
                    )
                })}
            </ul>
        </div>
    )
}

export default  Pagination;

