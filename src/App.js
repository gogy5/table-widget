import React, {useEffect, useState} from 'react'

import data from "./DB/tableData";

import Table from "./Table/Table";
import Filter from "./Filter/Filter";
import Pagination from "./shared/Pagination/Pagination";
import axios from "axios";

function App() {

    const [appData, setAppData] = useState([]);

    const [sortOrder, setSortOrder] = useState(null);
    const [filterQuery, setFilterQuery] = useState(null);
    const [currentPage, setCurrentPage] = useState(1);
    // const [loading, setLoading] = useState();

    useEffect(()=> {
        const getItems = async () => {
            // setLoading(true);
            const res = await axios.get('api/item');
            setAppData(res.data);
            // setLoading(false);
        }
        getItems();
    }, []);

    function sortData(data) {
        if(sortOrder) {
            return Array.from(data).sort((prev, next) => {
                //Направление сортировки
                let first = prev;
                let second = next;
                if (!sortOrder.ascending) {
                    first = next;
                    second = prev;
                }
                if (sortOrder.field === 'name') {
                    return first[sortOrder.field].localeCompare(second[sortOrder.field]);
                } else {
                    return first[sortOrder.field] - second[sortOrder.field];
                }
            });
        } else {
            return data;
        }

    }

    function filterData(data) {
        if(filterQuery) {
            return data.filter(row => {
                let match = null;
                const value = row[filterQuery.field];
                const filterText = filterQuery.text;
                switch (typeof value) {
                    case "number":
                        switch (filterQuery.type) {
                            case 'equal':
                                match = value === +filterText;
                                break;
                            case 'more':
                                match = value > +filterText;
                                break;
                            case 'less':
                                match = value < +filterText;
                                break;
                            default:
                                match = false;
                        }
                        break;
                    case "string":
                        switch (filterQuery.type) {
                            case 'equal':
                                match = value.toLowerCase() === filterText.toLowerCase();
                                break;
                            case 'include':
                                match = value.toLowerCase().includes(filterText.toLowerCase());
                                break;
                            default:
                                match = false;
                        }
                        break;
                }

                return match
            });
        } else {
            return(data);
        }

    }

    const itemPerPage = 10;
    function paginateData(data) {
        const end = itemPerPage * currentPage;
        const start = end - itemPerPage;
        return(data.slice(start, end));
    }

    return (
        <div className='container'>
            <Filter setFilterQuery={setFilterQuery}/>
            <Table
                data={paginateData(sortData(filterData(appData)))}
                setSortOrder={setSortOrder}
            />
            <Pagination itemPerPage={itemPerPage} totalItems={appData.length} setCurrentPage={setCurrentPage} />.
        </div>
    )
}

export default App
