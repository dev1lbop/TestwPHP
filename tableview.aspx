






































































                       <script>

    function uvClick() {
        // set following parameter to site identifier: Data, Databank, Finances or DataCatalog
        var siteIdentifier = 'Databank';

        UserVoice = window.UserVoice || [];
        UserVoice.push(['setCustomFields', { 'Origin': siteIdentifier}]);
        UserVoice.push(['showLightbox', 'classic_widget', {
            mode: 'support',
            primary_color: '#54584c',
            link_color: '#a92123'
        }]);
    }

</script>
                           <script>
        var share = 0;
        var gbl_common_loggedin = ('False' == 'True' ? true : false);
        var gbl_common_culture = 'en';
        var gbl_common_signin = 'Sign In';
        var gbl_common_signout = 'Sign Out';
        var gbl_tooltip_loading = 'Loading...';
        var gbl_tooltip_loginsave = 'Please log in to save';
        var gbl_common_logout = '/data/Logout.aspx';
        var gbl_common_login = 'http://databank.worldbank.org/data/login.aspx?t=tableview&savedlg=1&l=en';
        var gbl_common_chglang = '/data/changelang.aspx';
        var gbl_common_savereport = 'Save to my favorites';
        var gbl_common_loginparam = '?t=tableview&l=en';
        var gbl_common_refpath = 'http://databank.worldbank.org/data/loginint.aspx';
        var gbl_common_home = '/data/home.aspx';
        var gbl_chart_axisdefaultvalue='Default label value will be displayed for blank labels.';
        var gbl_chart_samechartypes='Vertical and Horizontal chart type mismatch.';
        var gbl_chart_axissamevalue='The minimum and maximum values cannot be the same.';
        var gbl_chart_maxlessthanmin='The mininum value cannot be greater than the maximum value.';
        var gbl_chart_validxinterval='Please enter a valid number [0 -9] for X-Axis interval.';
        var gbl_chart_validyinterval='Please enter a valid number [0 -9] for scale values.';
        var gbl_chart_chartypechange='You cannot change individual chart types if the main chart type is set to Pie chart.';
        var gbl_chart_sort='Sorting can be set only for a single variable';

        var gbl_common_internal = false;


        function MyPostBackFunction(controlId) {
            __doPostBack(controlId, '')
        }

        function OmnitureControlClickInit(control) {
            
                OmnitureControlClick(control);
            
        }

        function OmnitureControlClickForDownload(controlname,dwnldtype) {
            
                downloadType=dwnldtype;
                OmnitureControlClick(controlname);
            
        }

        function DecodeHtml(msg) {
            if (msg.length > 0) {
                return msg.replace("&#39;", "'");
            }
            else {
                return msg;
            }
        }

        function linktoOptions() {

        }

        function ResolveUrl(url) {
            if (url.indexOf("~/") == 0) {
                url = "/data/" + url.substring(2);
            }
            return url;
        }
    </script>
































































                           <script>
        var downloadType="";
        var s_lang = "English";
        var s_channel = "";
        var s_hier1 = "";
        var s_prop1 = "";
        var s_prop10 = "";
        var s_prop13 = "";
        var s_prop16 = "";
        var s_prop17 = "";
        var s_pageName = "" ;
        var s_prop1 = "";
        var s_account = "";
        //var s_account = "DEVWBTSTSAMP2";
        function OmnitureControlClick(controlname) {
            var pathname = window.location.pathname
            var index = pathname.lastIndexOf('/') + 1;
            var length = pathname.length - 5;
            var pagename = pathname.substring(index, length);

            if (gbl_common_internal) {
                s_lang = "English"
                s_pageName = "myDatabank>" + document.getElementById("MainContent_hdnCubeDisplayName").value + ">" + controlname + " Report " + downloadType;
                s_prop1 = "myDatabank>" + document.getElementById("MainContent_hdnCubeDisplayName").value + ">" + controlname + " Report " + downloadType;
                s_account = "wbnispmydbnk,wbglobalint";
                s_channel = "DEC myDataBank INT";
                s_hier1 = "DEC,DEC myDataBank INT" + s_lang;
            }
            else {
                s_lang = document.getElementById("MainContent_hdnOmnitureLang").value;
                s_pageName = "Databank>" + document.getElementById("MainContent_hdnCubeDisplayName").value + ">" + controlname + " Report " + downloadType;
                s_prop1 = "Databank>" + document.getElementById("MainContent_hdnCubeDisplayName").value + ">" + controlname + " Report " + downloadType;
                s_account = "wbnispdecdbdd,wbglobalext";
                s_channel = "DEC Databank New EXT";
                s_hier1 = "DEC Databank New EXT, " + s_lang;
            }
             s_prop10 = "Live";           
             s_prop13 = "DEC";
            s_prop16 = s_lang;
            s_prop17 = s_lang;
                       
            if (controlname == 'Download' || controlname == 'metadatadownload') {
                s_linkType = "d";               
                s_linkName = pagename + " "+"page download";

            }
            s_gs(s_account);
        }
    </script>



                                                 <script>
        //This script block is to check if any postback required before moving to some other URL
        //Postback may be required in case any changes which happened in the client side need to be saved into sessions
        //For ex: before login, before change language, etc.
        var _iscustompostbackreq = false;
        var _iscustompostbackstart = false;
        var _custompostbackargs = null;

        function isCustomPostBackRequired() {
            //This call is used check any Postback required, to save the changes back to session
            //Always make the _iscustompostbackreq flag as true if postback needed and and toggle the flag after postback
            return _iscustompostbackreq;
        }

        function doCustomPostBack() {
            //In case of any custom postback required do it here. 
            //After that it will call the handler from where this is called
            //arguments[0] - call back handler after the postback
            //arguments[1...n] - should be the parameters for the handler
            
            if (_iscustompostbackstart) return;//If any custom postback already started no need to do anything
            if (arguments.length == 0) {
                _iscustompostbackreq = false;
                return false;
            }

            _custompostbackargs = arguments;

            //Write any code for postback here
            _iscustompostbackstart = true;
            grid.PerformCallback();
        }

        function endCustomPostBack() {
            _iscustompostbackstart = false;
            _iscustompostbackreq = false;

            var handler = _custompostbackargs[0];
            if (_custompostbackargs.length == 1) handler();
            else if (_custompostbackargs.length == 2) handler(_custompostbackargs[1]);
            else if (_custompostbackargs.length == 3) handler(_custompostbackargs[1], _custompostbackargs[2], true);
            else if (_custompostbackargs.length == 4) handler(_custompostbackargs[1], _custompostbackargs[2], _custompostbackargs[3]);
            
            _custompostbackargs = null;
        }

        function setResize() {
        }
    

    $(function () {
        doCustomizations('MainContent_grdTableView');

            //Added One More Paramter To the Function for Axis Label
            /// ADD BY Ratheesh ON 05/10/2011
            loadChartLabel("", "", "", "");
            //Shaheer 9th Dec 2011
            //fix issue id : DDPUI 331
            innerLayout = $('div.main-frame').layout({ spacing_open: 5, spacing_closed: 5, center__paneSelector: ".main-body", north__resizable: false, north__slidable: false, north__closable: false, north__spacing_open: 0, west__size: 250, east__size: 250,
                center__onresize: function () {
                    SynhronizeMyGridHeight();
                },
                onload_end: function () {
                    SynhronizeMyGridHeight();
                }
            });
        });
    </script>



                           <script>
        var g_grdtbl = null;
        var g_grdtbl_hdr = null;

        function showContextMenu(s, e) {
            return true;
        }

        function doCustomizations(gridname) {
            return true;
        }

        function doColumnSorting(s, e) {
            if (event.srcElement.tagName.toLowerCase() == "img") e.cancel = true;
            return true;
        }

        function doTableVerticalScroll() {
            return true;
        }
    </script>














                                                                                                                       <script>(function() {with (this[2]) {with (this[1]) {with (this[0]) {return function(event) {javascript:return WebForm_OnSubmit();
};}}}})</script>






                       <script>
//<![CDATA[
var theForm = document.forms['Form1'];
if (!theForm) {
    theForm = document.Form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>




                                                                                                                                                                                                                    <script>$(function () {$(".add-new-WDI_Time").click(function (e) {if(document.getElementById('WDI_Time-selection').style.display == 'none'){document.getElementById('REPO_FEATURES_ID_hdncntrys').value='';e.preventDefault();reloadDimension('WDI_Time','','time');innerLayout.allowOverflow('east'); outerLayout.allowOverflow();document.getElementById('WDI_Time-selection').style.display = 'block';document.getElementById('WDI_Time-selection').style.top = '-385px';document.getElementById('WDI_Time-selection').style.left = '-430px';$(".add-new-WDI_Time").toggleClass("opened");var flag = 0;$("#WDI_Time-selection").mouseup(function () {flag=1; });$(document).mouseup(function (e) {if(flag == 0){ $(".add-new-WDI_Time").removeClass("opened");$('#WDI_Time-selection').hide();innerLayout.resetOverflow('east');}});}});$(".add-new-WDI_Series").click(function (e) {if(document.getElementById('WDI_Series-selection').style.display == 'none'){document.getElementById('REPO_FEATURES_ID_hdncntrys').value='';e.preventDefault();reloadDimension('WDI_Series','','series');innerLayout.allowOverflow('east'); outerLayout.allowOverflow();document.getElementById('WDI_Series-selection').style.display = 'block';document.getElementById('WDI_Series-selection').style.top = '-385px';document.getElementById('WDI_Series-selection').style.left = '-430px';$(".add-new-WDI_Series").toggleClass("opened");var flag = 0;$("#WDI_Series-selection").mouseup(function () {return false });$(document).mouseup(function (e) {if(flag == 0){ $(".add-new-WDI_Series").removeClass("opened");$('#WDI_Series-selection').hide();innerLayout.resetOverflow('east');}});}});$(".add-new-WDI_Ctry").click(function (e) {if(document.getElementById('WDI_Ctry-selection').style.display == 'none'){document.getElementById('REPO_FEATURES_ID_hdncntrys').value='';e.preventDefault();reloadDimension('WDI_Ctry','','country');innerLayout.allowOverflow('east'); outerLayout.allowOverflow();document.getElementById('WDI_Ctry-selection').style.display = 'block';document.getElementById('WDI_Ctry-selection').style.top = '-385px';document.getElementById('WDI_Ctry-selection').style.left = '-430px';$(".add-new-WDI_Ctry").toggleClass("opened");var flag = 0;$("#WDI_Ctry-selection").mouseup(function () {return false });$(document).mouseup(function (e) {if(flag == 0){ $(".add-new-WDI_Ctry").removeClass("opened");$('#WDI_Ctry-selection').hide();innerLayout.resetOverflow('east');}});}});});</script>



                       <script>
//<![CDATA[
function WebForm_OnSubmit() {
if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;ReportWidgetUnload();
return true;
}
//]]>
</script>









































































































































































































































                                                                                                                                                                                                                                                                                                                                 <script>(function() {with (this[2]) {with (this[1]) {with (this[0]) {return function(event) {this.firstChild.src='/data/images/eye.png'
};}}}})</script>
















                                                                                                                                                                                                                                                                                                                                                                                                          <script>(function() {with (this[2]) {with (this[1]) {with (this[0]) {return function(event) {aspxGVTableClick('MainContent_grdTableView', event);
};}}}})</script>


                                                                                                                                                                                                                                                                                      <script>(function() {with (this[2]) {with (this[1]) {with (this[0]) {return function(event) {aspxGVHeaderMouseDown('MainContent_grdTableView', this, event);
};}}}})</script>









































































                                                     <script>
<!--

var dxo = new ASPxClientGridView('MainContent_grdTableView');
window['grid'] = dxo;
dxo.callBack = function(arg) { WebForm_DoCallback('ctl00$MainContent$grdTableView',arg,aspxCallback,'MainContent_grdTableView',aspxCallbackError,true); };
dxo.uniqueID = 'ctl00$MainContent$grdTableView';
dxo.Init.AddHandler(function(s, e) { 
                    SynhronizeMyGridHeight();
                });
dxo.EndCallback.AddHandler(function(s, e) { 
                    SynhronizeMyGridHeight();
                    if (_iscustompostbackstart) endCustomPostBack();
					doCustomizations('MainContent_grdTableView');
                    resizeTable();
                    doTableVerticalScroll();
                });
dxo.ColumnResizing.AddHandler(function(s, e) { 
                    _iscustompostbackreq = true;
                });
dxo.ColumnResized.AddHandler(function(s, e) {
                    _iscustompostbackreq = true;
                    resizeTable();
                    doTableVerticalScroll();
                });
dxo.ColumnSorting.AddHandler(function(s, e) { 
                	return doColumnSorting(s, e);
                });
dxo.ColumnMoving.AddHandler(function(s, e) { 
                    _iscustompostbackreq = true;
                });
dxo.ContextMenu.AddHandler(function(s, e) {
	            	showContextMenu(s, e)
                });
dxo.callBacksEnabled=true;
dxo.pageRowCount=1;
dxo.pageRowSize=250;
dxo.pageIndex=0;
dxo.pageCount=1;
dxo.selectedWithoutPageRowCount=0;
dxo.visibleStartIndex=0;
dxo.focusedRowIndex=-1;
dxo.allowFocusedRow=false;
dxo.allowSelectByRowClick=false;
dxo.allowSelectSingleRowOnly=false;
dxo.columnResizeMode=1;
dxo.horzScroll=1;
dxo.fixedColumnCount=1;
dxo.indentColumnCount=0;
dxo.callbackOnFocusedRowChanged=false;
dxo.callbackOnSelectionChanged=false;
dxo.autoFilterDelay='1200';
dxo.columns = [new ASPxClientGridViewColumn('',0,-1,'Country Name',1,'',0,1,1,1,0,0,0),
new ASPxClientGridViewColumn('',1,-1,'Country Code',0,'',0,1,1,1,0,1,0),
new ASPxClientGridViewColumn('',2,-1,'2004',1,'',0,1,1,1,0,0,0),
new ASPxClientGridViewColumn('',3,-1,'2005',1,'',0,1,1,1,0,0,0),
new ASPxClientGridViewColumn('',4,-1,'2006',1,'',0,1,1,1,0,0,0),
new ASPxClientGridViewColumn('',5,-1,'2007',1,'',0,1,1,1,0,0,0),
new ASPxClientGridViewColumn('',6,-1,'2008',1,'',0,1,1,1,0,0,0),
new ASPxClientGridViewColumn('',7,-1,'2009',1,'',0,1,1,1,0,0,0),
new ASPxClientGridViewColumn('',8,-1,'2010',1,'',0,1,1,1,0,0,0),
new ASPxClientGridViewColumn('',9,-1,'2011',1,'',0,1,1,1,0,0,0),
new ASPxClientGridViewColumn('',10,-1,'2012',1,'',0,1,1,1,0,0,0),
new ASPxClientGridViewColumn('',11,-1,'2013',1,'',0,1,1,1,0,0,0)];
dxo.editState=0;
dxo.InlineInitialize();

//-->
</script>






                                   <script>
                //Atsushi Feb 2012 Partial Loading Update (DDPUI-457 ): following code need to be executed after patial upate. There must be better ways to do the same...
                var prm_tv = Sys.WebForms.PageRequestManager.getInstance();

                prm_tv.add_beginRequest(function () {
                    var width = $("#MainContent_divTable").width();
                    var height = $("#MainContent_divTable").height();

                    $("#report-loading").css({
                        top: ((height / 2) - 25),
                        left: ((width / 2) - 50)
                    }).fadeIn(200);

                });

                prm_tv.add_endRequest(function () {
                    $("#report-loading").fadeOut(500);
                    loadChartLabel("", "", "", ""); //??
                    SynhronizeMyGridHeight();

                });

            </script>



























                         <script>
      //Added One More Paramter To the Function for Axis Label
      /// ADD BY Ratheesh ON 04/10/2011
      function loadChartLabel(newLabels, newScale, newPrecision, AxisValue) {

          document.getElementById('MainContent_hdnSeriesScale').value = "";
          document.getElementById('MainContent_hdnSeriesPrecision').value = "";

          if (newScale != null && newScale != "") {
              if (document.getElementById('MainContent_hdnSeriesScale') != null) {
                  document.getElementById('MainContent_hdnSeriesScale').value = newScale;
              }

          }

          if (newPrecision != null && newPrecision != "") {
              if (document.getElementById('MainContent_hdnSeriesPrecision') != null) {
                  document.getElementById('MainContent_hdnSeriesPrecision').value = newPrecision;
              }

              if (document.getElementById('REPO_FEATURES_ID_ddpScale') != null) {
                  document.getElementById('REPO_FEATURES_ID_ddpScale').value = "..";
              }
              if (document.getElementById('REPO_FEATURES_ID_ddpPrecision') != null) {
                  document.getElementById('REPO_FEATURES_ID_ddpPrecision').value = "..";
              }
              if (document.getElementById('REPO_FEATURES_ID_hdnReportScaleChanged') != null) {
                  document.getElementById('REPO_FEATURES_ID_hdnReportScaleChanged').value = "1";
              }
              if (document.getElementById('REPO_FEATURES_ID_hdnReportPrecisionChanged') != null) {
                  document.getElementById('REPO_FEATURES_ID_hdnReportPrecisionChanged').value = "1";
              }

              //Atsushi Feb 2012 Partial Loading Update (DDPUI-457 ): submit form through __doPostBack()
              MyPostBackFunction("REPO_FEATURES_ID_lbApplyChanges");
          }
      }
</script>

























































































                        <script>
    $(".page-meta-icon").click(function (e) {
        
        OmnitureControlClick('metadataicon');
        
    });
       
    $(".colhead.dxgv.mv").click(function (e) {
        
        OmnitureControlClick('TableColumn-Metadata');
        
    });

    $("#MainContent_divTable").ajaxStart(function () {
        var width = $(this).width();
        var height = $(this).height();

        $("#report-loading").css({
            top: ((height / 2) - 25),
            left: ((width / 2) - 50)
        }).fadeIn(200);    // fast fade in of 200 mili-seconds 
    })
    .ajaxStop(function () {
        $("#report-loading").fadeOut(500);    // slow fade out of 1/2 second 
    });
</script>




















































                           <script>
        $(function () {
            onSelectedDimLoadComplete();
        });

        //Shaheer 21st Sep 2011
        /*Global variable dclared for toggling sort */
        var lastDimension;
        var showOrHide = false;
        //Shaheer 21st Oct 2011
        var selectedDimensions;
        var gbl_seldim_unselectall = 'This action will unselect all selected dimension values';
        var gbl_seldim_reqlimit = 'The number of cells requested exceeds the 2,500,000 cell limit for the Report';
        var gbl_seldim_alertsellost = 'Your selection will be lost. Do you want continue?';
        //#################### Atsushi 11/04/2011 - Performance Enhancement End ####################
        var isLoading = false;
        //#################### Atsushi 11/04/2011 - Performance Enhancement End ####################
        //Shaheer Oct 24th 2012
        var topClicked = false;

     $(".dim-count").live("click",(function (e) {
         
           OmnitureControlClick("Accordion"+ " " + e.target.innerHTML.replace("(", " ").trim() );
        
    }));
    
    $(".ui-accordion-content p a").live("click",(function (e) {
        
           OmnitureControlClick(e.target.innerHTML.replace("(", " ").trim());
        
       }));
    </script>











































































                           <script>
        //Atsushi Feb 2012 Partial Loading Update (DDPUI-457 ): following code need to be executed after patial upate. There must be better ways to do the same...
        var prm_sd = Sys.WebForms.PageRequestManager.getInstance();

        var accordiondatabase_activeIndex;
        var accordion2_activeIndex;

        prm_sd.add_beginRequest(function () {
            accordiondatabase_activeIndex = $("#accordiondatabase").accordion("option", "active");
            accordion2_activeIndex = $("#accordion2").accordion("option", "active");
        });

        prm_sd.add_endRequest(function () {
            onSelectedDimPostBackComplete();
        });

    </script>




























































                                                   <script>
                                //Atsushi Feb 2012 Partial Loading Update (DDPUI-457): following code need to be executed after patial upate. There must be better ways to do the same...
                                var prm_rm = Sys.WebForms.PageRequestManager.getInstance();

                                prm_rm.add_beginRequest(function () {

                                });

                                prm_rm.add_endRequest(function () {
                                    onReportPostBackComplete();
                                });

                            </script>





















































































































                           <script>
        $(document).ready(function () {

            outerLayout = $('body').layout({ spacing_open: 2, spacing_closed: 2, center__paneSelector: ".main-frame", north__paneSelector: ".top-frame", north__size: 75, north__resizable: false, north__slidable: false, north__closable: false, south__paneSelector: ".bottom-frame", south__size: 115, south__resizable: false, south__slidable: false, south__closable: false });

            onReportLoadComplete();
        });

        //Shaheer Dec 17th 2012
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(loadControl);

        function holdLastState(download) {
            return true;
        }

        function OmnitureHold(controlname) {
       
          
    
        OmnitureControlClick(controlname);
        
            holdLastState(false);
        }

        function OmnitureShare(controlname) {
          
        OmnitureControlClick(controlname);
        
            shareclicked();
        }

        function OmnitureSave(controlname) {
          
        OmnitureControlClick(controlname);
        
            loadSavePanel("");
        }
    </script>





























                       <script>
//<![CDATA[

WebForm_InitCallback();
var Page_ValidationActive = false;
if (typeof(ValidatorOnLoad) == "function") {
    ValidatorOnLoad();
}

function ValidatorOnSubmit() {
    if (Page_ValidationActive) {
        return ValidatorCommonOnSubmit();
    }
    else {
        return true;
    }
}
        
document.getElementById('regReportTitle').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('regReportTitle'));
}

document.getElementById('RegularExpressionValidator1').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('RegularExpressionValidator1'));
}
//]]>
</script>