import React, {useState} from 'react';
import './filter.css'

function Filter({setFilterQuery}) {

    const [field, setField] = useState('name');
    const [types, setTypes] = useState(['include', 'equal'])
    const [type, setType] = useState(types[0]);
    const [text, setText] = useState('');

    const typesName = {
        include: "Содержит",
        equal: "Равно",
        more: "Больше",
        less: "Меньше",
    }

    function applyFilter() {
        const filterQuery = {
            field: field,
            type: type,
            text: text,
            reset: false,
        }
        setFilterQuery(filterQuery);
    }

    function resetFilter() {
        setField('name');
        setType('include');
        setText('');
        setFilterQuery(null);
    }

    function changeFieldHandler(field) {
        switch (field) {
            case 'name':
                setTypes(['include', 'equal']);
                break;
            case 'amount':
            case 'distance':
                setTypes(['equal', 'more', 'less']);
                break;
        }
        setField(field);
    }

    function changeTextHandler(text) {

        setText(text);
    }

    return (
        <div className="filter">
            <label className="filter-label">Фильтр</label>
            <div className="filter-inputs">
                <div className="filter-inputs-field">
                    <label htmlFor="column" className="filter-inputs-label">Колонка</label>
                    <select className="browser-default filter-inputs-select-column" name="column" value={field}
                            onChange={(e) => changeFieldHandler(e.target.value)}>
                        <option value="name">Название</option>
                        <option value="amount">Количество</option>
                        <option value="distance">Расстояние</option>
                    </select>
                </div>
                <div className="filter-inputs-type">
                    <label htmlFor="type" className="filter-inputs-label">Условие</label>
                    <select className="browser-default filter-inputs-select-type"
                            name="type"
                            value={type}
                            onChange={(e) => setType(e.target.value)}>
                        {
                            types.map((curType) => {
                                return (
                                    <option value={curType} key={curType}>{typesName[curType]}</option>
                                )

                            })
                        }
                    </select>
                </div>
                <div className="filter-inputs-text">
                    <label htmlFor="text" className="filter-inputs-label">Значение</label>
                    <input placeholder="Введите значиние.." id="first_name" type="text" className="validate"
                           name="text"
                           value={text}
                           onChange={(e) => changeTextHandler(e.target.value)}
                           onKeyPress={e => {
                               if (e.key === 'Enter') applyFilter()
                           }}
                    />
                </div>
                <div className="filter-buttons">
                    <button className="btn waves-effect waves-light" onClick={applyFilter}>Применить</button>
                    <button className="btn waves-effect waves-light" onClick={resetFilter}>Сбросить</button>
                </div>
            </div>

        </div>
    )
}

export default Filter;
