*** Settings ***
Library           SapGuiLibrary
Library     ExcelLibrary
Library    Process
Library    String
Library    Collections
#Library    SeleniumLibrary
Library    word
Library    docx
#Library    Screenshot






*** Variables ***
${SAPGUIPATH}     C:/Program Files (x86)/SAP/FrontEnd/SAPgui/saplogon.exe
${screenshotpath}    C:\\Users\\dchinnasam\\OneDrive\\Documents\\01. Offical\\Robot\\TempScreenShots\\
${ZeroPrice}    0.00
${SAPSYSTEMNAME}  ECC Quality System - EQ1
${SAPCLIENT}      400
${SAPUSERNAME}    SAPQA_APP1
${SAPPASSWORD}    Quality75#
${ShipToBP}      /app/con[0]/ses[0]/wnd[0]/usr/subSUBSCREEN_HEADER:SAPMV45A:4021/subPART-SUB:SAPMV45A:4701/ctxtKUAGV-KUNNR
${SoldToBP}      /app/con[0]/ses[0]/wnd[0]/usr/subSUBSCREEN_HEADER:SAPMV45A:4021/subPART-SUB:SAPMV45A:4701/ctxtKUWEV-KUNNR
${EnterButton}   /app/con[0]/ses[0]/wnd[0]/tbar[0]/btn[0]
${ItemOveriewTab}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_OVERVIEW/tabpT\\02
${element_exists}
${InputExcelPath}    C:\\Users\\dchinnasam\\OneDrive\\Documents\\01. Offical\\Robot\\Input\\TAX-EQ1.xlsx
${InputExcelSheet}    Inputs
${MaterialList}
${green}    00FF00
${red}    FF0000
${SAPPopUpElement}   /app/con[0]/ses[0]/wnd[1]/tbar[0]/btn[0]
${orderTypeElementID}    /app/con[0]/ses[0]/wnd[0]/usr/ctxtVBAK-AUART
${sellingOrdElementID}    /app/con[0]/ses[0]/wnd[0]/usr/ctxtVBAK-VKORG
${distributionChannelElementID}   /app/con[0]/ses[0]/wnd[0]/usr/ctxtVBAK-VTWEG
${divisonElemID}    /app/con[0]/ses[0]/wnd[0]/usr/ctxtVBAK-SPART
${statusbarTextID}    /app/con[0]/ses[0]/wnd[0]/sbar/pane[0]
${MaterialTableId}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_OVERVIEW/tabpT\\02/ssubSUBSCREEN_BODY:SAPMV45A:4427/subSUBSCREEN_TC:SAPMV45A:4908/tblSAPMV45ATCTRL_U_ERF_KONTRAKT/ctxtRV45A-MABNR[1,0]
${TargetQtyId}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_OVERVIEW/tabpT\\02/ssubSUBSCREEN_BODY:SAPMV45A:4427/subSUBSCREEN_TC:SAPMV45A:4908/tblSAPMV45ATCTRL_U_ERF_KONTRAKT/txtVBAP-ZMENG[2,0]
${headerButton}    /app/con[0]/ses[0]/wnd[0]/usr/subSUBSCREEN_HEADER:SAPMV45A:4021/btnBT_HEAD
${salesHeaderTab}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_HEAD/tabpT\\01
${orderHeaderTab}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_HEAD/tabpT\\11
${sellingGrpTextbox}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_HEAD/tabpT\\01/ssubSUBSCREEN_BODY:SAPMV45A:4301/ctxtVBAK-VKBUR
${PurchaseGrpTextbox}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_HEAD/tabpT\\11/ssubSUBSCREEN_BODY:SAPMV45A:4351/ctxtVBKD-BSARK
${SE16NTableEntriesID}    /app/con[0]/ses[0]/wnd[0]/usr/cntlRESULT_LIST/shellcont/shell
${VA43OrderTextBox}    /app/con[0]/ses[0]/wnd[0]/usr/ctxtVBAK-VBELN
${ItemOverViewTable}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_OVERVIEW/tabpT\\02/ssubSUBSCREEN_BODY:SAPMV45A:4427/subSUBSCREEN_TC:SAPMV45A:4908/tblSAPMV45ATCTRL_U_ERF_KONTRAKT
${ConditionsTab}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_ITEM/tabpT\\07
${ConditionsTabPriceRow}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_ITEM/tabpT\\07/ssubSUBSCREEN_BODY:SAPLV69A:6201/tblSAPLV69ATCTRL_KONDITIONEN/ctxtKOMV-KSCHL[1,1]
${ConditionsAmount}         /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_ITEM/tabpT\\07/ssubSUBSCREEN_BODY:SAPLV69A:6201/tblSAPLV69ATCTRL_KONDITIONEN/txtKOMV-KBETR[3,1]
${ItemConditionTab}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_ITEM/tabpT\\07
${NetAmountTextBox}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_ITEM/tabpT\\07/ssubSUBSCREEN_BODY:SAPLV69A:6201/txtKOMP-NETWR
${PercentageAmountTexBox}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_ITEM/tabpT\\07/ssubSUBSCREEN_BODY:SAPLV69A:6201/txtKOMP-MWSBP
${NetPriceTextBox}    /app/con[0]/ses[0]/wnd[0]/usr/subSUBSCREEN_HEADER:SAPMV45A:4021/txtVBAK-NETWR
${screeshotname}    0
${jpgdoctype}    .jpg
${FolderPath}   C:\\Users\\dchinnasam\\OneDrive\\Documents\\01. Offical\\Robot\\ExecutionDoc\\
${PopupCancelButton}    /app/con[0]/ses[0]/wnd[1]/usr/btnCANCEL
${PopupEditButton}    /app/con[0]/ses[0]/wnd[1]/usr/btnSPOP-VAROPTION2
${MaterialPriceTextbox}    /app/con[0]/ses[0]/wnd[0]/usr/subSUBSCREEN_HEADER:SAPMV45A:4021/txtVBAK-NETWR
${AddRowButton}    /app/con[0]/ses[0]/wnd[0]/usr/tabsTAXI_TABSTRIP_ITEM/tabpT\\07/ssubSUBSCREEN_BODY:SAPLV69A:6201/subSUBSCREEN_PUSHBUTTONS:SAPLV69A:1000/btnBT_KOAN
*** Test Cases ***

TAX Validation in ECC
    #Open SAP Logon Window
    set suite variable    ${screenshotpath}     ${screenshotpath}
    Open SAP Logon Window    ${SAPGUIPATH}    ${SAPUSERNAME}    ${SAPPASSWORD}    ${ENTERBUTTON}
    #Read all values from the input excel doccument
    Read All Input Values From Excel    ${InputExcelPath}    ${InputExcelSheet}
    ${ListIndexIterator}    set variable    0
    ${ShipToBPListCount}=    get length    ${TestCaseNumberList}
    ${RowCounter}    set variable    2
    FOR    ${BPIterator}    IN    @{TestCaseNumberList}
        IF    '${BPIterator}' != 'None' and '${BPIterator}' != '${EMPTY}'
            ${ExecutionFlag}    get from list    ${ExecutionFlagList}    ${ListIndexIterator}
            IF   '${ExecutionFlag}' == 'Y'
                ${ShiptoParty}    get from list    ${ShippingPartyList}    ${ListIndexIterator}
                ${SoldToParty}    get from list    ${SoldToPartyList}    ${ListIndexIterator}
                ${SellingEntity}    get from list    ${SellingOrgList}    ${ListIndexIterator}
                ${MaterialID}    get from list     ${MaterialList}    ${ListIndexIterator}
                ${TAXPercentage}    get from list    ${TAXPercentageList}    ${ListIndexIterator}
                ${SellerRowNumber}    get from list    ${SellerRowNumberList}    ${ListIndexIterator}
                ${ActualSellerNumber}    get from list    ${ActualSellerNumberList}    ${ListIndexIterator}
                @{Pathlist}    create list
                run transaction    /nVA41
                #save sap screen shot    ${screenshotpath}    ${screeshotname}    ${Pathlist}
                sapguilibrary.input text    ${orderTypeElementID}  ZSUB

                input text    ${sellingOrdElementID}    ${SellingEntity}
                sapguilibrary.input text    ${distributionChannelElementID}    00
                sapguilibrary.input text    ${divisonElemID}    00
                save sap screen shot    ${screenshotpath}    ${screeshotname}    ${Pathlist}
                sapguilibrary.click element    ${ENTERBUTTON}
                sapguilibrary.input text    ${ShipToBP}    ${ShiptoParty}
                sapguilibrary.input text    ${SoldToBP}    ${SoldToParty}
                sapguilibrary.click element    ${ENTERBUTTON}
                save sap screen shot    ${screenshotpath}    ${screeshotname}    ${Pathlist}
                ${statusText}=    get value    ${statusbarTextID}

                IF    '${statusText}' == '${EMPTY}'
                    click sap popup button if present    ${SAPPopUpElement}
                    sapguilibrary.click element    ${ItemOveriewTab}
                    sapguilibrary.input text    ${MaterialTableId}    ${MaterialID}
                    save sap screen shot    ${screenshotpath}    ${screeshotname}    ${Pathlist}
                    ${MaterialErrorText}=    get value    ${statusbarTextID}
                    IF    '${MaterialErrorText}' == '${EMPTY}'
                        sapguilibrary.input text    ${TargetQtyId}    1
                        send vkey    0
                        click sap popup button if present    ${SAPPopUpElement}
                        ${MaterialPrice}    get value    ${MaterialPriceTextbox}
                        ${MaterialPrice}=    replace string    ${MaterialPrice}    ,    ${EMPTY}
                        ${MaterialPrice}=    convert to number    ${MaterialPrice}
                        ${ZeroPrice}=    convert to number    ${ZeroPrice}
                        IF  '${MaterialPrice}' == '${ZeroPrice}'
                            sapguilibrary.click element    ${ItemOveriewTab}
                            select table row    ${ItemOverViewTable}    0
                            send vkey   2
                            click element    ${ConditionsTab}
                            click element    ${AddRowButton}
                            input text    ${ConditionsTabPriceRow}    ZMPR
                            input text    ${ConditionsAmount}    100
                            send vkey    0
                            send vkey    3
                        END
                        #sleep    5s
                        sapguilibrary.click element    ${headerButton}
                        #sleep    3s
                        sapguilibrary.click element    ${salesHeaderTab}
                        sapguilibrary.input text    ${sellingGrpTextbox}    0050
                        click element    ${orderHeaderTab}
                        sapguilibrary.input text    ${PurchaseGrpTextbox}    0020
                        send vkey    3

                        send vkey    11
                        #${element_exists}  set variable
                        click sap popup button if present    ${SAPPopUpElement}
                        save sap screen shot    ${screenshotpath}    ${screeshotname}    ${Pathlist}
                        ${OrderIssue}    get value    ${statusbarTextID}
                        click sap popup button if present    ${SAPPopUpElement}
                        #sleep    2s
                        save sap screen shot    ${screenshotpath}    ${screeshotname}    ${Pathlist}
                        click sap popup button if present   ${PopupEditButton}
                        save sap screen shot    ${screenshotpath}    ${screeshotname}    ${Pathlist}
                        ${OrderIssue}    get value    ${statusbarTextID}
                        #sleep    2s
                        save sap screen shot    ${screenshotpath}    ${screeshotname}    ${Pathlist}
                        ${Order}    get value    ${statusbarTextID}
                        ${OrderCheck}    check substring exist     ${Order}    saved
                        IF    '${OrderCheck}' == 'True'
                            ${OrderNumList}    split string    ${Order}    ${SPACE}
                            log to console    ${OrderNumList}[2]
                            ${OrderNumber}    set variable    ${OrderNumList}[2]
                            write and color excel cell   ${Inputexcelsheet}    ContractNo    ${RowCounter}    ${OrderNumber}    ${green}
                            save excel document    ${InputExcelPath}

                            run transaction    /nVA43
                            input text    ${VA43OrderTextBox}    ${OrderNumber}
                            send vkey    0
                            ${ActualPrice}    get value    ${NetPriceTextBox}
                            sapguilibrary.click element    ${ItemOveriewTab}
                            select table row    ${ItemOverViewTable}    0
                            send vkey   2

                            sapguilibrary.click element    ${ItemConditionTab}
                            save sap screen shot    ${screenshotpath}    ${screeshotname}    ${Pathlist}
                            ${TotalAmount}    get value    ${NetAmountTextBox}
                            ${ActualTaxAmt}    get value    ${PERCENTAGEAMOUNTTEXBOX}
                            ${ExpectedPrice}    set variable    ${TotalAmount}
                            #${ExpectedPriceCheck}    should be equal   ${ActualPrice}    ${ExpectedPrice}
                            IF    '${ExpectedPrice}' == '${ActualPrice}'
                                write and color excel cell    ${Inputexcelsheet}    NetAmount    ${RowCounter}    ${ActualPrice}    ${green}
                                ELSE
                                    write and color excel cell   ${Inputexcelsheet}    NetAmount    ${RowCounter}    ${ActualPrice}    ${red}
                            END
                            ${ExpectedTax}    calculate tax percentage    ${TotalAmount}    ${TAXPercentage}
                            ${ExpectedTax}    convert to number    ${ExpectedTax}
                            ${ActualTaxAmt}    replace string   ${ActualTaxAmt}     ,    ${EMPTY}
                            ${ActualTaxAmt}    convert to number    ${ActualTaxAmt}
                            IF    '${ActualTaxAmt}' == '${ExpectedTax}'
                                write and color excel cell    ${Inputexcelsheet}    TaxAmount    ${RowCounter}    ${ActualTaxAmt}    ${green}
                                ELSE
                                    write and color excel cell   ${Inputexcelsheet}    TaxAmount    ${RowCounter}    ${ActualTaxAmt}    ${red}
                            END
                            run transaction    /nSE16N
                            Find and Enter Value in Tableview    DOCUMENT    ${OrderNumber}
                            send vkey    8
                            ${SE16NErrorText}    get value    ${statusbarTextID}
                            save sap screen shot    ${screenshotpath}    ${screeshotname}    ${Pathlist}

                            IF  '${SE16NErrorText}' == '${EMPTY}'
                                ${SellerRowNumber}=  evaluate    ${SellerRowNumber} - int(${1})
                                ${ExpectedSeller}    get cell value    ${SE16NTableEntriesID}     ${SellerRowNumber}   SELLER_REG
                                set suite variable    ${TempVar}    No
                                IF    '${ExpectedSeller}' == '${EMPTY}'
                                    set suite variable    ${TempVar}     yes
                                    IF    '${ActualSellerNumber}' == 'None'
                                        write and color excel cell   ${Inputexcelsheet}    ExpectedSellerNo    ${RowCounter}    Empty-Expected     ${green}
                                    END
                                END
                                IF  '${TempVar}' == 'No'
                                    IF    '${ExpectedSeller}' == '${ActualSellerNumber}'
                                        write and color excel cell   ${Inputexcelsheet}    ExpectedSellerNo    ${RowCounter}    ${ExpectedSeller}    ${green}
                                    ELSE
                                        write and color excel cell   ${Inputexcelsheet}    ExpectedSellerNo    ${RowCounter}    ${ExpectedSeller}    ${red}
                                    END
                                END
                            ELSE
                                ${SE16NErrorText}    set variable    ${SE16NErrorText}
                                write and color excel cell   ${Inputexcelsheet}    ExpectedSellerNo    ${RowCounter}    ${SE16NErrorText}    ${red}
                            END
                            ELSE
                                write and color excel cell   ${Inputexcelsheet}    ContractNo    ${RowCounter}    Issue with Order Creation    ${red}
                        END
                        ELSE
                            ${MaterialError}    set variable    ${MaterialErrorText}
                            Write And Color Excel Cell    ${Inputexcelsheet}    Status    ${RowCounter}    ${MaterialError}    ${red}
                    END
                    ELSE
                        ${BPErrorText}    set variable    ${statusText}
                        Write And Color Excel Cell    ${Inputexcelsheet}    Status    ${RowCounter}    ${BPErrorText}    ${red}
                END
            END
            IF   '${ExecutionFlag}' == 'Y'
                ${docname}    catenate    ${BPIterator}   .docx
                ${docnamewithpath}    catenate    ${FolderPath}    ${docname}
                log list    ${Pathlist}
                Create Document    ${docnamewithpath}    ${Pathlist}
                remove values from list    ${Pathlist}
            END
            ${RowCounter}=    evaluate    ${RowCounter} + int(${1})
            ${ListIndexIterator}=    evaluate    ${ListIndexIterator} + int(${1})
            save excel document    ${InputExcelPath}
            ELSE
                exit for loop
        END
    END
    save excel document    ${InputExcelPath}
    close current excel document


*** Keywords ***
Read All Input Values From Excel
    [Arguments]    ${InputExcel}    ${InputSheet}
    ${ExcelDictionary}    ReadAllValuesFromExcel    ${InputExcel}    ${InputSheet}
    ${ShippingPartyList}    get from dictionary    ${ExcelDictionary}    ShipToCustomerID
    ${SoldToPartyList}    get from dictionary    ${ExcelDictionary}    SoldToCustomerID
    ${SellingOrgList}    get from dictionary    ${ExcelDictionary}    SellingEntity
    ${MaterialList}    get from dictionary    ${ExcelDictionary}    MaterialID
    ${TAXPercentageList}    get from dictionary    ${ExcelDictionary}    ExpectedItemTax
    ${ExpectedSellerList}    get from dictionary    ${ExcelDictionary}   SellerNo
    ${ExecutionFlagList}    get from dictionary    ${ExcelDictionary}    ExecutionFlag
    ${TestCaseNumberList}    get from dictionary    ${ExcelDictionary}    TestCaseNumber
    ${SellerRowNumberList}    get from dictionary     ${ExcelDictionary}    SellerRowNumber
    ${ActualSellerNumberList}    get from dictionary    ${ExcelDictionary}    SellerNo
    set suite variable   ${ShippingPartyList}   ${ShippingPartyList}
    set suite variable    ${SoldToPartyList}    ${SoldToPartyList}
    set suite variable    ${SellingOrgList}    ${SellingOrgList}
    set suite variable    ${MaterialList}    ${MaterialList}
    set suite variable    ${ExpectedSellerList}     ${ExpectedSellerList}
    set suite variable    ${TAXPercentageList}    ${TAXPercentageList}
    set suite variable    ${ExecutionFlagList}    ${ExecutionFlagList}
    set suite variable    ${TestCaseNumberList}    ${TestCaseNumberList}
    set suite variable    ${SellerRowNumberList}    ${SellerRowNumberList}
    set suite variable    ${ActualSellerNumberList}    ${ActualSellerNumberList}
    open excel document    ${inputExcelPath}    docID


ReadAllValuesFromExcel
    [Documentation]    Read all Values from the input excel and return dictionary values will
       ...             have all column values as a list and set the dictionary value
    [Arguments]    ${inputExcelPath}    ${Sheetname}
    open excel document    ${inputExcelPath}    docID
    ${FirstRow}=    read excel row    1    sheet_name=${Sheetname}
    ${Columncount}=    get length   ${FirstRow}
    ${ExcelDict}    create dictionary
    FOR    ${itrFirstRow}    IN RANGE    0    ${Columncount}
        ${currentColumnIndexForExcel}=    evaluate    ${itrFirstRow} +int(${1})
        #Get all Column Values to a List
        ${excelCurrentColumnValues}=    read excel column     ${currentColumnIndexForExcel}    sheet_name=${Sheetname}
        #Removes the column Name from Column Values List in index 0
        remove from list    ${excelCurrentColumnValues}    0
        #Current    Column Name as current key
        ${currentKey}=    get from List    ${FirstRow}    ${itrFirstRow}
        #set column name as key and the column values as value in the form of List
        set to dictionary    ${ExcelDict}    ${currentKey}    ${excelCurrentColumnValues}
    END
    # set the ExcelDictionary to use it across the test suite
    set suite variable    ${excelValues}    ${ExcelDict}
    close current excel document
    [Return]    ${ExcelDict}


GetColumnIndexInExcelSheet
    [Arguments]    ${sheetname}    ${columnName}
    ${getallColumnnames}=    read excel row    1    sheet_name=${sheetname}
    ${columnindex}=    get index from list   ${getallColumnnames}    ${columnName}
    ${columnindex}=    evaluate    ${columnindex} + int(${1})
    [Return]    ${columnindex}

Write And Color Excel Cell
    [Arguments]    ${sheetname}    ${columnname}    ${excelrownumber}    ${writevalue}    ${colorCode}
    ${columnIndex}=    GetColumnIndexInExcelSheet    ${sheetname}    ${columnname}
    IF    '${columnIndex}' != '${EMPTY}' and '${columnIndex}' != 'None'
        write excel cell    ${excelrownumber}    ${columnIndex}    ${writeValue}    sheet_name=${sheetname}
        excel color cell    ${excelrownumber}    ${columnIndex}    ${colorCode}    ${sheetname}
    END

Write To Excel
    [Arguments]    ${sheetname}    ${columnname}    ${excelrownumber}    ${writevalue}
    IF    '${columnIndex}' != '${EMPTY}' and '${columnIndex}' != 'None'
        write excel cell    ${excelrownumber}    ${columnIndex}    ${writeValue}    sheet_name=${sheetname}
    END


Open SAP Logon Window
    [Arguments]    ${SAPGUIPATH}    ${SAPUSERNAME}    ${SAPPASSWORD}    ${ENTERBUTTON}
    Start Process    ${SAPGUIPATH}    saplogon
    sleep    5s
    connect to session
    open connection    ECC Quality System - EQ1
    sapguilibrary.input text   /app/con[0]/ses[0]/wnd[0]/usr/txtRSYST-MANDT    400
    sapguilibrary.input text    /app/con[0]/ses[0]/wnd[0]/usr/txtRSYST-BNAME    ${SAPUSERNAME}
    sapguilibrary.input password    /app/con[0]/ses[0]/wnd[0]/usr/pwdRSYST-BCODE    ${SAPPASSWORD}
    sapguilibrary.click element    ${ENTERBUTTON}

Click SAP PopUp Button If Present
    [Arguments]    ${elementId}
     ${CheckPopup}=    is element present SAP    ${elementId}
     IF    '${CheckPopup}'=='True'
        sapguilibrary.click element    ${elementId}
     END

Find and Enter Value in Tableview
    [Arguments]    ${FiledNameinTable}    ${ValueToBeSerached}
    sapguilibrary.input text    /app/con[0]/ses[0]/wnd[0]/usr/ctxtGD-TAB    /IDT/D_TAX_DATA
    send vkey    0
    send vkey    71
    sapguilibrary.input text    /app/con[0]/ses[0]/wnd[1]/usr/sub:SAPLSPO4:0300/txtSVALD-VALUE[0,21]    ${FiledNameinTable}
    sapguilibrary.click element    /app/con[0]/ses[0]/wnd[1]/tbar[0]/btn[0]
    sapguilibrary.input text    /app/con[0]/ses[0]/wnd[0]/usr/tblSAPLSE16NSELFIELDS_TC/ctxtGS_SELFIELDS-LOW[2,1]    ${ValueToBeSerached}

Calculate TAX Percentage
    [Arguments]    ${TotalAmount}    ${TAXPercentage}
    set suite variable    ${TotalAmount}    ${TotalAmount}
    set suite variable    ${TAXPercentage}    ${TAXPercentage}
    ${TotalAmountSAP}    replace string    ${TotalAmount}    ,    ${EMPTY}
    ${TAXAmount}    evaluate    (${TotalAmountSAP} / 100) * ${TAXPercentage}
    set suite variable    ${TAXAmount}    ${TAXAmount}
    [Return]    ${TAXAmount}


Save SAP Screen Shot
    [Arguments]     ${screenshotpath}    ${screeshotname}    ${Pathlist}
    take screenshot    ${screenshotpath}
    ${screeshotname}    evaluate    ${screeshotname} + int(${1})
    set suite variable    ${screeshotname}     ${screeshotname}
    ${screeshotnamewithPath}    set variable    ${EMPTY}
    ${screeshotwithPath}    set variable    ${EMPTY}
    ${screeshotnamewithPath}    catenate  SEPARATOR=_  ${screenshotpath}    ${screeshotname}
    ${screeshotwithPath}    set variable    ${screeshotnamewithPath}${jpgdoctype}
    append to list    ${Pathlist}    ${screeshotwithPath}
    set suite variable    ${Pathlist}    ${Pathlist}







