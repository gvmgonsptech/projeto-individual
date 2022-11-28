// sessão
function validarSessao() {
    // aguardar();

    var username = sessionStorage.NAME_USER;
    var idUser = sessionStorage.ID_USER;
    var element = sessionStorage.ELEMENT_USER

    var showUsername = document.getElementById("showUsername");

    if (username != null && idUser != null && element != null) {
        // window.alert(`Seja bem-vindo, ${nome}!`);
        showUsername = username;

        // finalizarAguardar();
    } else {
        window.location = "../login.html";
    }
}

function validarSessaoComunidade() {
    // aguardar();

    var username = sessionStorage.NAME_USER;
    var idUser = sessionStorage.ID_USER;
    var element = sessionStorage.ELEMENT_USER

    var showUsername = document.getElementById("showUsername");

    if (username != null && idUser != null && element != null) {
        window.location = "../comunidade.html";
    } else {
    }
}

function limparSessao() {
    // aguardar();
    sessionStorage.clear();
    // finalizarAguardar();
    window.location = "../login.html";
}

// carregamento (loading)
function aguardarRegister() {
    var divAguardar = document.getElementById("loadingRegister");
    divAguardar.style.display = "flex";
}

function aguardarLogin() {
    var divAguardar = document.getElementById("loadingLogin");
    divAguardar.style.display = "flex";
}

function finalizarAguardarRegister() {
    var divAguardar = document.getElementById("loadingRegister");
    divAguardar.style.display = "none";
}

function finalizarAguardarLogin() {
    var divAguardar = document.getElementById("loadingLogin");
    divAguardar.style.display = "none";
}


// modal
function mostrarModal() {
    var divModal = document.getElementById("div_modal");
    divModal.style.display = "flex";
}

function fecharModal() {
    var divModal = document.getElementById("div_modal");
    divModal.style.display = "none";
}

