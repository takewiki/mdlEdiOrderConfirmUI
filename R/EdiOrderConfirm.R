#' EDI销售订单查询生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' EdiOrderConfirmUI()
EdiOrderConfirmUI <- function(tabTitle ='EDI销售订单确认',
                          colTitles =c('操作区域','操作区域','显示区域'),
                          widthRates =c(6,6,12),
                          func_left = EdiOrderConfirmUI_left,
                          func_right =EdiOrderConfirmUI_right,
                          func_bottom = EdiOrderConfirmUI_bottom
) {

  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)

}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' EdiOrderConfirmUI_left()
EdiOrderConfirmUI_left <- function() {


  res <- tagList(

    tsui::mdl_text2(id = 'text_EdiOrderConfirm_FBillNO',label ='输入订单号' ,value ='4500447949' ),
    tsui::mdl_text2(id = 'text_EdiOrderConfirm_FSeq',label ='输入订单行号' ,value ='1' ),

    tsui::mdl_text2(id = 'text_EdiOrderConfirm_FCommittedQuantity',label ='输入确认数量' ,value ='' ),

    tsui::mdl_text2(id = 'text_EdiOrderConfirm_FCommittedQuantityUOM',label ='输入确认数量单位' ,value ='' ),

    tsui::mdl_text2(id = 'text_EdiOrderConfirm_FCommittedQuantityConfirmedDate',label ='输入确认交期' ,value ='' ),

    shiny::actionButton(inputId = 'btn_EdiOrderConfirm_update',label = '更新订单信息')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' EdiOrderConfirmUI_bottom()
EdiOrderConfirmUI_right <- function() {
  res <- tagList(



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' EdiOrderConfirmUI_bottom()
EdiOrderConfirmUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'EdiOrderConfirm_resultView',label ='结果显示' ))

  )
  return(res)

}
