var initSample = ( function() {
    var wysiwygareaAvailable = isWysiwygareaAvailable(),
        isBBCodeBuiltIn = !!CKEDITOR.plugins.get( 'bbcode' );

    return function() {
        var editorElement = CKEDITOR.document.getById( 'brief' );

        // Depending on the wysiwygare plugin availability initialize classic or inline editor.
        if ( wysiwygareaAvailable ) {
            CKEDITOR.replace( 'brief' );
        } else {
            editorElement.setAttribute( 'contenteditable', 'true' );
            CKEDITOR.inline( 'editor' );
        }
    };

    function isWysiwygareaAvailable() {
        // If in development mode, then the wysiwygarea must be available.
        // Split REV into two strings so builder does not replace it :D.
        if ( CKEDITOR.revision == ( '%RE' + 'V%' ) ) {
            return true;
        }

        return !!CKEDITOR.plugins.get( 'wysiwygarea' );
    }
} )();