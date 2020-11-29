function Login() {
    if (document.getElementById("username").value == "") {
        alert("username Field is Empty");
    }
    else if (document.getElementById("password").value == "") {
        alert("Password Field is Empty");
    }
    else {
        username = document.getElementById("username").value
        password = document.getElementById("password").value
        details = { username, password }
        fetch('http://localhost:51758/api/Login',
            {
                method: "POST",
                body: JSON.stringify(details),
                headers: {
                    "Content-Type": "application/json"
                }
            })
            .then(response => response.json())
            .then(data => {
                alert(data);
            });
    }
}