// JavaScript Document
/*导航定位*/
$(function(){
	$(window).scroll(function(){//定义页面滚动函数
		function get_scrollTop_of_body(){ //scrollTop能力检测函数
			var scrollTop; 
			if(typeof window.pageYOffset != 'undefined'){ 
			scrollTop = window.pageYOffset; 
			} 
			else 
			if(typeof document.compatMode != 'undefined' && 
			document.compatMode != 'BackCompat'){ 
			scrollTop = document.documentElement.scrollTop; 
			} 
			else 
			if(typeof document.body != 'undefined'){ 
			scrollTop = document.body.scrollTop; 
			} 
			return scrollTop; 
		}
		var myScrollTop = parseInt(get_scrollTop_of_body());//获取ScrollTop的值
		if(myScrollTop >= 210){//subnav不固定区块定位，注意此值要减掉fixed定位后的top值
			$('.two-meun').addClass('isStuck');
		}else{$('.two-meun').removeClass('isStuck');}
	})	
   
     $("ul.map li").hover(function(){
        $("ul.map li p").removeClass('show');
        $(".map-tab ul").eq($("ul.map li").index(this)).addClass('show').siblings().removeClass('show');
        $(this).find('p').addClass('show');
    })

})



	
/*回到顶部*/
function goTopEx(){
        var obj=document.getElementById("goTopBtn");
        function getScrollTop(){
                return document.documentElement.scrollTop;
            }
        function setScrollTop(value){
                document.documentElement.scrollTop=value;
            }    
        window.onscroll=function(){getScrollTop()>0?obj.style.display="":obj.style.display="none";}
        obj.onclick=function(){
            var goTop=setInterval(scrollMove,10);
            function scrollMove(){
                    setScrollTop(getScrollTop()/1.1);
                    if(getScrollTop()<1)clearInterval(goTop);
                }
        }
    }

/*轮播图*/
$(function(){
			var num = 1;
			var timer;
			$('.b-index ol li').mouseover(function(){
				$(this).addClass('current').siblings().removeClass();
				$('.b-index ul li').eq($(this).index()).fadeIn(500).siblings().hide();
				num = $(this).index()+1;
				});
		    function run(){
				if(num == 4){
					num=0;}
			     $('.b-index ol li').eq(num).addClass('current').siblings().removeClass();
				 $('.b-index ul li').eq(num).fadeIn(500).siblings().hide();
				 num++;
				}
		   timer = setInterval(run,3000);  
		$('li').mouseover(function(){
			clearInterval(timer);
		}) .mouseout(function(){
			timer = setInterval(run,3000); 
		})



 })


$(function(){
	(function(){
		var curr = 0;
		$("ol#jsNav li.trigger").each(function(i){
			$(this).click(function(){
				curr = i;
				$("#js ul li").eq(i).fadeIn("slow").siblings("li").hide();
				$(this).siblings(".trigger").removeClass("imgSelected").end().addClass("imgSelected");
				return false;
			});
		});
		
		var pg = function(flag){
			//flag:true表示前翻， false表示后翻
			if (flag) {
				if (curr == 0) {
					todo = 2;
				} else {
					todo = (curr - 1) % 3;
				}
			} else {
				todo = (curr + 1) % 3;
			}
			$("ol#jsNav li.trigger").eq(todo).click();
		};
		
		//前翻
		$("ol#jsNav li#prev").click(function(){
			pg(true);
			return false;
		});
		
		//后翻
		$("ol#jsNav li#next").click(function(){
			pg(false);
			return false;
		});
		
		//自动翻
		var timer = setInterval(function(){
			todo = (curr + 1) % 3;
			$("ol#jsNav li.trigger").eq(todo).click();
		},4000);
		
		//鼠标悬停在触发器上时停止自动翻
		$("ol#jsNav li").hover(function(){
				clearInterval(timer);
			},
			function(){
				timer = setInterval(function(){
					todo = (curr + 1) % 3;
					$("ol#jsNav li.trigger").eq(todo).click();
				},1500);			
			}
		);
	})();
});





