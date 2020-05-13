/**
 * @license Copyright (c) 2003-2019, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here.
	// For complete reference see:
	// https://ckeditor.com/docs/ckeditor4/latest/api/CKEDITOR_config.html

	// The toolbar groups arrangement, optimized for two toolbar rows.
	config.toolbarGroups = [
		{ name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
		{ name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
		{ name: 'links' },
		{ name: 'insert' },
		{ name: 'forms' },
		{ name: 'tools' },
		{ name: 'document',	   groups: [ 'mode', 'document', 'doctools' ] },
		{ name: 'others' },
		{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
		{ name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ] },
		{ name: 'styles' },
		{ name: 'colors' }
	];

	// Remove some buttons provided by the standard plugins, which are
	// not needed in the Standard(s) toolbar.
	config.enterMode = CKEDITOR.ENTER_BR;
	config.uiColor = '#FFFFFF';
	config.contentsCss=['/plugin/ckeditor/contents.css?t=K24B','/css/common.css'];
	config.removePlugins = 'iframe';
	config.extraAllowedContent='iframe[*]';
	config.removeButtons = 'Underline,Subscript,Superscript';
	config.font_names = 'Nunito; S-CoreDream-3Light; Roboto; Nanum Gothic; 맑은 고딕; 돋움; 바탕; 돋음; 궁서; Nanum Gothic Coding; Quattrocento Sans;' + CKEDITOR.config.font_names; //기본 글꼴에 +기호로 한글 글꼴을 추가 한다.
    config.toolbarCanCollapse = true; //툴바가 접히는 기능을 넣을때 사용합니다.
	// Set the most common block elements.
	config.format_tags = 'p;h1;h2;h3;pre';

	// Simplify the dialog windows.
	config.removeDialogTabs = 'image:advanced;link:advanced';
	//config.extraPlugins = 'templates,tableresize,videodetector,imagebase,dialogui,dialog,widget,image2,button,balloontoolbar,balloonpanel';
};
