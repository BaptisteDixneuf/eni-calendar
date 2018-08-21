function collapseBloc(selector, buttonid) {
    if ($(selector).hasClass('hide')) {
        deplierBloc(selector, buttonid);
    }
    else {
        plierBloc(selector, buttonid);
    }
    return false;
}

function plierBloc(selector, buttonid) {
    $(selector).addClass('hide');
    $(buttonid).html('<i class="fa fa-plus-square boutonDeplierGUI" aria-hidden="true"></i>');
}

function deplierBloc(selector, buttonid) {
    $(selector).removeClass('hide');
    $(selector).collapse('show');
    $(buttonid).html('<i class="fa fa-minus-square boutonPlierGUI" aria-hidden="true"></i>');
}