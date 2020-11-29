function signup() {
    if (document.getElementById("first_name").value == "") {
        alert("First Name Field is Empty");
    }
    else if (document.getElementById("last_name").value == "") {
        alert("Last Name Field is Empty");
    }
    else if (document.getElementById("email").value == "") {
        alert("Email Field is Empty");
    }
    else if (document.getElementById("password").value == "") {
        alert("Password Field is empty");
    }
    else if (document.getElementById("password_confirm").value == "") {
        alert("Confirm Password Field is empty");
    }
    else if (document.getElementById("username").value == "") {
        alert("username Field is empty");
    }
    else {
        clientFirstName = document.getElementById("first_name").value
        clientLastName = document.getElementById("last_name").value
        gmail = document.getElementById("email").value
        password = document.getElementById("password").value
        confirmPassword = document.getElementById("password_confirm").value
        username = document.getElementById("username").value
        if (password == confirmPassword) {
            details = { clientFirstName, clientLastName, gmail, password, username }
            fetch('http://localhost:51758/api/signup',
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
        else {
            alert("Verify Password Again");
            document.getElementById("ConfirmPassword").value = ""
            document.getElementById("ConfirmPassword").focus();

        }
    }
}