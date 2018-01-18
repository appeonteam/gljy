drop view  b_jy_gldj_view;
create view b_jy_gldj_view
as
select b_jy_total.jyid,b_jy_total.cpid,b_jy_total.djid,b_jy_total.nh,
       b_jy_total.bgid,b_jy_total.jyml,b_jy_total.jylb,b_jy_total.jytype,
       b_jy_total.sydw,b_jy_total.spmc,b_jy_total.ryid,b_jy_total.rymc,
       b_jy_total.rybm,b_jy_total.jydate,b_jy_total.jyyear,b_jy_total.jymonth,
       b_jy_total.jyday,b_jy_total.jyjl,b_jy_total.nextdate,b_jy_total.nextyear,
       b_jy_total.nextmonth,b_jy_total.nextday,b_jy_total.shmark,
       b_jy_total.shtui,b_jy_total.shzb,b_jy_total.shsp,b_jy_total.shwang,
       b_jy_total.dangan,b_jy_total.qz from b_jy_total ;
