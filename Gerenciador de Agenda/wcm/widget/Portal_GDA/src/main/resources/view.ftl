<div id="MyWidget_${instanceId}" class="super-widget wcm-widget-class fluig-style-guide" data-params="MyWidget.instance()">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="custom.css" rel="stylesheet" id="custom-css">
    <script src="custom.js"></script>
    <script type="text/javascript" src="/webdesk/vcXMLRPC.js"></script>
    <style>
    nav {
        block-size: fit-content;
        height: 100px;
    }

    /* Import Google font - Poppins */
    html {
        --main-color: #2F5597;
        --second-bg-color: #323946;
        --white: #fff;
        --cores: linear-gradient(90deg, rgba(238, 23, 91, 1) 31%, rgba(255, 157, 0, 1) 100%);
        font-size: 14px;
        font-family: "Andale Mono";
    }

    * {
        outline: none;
        box-sizing: border-box;
        margin: 0;
        outline: 0;
    }

    .panel-heading {
        font-size: 150%;
    }

    h11 {
        color: red;
    }

    .brief {
        display: flex;
        align-items: center;
        justify-content: center;
    }

    /*CODIGO DO TESTE*/
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
    }

    body {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 20px;
        background: rgb(238, 23, 91);
        background: url(https://www.totvs.com/wp-content/uploads/2020/08/banner-fluig-home.jpg);
        overflow-x: hidden; /* Hide horizontal scrollbar */
    }

    .container {
        position: relative;
        max-width: 1000px;
        width: 100%;
        background: #fff;
        padding: 25px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    }

    .container header {
        font-size: 1.5rem;
        color: #333;
        font-weight: 500;
        text-align: center;
    }

    .container .form {
        margin-top: 30px;
    }

    .form .input-box {
        width: 100%;
        margin-top: 20px;
    }

    .input-box label {
        color: #333;
    }

    .form :where(.input-box input, .select-box) {
        position: relative;
        height: 50px;
        width: 100%;
        outline: none;
        font-size: 1rem;
        border-radius: 6px;
        padding: 0 0;
    }

    .input-box input:focus {
        box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
    }
	
    .form .column {
        display: flex;
        column-gap: 15px;
    }

    .form .mod-box {
        margin-top: 20px;
    }

    .mod-box h3 {
        color: #333;
        font-size: 1rem;
        font-weight: 400;
        margin-bottom: 8px;
    }

    .form :where(.mod-option, .mod) {
        display: flex;
        align-items: center;
        column-gap: 50px;
        flex-wrap: wrap;
    }

    .form .mod {
        column-gap: 5px;
    }

    .mod input {
        accent-color: #FB0058;
    }

    .form :where(.mod input, .mod label) {
        cursor: pointer;
    }

    .mod label {
        color: #707070;
    }

    .select-box select {
        height: 100%;
        width: 100%;
        outline: none;
        border: none;
        font-size: 1rem;
    }

    .enviar {
        height: 55px;
        width: 100%;
        color: #fff;
        font-size: 1rem;
        font-weight: 400;
        margin-top: 30px;
        border: none;
        cursor: pointer;
        transition: all 0.2s ease;
        background: #FB0058;
    }

    .enviar:hover {
        background: #D5004B;
    }

    .agoravaimano {
        height: fit-content;
        width: fit-content;
        color: #fff;
        font-size: 1rem;
        font-weight: 400;
        margin-top: 55px;
        border: none;
        cursor: pointer;
        transition: all 0.2s ease;
    }

    .lupa:hover {
        background: #D5004B;
    }

    /*Responsive*/
    @media screen and (max-width: 500px) {
        .form .column {
            flex-wrap: wrap;
        }

        .form :where(.mod-option, .mod) {
            row-gap: 15px;
        }
    }

    .cadastro,
    .clienteProspect {
        display: flex;
        box-sizing: border-box;
    }

    .clienteProspect {
        margin: 20px;
        margin-bottom: 20px;
    }

    .logo {
        position: fixed;
    }

    .container-home {
        position: relative;
        padding: 25px;
    }

    .meio {
        position: relative;
        max-width: 1000px;
        width: 100%;
        background: #fff;
        padding: 25px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    }

    .imagem {
        height: 850px;
        width: 1920px;
    }

    .memeio {
        display: grid;
        grid-template-columns: 1fr;
        text-align: center;
    }
    </style>

    <body id="body">
        <div class="conteudoHome" id="conteudoHome">
            <div class="container-home" style="width: 1400px;">
                <header class="header" id="header">
                    <a href="https://www.totvs.com/fluig/"><img src="https://www.totvs.com/wp-content/themes/totvs-theme/dist/images/fluig/logo-fluig_954b415a.png" alt="Logo Totvs" style="height: 32px; width: 150px; position:absolute; margin-bottom:20px; margin-left:10px;" class="m-auto"></a>
                </header>
                <div class="row column" style="margin-top:20px; height: 100%; margin: 40px 10px;">
                    <div class="col-lg-8">
                        <h1 class="h1" >Com TOTVS Fluig, sua empresa<br>
                            <span class="text-yellow">unifica processos, pessoas e sistemas </span><br>
                            com uma interface <span class="text-yellow">fácil de usar e intuitiva</span>
                        </h1>
                        <div class="h3" >Mais de quatro mil clientes já usam as soluções do TOTVS Fluig<br>
                            <span class="text-yellow ">para impulsionar os seus negócios</span>
                        </div>
                    </div>
                </div>
                <div class="row column">
                	<div class="col-lg-4" style="text-align: center; align-itens: center;">
                        <a href="#" class="btn btn-primary btn-lg" onclick="formESN()" id="preencha" style="width: 150px">Preencha</a>
                    </div>
                </div>
            </div>
        </div>
        <div id="formularios">
            <div id="ESN" style="display: none">
                <form role="form" id="formulario">
                    <section class="container cadastro">
                        <img src="/resources/images/logo.png" alt="Logo Totvs" style="height: 32px; width: 150px; position:absolute;left:20px">
                        <header style="position:relative;">Solicitante</header>
                        <div class="form">
                            <div class="column">
                                <div class="input-box">
                                    <label><i class="fluigicon fluigicon-company icon-sm" aria-hidden="true"></i></i>
                                        Unidade</label>
                                    <div class="column">
                                        <div class="select-box">
                                            <select required="" id="unidade" name="unidade" class="form-control"
                                                style="height: 100%">
                                                <option hidden value="">Unidade</option>
                                                <option value="TSM" required="" id="tsm" name="tsm">TSM</option>
                                                <option value="TVALE" required="" id="tvale" name="tvale">TVALE</option>
                                                <option value="TSUL" required="" id="tsul" name="tsul">TSUL</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-align-left icon-sm" aria-hidden="true"></i>
                                        Segmento</label>
                                    <div class="column">
                                        <div class="select-box">
                                            <select required="" id="segmento" name="segmento" class="form-control"
                                                style="height: 100%">
                                                <option hidden value="">Selecione seu Segmento</option>
                                                <option value="Agro" required>Agro</option>
                                                <option value="Construção" required>Construção</option>
                                                <option value="Distribuição" required>Distribuição</option>
                                                <option value="Educacional" required>Educacional</option>
                                                <option value="Logística" required>Logística</option>
                                                <option value="Manufatura" required>Manufatura</option>
                                                <option value="Serviços" required>Serviços</option>
                                                <option value="Varejo" required>Varejo</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="agoravaimano" id="lupa">
                                    <button class="btn btn-primary lupa" type="button" onClick="BuscaInfo()" onClick="table()"><i class="flaticon flaticon-search icon-sm" aria-hidden="true"></i></button>
                                </div>
                            </div>
                            <div class="column" id="tabela">
                                <div class="input-box">
                                    <table class="table table-hover" id="tablesconder" name="tablesconder">
                                        <thead>
                                            <tr>
                                                <td><b><i class="flaticon flaticon-add-branch icon-xl" aria-hidden="true"></i>
                                                    </b></td>
                                                <td><b>Nome</b></td>
                                                <td><b>Email</b></td>
                                            </tr>
                                        </thead>
                                        <tbody id="tbDadosMIT"></tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="column">
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-card-user icon-sm" aria-hidden="true"></i> Nome</label>
                                    <input type="text" placeholder="Preenchimento Automático" required id="nome" name="nome" disabled />
                                </div>
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-email icon-sm" aria-hidden="true"></i>
                                        E-mail</label>
                                    <input type="text" placeholder="Preenchimento Automático" required id="email" name="email" disabled />
                                </div>
                                <div class="mod-box">
                                    <label style="font-weight: bold;"><i class="flaticon flaticon-group-config icon-sm" aria-hidden="true"></i>
                                        Modalidade</label>
                                    <div class="mod-option">
                                        <div class="mod">
                                            <input type="radio" id="mod" name="mod" required value="presencial" />
                                            <label for="presencial" style="pointer-events: none; ">Presencial</label>
                                        </div>
                                        <div class="mod">
                                            <input type="radio" id="mod" name="mod" required value="online" />
                                            <label for="online" style="pointer-events: none;">Online</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="column" id="botaoClient">
                                <div class="input-box" style="display: flex; justify-content: center; align-items: center">
                                    <div class="agoravaimano">
                                        <button class="btn btn-primary" type="button" onclick="mostraProspect()">Client</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="container clienteProspect" style="display: none" id="clienteProspect">
                        <header>Cliente/Prospect</header>
                        <div class="form">
                            <div class="column">
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-email icon-sm" aria-hidden="true"></i> Email: </label>
                                    <input type="text" placeholder="Seu nome aqui" id="emailClient" name="emailClient" placeholder="email@email.com"
                                        type="text" pattern="[a-z0-9._%+-]
+@[a-z0-9.-]
+\.[a-z]
{2,4}$" required="" />
                                </div>
                                <div class="input-box">
                                    <label><i class="fluigicon fluigicon-search-test icon-sm" aria-hidden="true"></i> CNPJ: </label>
                                    <input id="cnpj" name="cnpj" placeholder="00.000.000/0000-00" required=""
                                        type="text" maxlength="18" pattern="\[0-9]
{2}\ [0-9]
{4,6}-[0-9]
{3,4}$"
                                        OnKeyPress="formatar('##.###.###/####-##', this)" />
                                </div>
                            </div>
                            <div class="column">
                                <div class="input-box">
                                    <label><i class="fluigicon fluigicon-group-school-note icon-sm" aria-hidden="true"></i> Cargo: </label>
                                    <input id="cargo" name="cargo" placeholder="Ex: Executivo" type="text"
                                        required />
                                </div>
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-contact-phone icon-sm" aria-hidden="true"></i> WhatsApp: </label>
                                    <input id="wpp" name="wpp" placeholder="XX XXXXX-XXXX" required=""
                                        type="text" maxlength="13" pattern="\[0-9]
{2}\ [0-9]
{4,6}-[0-9]
{3,4}$"
                                        OnKeyPress="formatar('## #####-####', this)" />
                                </div>
                            </div>
                            <div class="column">
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-assignment-ind icon-sm" aria-hidden="true"></i> Razão Social: </label>
                                    <input id="razao" name="razao" type="text" required="" placeholder="Ex: Totvs" />
                                </div>
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-supervisor-account icon-sm" aria-hidden="true"></i> Pessoa de Contato:</label>
                                    <input id="contato" name="contato" type="text" required="" placeholder="Ex: Dennis" />
                                </div>
                            </div>
                            <div class="column">
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-assignment icon-sm" aria-hidden="true"></i> Briefing</label>
                                    <textarea class="form-control no-resize" name="briefing" id="briefing" rows="8" maxlength="4000"
                                        required=""></textarea>
                                </div>
                            </div>
                            <button type="button" class="enviar" onClick="criaRegistro()" onClick="mensagemRegistro()" style="font-size:1rem; font-family: sans serif; height: 55px;
    width: 98%;
    color: #fff;
    font-size: 1rem;
    font-weight: 400;
    margin-top: 30px;
    border: none;
    cursor: pointer;
    transition: all 0.2s ease;
    background: #FB0058;">Enviar</button>
                        </div>
                    </section>
                </form>
                <div class="sucesso" id="sucesso">
                    <div class="meio">
                        <div class="memeio">
                            <h1>Sua solicitação foi iniciada com sucesso!</h1><br>
                            <h2>Aqui esta um resumo da sua solicitação</h2><br>
                        </div>
                        <div><br>
                            <ul class="solicit" id="solicit">
                            </ul>
                            <button type="button" class="btn btn-default" ><a href="http://192.168.2.11:8080" style="text-decoration: none;">Voltar para o menu</a></button>
                        </div>
                    </div>
                </div>
                <script>
                function formESN() {
                    var conteudo = document.getElementById("conteudoHome");
                    var formESN = document.getElementById("ESN");
                    if (formESN.style.display === "none") {
                        formESN.style.display = "block";
                        conteudo.style.display = "none";
                        document.getElementById("body").style = "background: linear-gradient(90deg, rgba(238, 23, 91, 1) 31%, rgba(255, 157, 0, 1) 100%)";
                    } else {
                        formESN.style.display = "none";
                        conteudo.style.display = "block";
                    }
                }
                $("clienteProspect").hide();

                function formatar(mascara, documento) {
                    var i = documento.value.length;
                    var saida = mascara.substring(0, 1);
                    var texto = mascara.substring(i);
                    if (texto.substring(0, 1) != saida) {
                        documento.value += texto.substring(0, 1);
                    }
                }

                function mostraTabela() {
                    var tab = document.getElementById("tabela");
                    if (tab.style.display === "none") {
                        tab.style.display = "block";
                    } else {
                        tab.style.display = "none";
                    }
                }

                function mostraProspect() {
                    var tab = document.getElementById("clienteProspect");
                    var botaoClient = document.getElementById("botaoClient");
                    var inputUnidade = document.getElementById("unidade");
                    var inputSegmento = document.getElementById("segmento");
                    var botaoLupa = document.getElementById("lupa");
                    if (tab.style.display === "none") {
                        tab.style.display = "block";
                        botaoClient.style.display = "none";
                        inputUnidade.disabled = true;
                        inputSegmento.disabled = true;
                        botaoLupa.style.display = "none";
                    } else {
                        tab.style.display = "none";
                        botaoClient.style.display = "block";
                    }
                }

                function colorChange() {
                    document.body.style.backgroundColor = "#AA0000";
                }
                $("#tablesconder").hide();
                $("#sucesso").hide();

                function formatar(mascara, documento) {
                    var i = documento.value.length;
                    var saida = mascara.substring(0, 1);
                    var texto = mascara.substring(i);
                    if (texto.substring(0, 1) != saida) {
                        documento.value += texto.substring(0, 1);
                    }
                }
                </script>
    </body>
</div>