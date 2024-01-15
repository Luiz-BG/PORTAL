var MyWidget = SuperWidget.extend({

    //método iniciado quando a widget é carregada
    init: function () {

    },

    //BIND de eventos
    bindings: {
        local: {
            'show-message': ['click_showMessage']
        },
        global: {}
    },
    showMessage: function () {


    }




});

function criaRegistro() {
    var _xml;
    var nome = $("#nome").val();
    var email = $("#email").val();
    var unidade = $("#unidade").val();
    var modalidade = $("#mod").val();
    var segmento = $("#segmento").val();
    var emailcliente = $("#emailClient").val();
    var cnpj = $("#cnpj").val();
    var cargo = $("#cargo").val();
    var wpp = $("#wpp").val();
    var razao = $("#razao").val();
    var contato = $("#contato").val();
    var briefing = $("#briefing").val();
    console.log("Aqui!")

    $.ajax({
        url: '/FormESN/resources/js/xml/ECMWorkflowEngineService_simpleStartProcess1.xml',
        async: false,
        type: "GET",
        dataType: "xml",
        success: function (xml) {
            _xml = $(xml)
        }
    });
    if (nome === "") {
        alert("O campo 'Nome' é obrigatório. Preencha antes de enviar.");
    } else if (email === "") {
        alert("O campo 'E-mail' é obrigatório. Preencha antes de enviar.");
    } else if (unidade === "") {
        alert("O campo 'Unidade' é obrigatório. Preencha antes de enviar.");
    } else if (modalidade === "") {
        alert("O campo 'Modalidade' é obrigatório. Preencha antes de enviar.");
    } else if (segmento === "") {
        alert("O campo 'Segmento' é obrigatório. Preencha antes de enviar.");
    } else if (emailcliente === "") {
        alert("O campo 'E-mail Cliente' é obrigatório. Preencha antes de enviar.");
    } else if (cnpj === "") {
        alert("O campo 'CNPJ' é obrigatório. Preencha antes de enviar.");
    } else if (cargo === "") {
        alert("O campo 'Cargo' é obrigatório. Preencha antes de enviar.");
    } else if (wpp === "") {
        alert("O campo 'Número de WhatsApp' é obrigatório. Preencha antes de enviar.");
    } else if (razao === "") {
        alert("O campo 'Razão Social' é obrigatório. Preencha antes de enviar.");
    } else if (contato === "") {
        alert("O campo 'Pessoa de Contato' é obrigatório. Preencha antes de enviar.");
    } else if (briefing === "") {
        alert("O campo 'Briefing' é obrigatório. Preencha antes de enviar.");
    } else {

        

        _xml.find("username").text("matheus.alves");
        _xml.find("password").text("abc123");
        _xml.find("processId").text("Processo_Inicio_Agenda");
        _xml.find("[name=nome]").text(nome);
        _xml.find("[name=email]").text(email);
        _xml.find("[name=unidade]").text(unidade);
        _xml.find("[name=modalidade]").text(modalidade);
        _xml.find("[name=segmento]").text(segmento);
        _xml.find("[name=emailcliente]").text(emailcliente);
        _xml.find("[name=cnpj]").text(cnpj);
        _xml.find("[name=cargo]").text(cargo);
        _xml.find("[name=wpp]").text(wpp);
        _xml.find("[name=razao]").text(razao);
        _xml.find("[name=contato]").text(contato);
        _xml.find("[name=briefing]").text(briefing);

        console.log(_xml)
        WCMAPI.Create({
            url: "/webdesk/ECMWorkflowEngineService?wsdl",
            contentType: "text/xml",
            dataType: "xml",
            data: _xml[0],
            success: function (data) {
                $("#sucesso").show();
                $("#formulario").hide();
                var c1 = DatasetFactory.createConstraint("nome", nome, nome, ConstraintType.MUST);
                var c2 = DatasetFactory.createConstraint("segmentos", unidade, unidade, ConstraintType.MUST);
                var c3 = DatasetFactory.createConstraint("modalidade", modalidade, modalidade, ConstraintType.MUST);
                var c4 = DatasetFactory.createConstraint("briefing", briefing, briefing, ConstraintType.MUST);
                var c5 = DatasetFactory.createConstraint("razao", razao, razao, ConstraintType.MUST);
                var c6 = DatasetFactory.createConstraint("contato", contato, contato, ConstraintType.MUST);
                sucesso();

                var ctt = new Array(c1, c2, c3, c4, c5, c6)
                DatasetFactory.getDataset("dsEnvioEmailESN", null, ctt, null);
                FLUIGC.toast({
                    title: 'Processo Iniciado!',
                    message: 'Continue o processo',
                    type: 'success'
                });
            },
            error: function(){
                FLUIGC.toast({
                    title: 'Aconteceu Algo de errado!',
                    message: 'Tente novamente, ou comunique o suporte!',
                    type: 'danger'
                });
            }
        });
    }
}

function BuscaInfo() {
    var unidade = $("#unidade").val();
    var segmento = $("#segmento").val();
    var html;

    var c1 = DatasetFactory.createConstraint("SEG", segmento, segmento, ConstraintType.MUST);
    var c2 = DatasetFactory.createConstraint("UNIDADE", unidade, unidade, ConstraintType.MUST);
    var constraints = new Array(c1, c2);
    DatasetFactory.getDataset("dsFILTROESN", null, constraints, null, {
        success: function (dsReturned) {
            var rcControleMits = dsReturned.values;
            if (rcControleMits.length > 1) {
                $("#tablesconder").show();
                for (var i = 0; i < rcControleMits.length; i++) {

                    html += '<tr>' +
                        '<td>' +
                        '<div class="btn-group">' +
                        '<button type="button" value="' + i + '" id="btadd___' + i + '" class="btn btn-link" onClick="Selecao(this.value)">' + '<i class="fluigicon fluigicon-plus icon-md" aria-hidden="true"></i>' +
                        '</button>' + '</div>' + '</td>' +
                        '<td>' + rcControleMits[i]['NOME'] + '</td>' +
                        '<td>' + rcControleMits[i]['EMAIL'] + '</td>' +
                        '</tr>';
                }
                document.getElementById("tbDadosMIT").innerHTML = html;
            } else {
                Selecao(0);
            }

        }
        ,
        error: function (jqXHR, textStatus, errorThrown) {
        }


    })
}

function Selecao(campo) {
    var unidade = $("#unidade").val();
    var segmento = $("#segmento").val();
    var c1 = DatasetFactory.createConstraint("SEG", segmento, segmento, ConstraintType.MUST);
    var c2 = DatasetFactory.createConstraint("UNIDADE", unidade, unidade, ConstraintType.MUST);
    var constraints = new Array(c1, c2);
    var ds = DatasetFactory.getDataset("dsFILTROESN", null, constraints, null);

    
    if(ds.values <1){
        FLUIGC.toast({
            title: 'Esse usuario nao esta cadastrado!',
            message: 'Tente novamente, ou comunique o suporte!',
            type: 'danger'
        });
    }else{
    	var nome = ds.values[campo].NOME;
        var email = ds.values[campo].EMAIL;
    document.getElementById("nome").value = nome;
    document.getElementById("email").value = email;
    $("#tablesconder").hide();
    }
}

function sucesso(){
    var html;
    var nome = $("#nome").val();
    var email = $("#email").val();
    var unidade = $("#unidade").val();
    var modalidade = $("#mod").val();
    var segmento = $("#segmento").val();
    var emailcliente = $("#emailClient").val();
    var cnpj = $("#cnpj").val();
    var cargo = $("#cargo").val();
    var wpp = $("#wpp").val();
    var razao = $("#razao").val();
    var contato = $("#contato").val();
    var briefing = $("#briefing").val();

    html += '<h3>Informações</h3>' +
    '<li>Executivo selecionado: '+nome+'</li>'+
    '<li>Unidade selecionada: '+unidade+'</li>'+
    '<li>Segmento selecionada: '+segmento+'</li>'+
    '</ul>'+
    '<h3>Client/Prospect</h3>'+
    '<ul>'+
    '<li>Razão Social: '+razao+'</li>'+
    '<li>Pessoa Contato: '+contato+'</li>'+
    '<li>Briefing: '+briefing+'</li>'
                
    document.getElementById("solicit").innerHTML = html;

}