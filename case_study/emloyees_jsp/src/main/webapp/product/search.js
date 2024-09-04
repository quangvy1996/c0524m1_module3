function searchByDate() {
    // Get the date input value
    const searchDate = document.getElementById('searchDate').value;
    const orderTable = document.getElementById('orderTable');
    const rows = orderTable.getElementsByTagName('tr');

    // Loop through all table rows, and hide those who don't match the search query
    for (let i = 0; i < rows.length; i++) {
        const td = rows[i].getElementsByTagName('td')[3];
        if (td) {
            const orderDate = td.textContent || td.innerText;
            if (orderDate === searchDate || searchDate === '') {
                rows[i].style.display = '';
            } else {
                rows[i].style.display = 'none';
            }
        }
    }
}