<?php if (!empty($result)) {?>
<script type="text/javascript">
//<![CDATA[
    data = new Date(2013,10,26,12,00,00);
    var listdeal = [];
    function CountDown(date,id){
        dateNow = new Date();
        amount = date.getTime() - dateNow.getTime();
        delete dateNow;
        if(amount < 0){
            document.getElementById(id).innerHTML="Now!";
        } else{
            days=0;hours=0;mins=0;secs=0;out="";
            amount = Math.floor(amount/1000);
            days=Math.floor(amount/86400);
            amount=amount%86400;
            hours=Math.floor(amount/3600);
            amount=amount%3600;
            mins=Math.floor(amount/60);
            amount=amount%60;
            secs=Math.floor(amount);
            if(days != 0){out += "<div class='time-item time-day'>" + "<div class='num-time'>" + days + "</div>" +" <div class='name-time'>"+((days==1)?"Day":"Days") + "</div>"+"</div> ";}
            if(hours != 0){out += "<div class='time-item time-hour'>" + "<div class='num-time'>" + hours + "</div>" +" <div class='name-time'>"+((hours==1)?"Hour":"Hours") + "</div>"+"</div> ";}
            out += "<div class='time-item time-min'>" + "<div class='num-time'>" + mins + "</div>" +" <div class='name-time'>"+((mins==1)?"Min":"Mins") + "</div>"+"</div> ";
            out += "<div class='time-item time-sec'>" + "<div class='num-time'>" + secs + "</div>" +" <div class='name-time'>"+((secs==1)?"Sec":"Secs") + "</div>"+"</div> ";
            out = out.substr(0,out.length-2);
            document.getElementById(id).innerHTML=out;
            setTimeout(function(){CountDown(date,id)}, 1000);
        }
    }
//]]>
</script>

<div id="so_popup_countdown" class="modal fade" tabindex="-1" role="dialog" style="opacity: <?php echo $result['opacity']?>">
    <div class="modal-dialog" style="width: <?php echo $result['width'].'px'?>; height: <?php echo $result['height'].'px'?>">
        <div class="modal-header">
            <h2><?php echo $result['name']?></h2>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="dontShowPopup();">X</button>
        </div>
        <div class="modal-content">
            <?php echo html_entity_decode($result['description'])?>
        </div>
        <div class="modal-footer">
            <?php if (isset($result['image']) && !empty($result['image']) && is_file(getcwd().'/image/'.$result['image'])) {?>
                <?php if (isset($result['link']) && $result['link'] != '') {?>
                    <a href="<?php echo strpos($result['link'], 'http') === false ? 'http://'.$result['link'] : $result['link'] ?>" target="_blank">
                        <img src="image/<?php echo $result['image']?>" alt="<?php echo $result['name']?>" style="max-width: <?php echo $result['width'].'px'?>" />
                    </a>
                <?php }else {?>
                    <img src="image/<?php echo $result['image']?>" alt="<?php echo $result['name']?>" style="max-width: <?php echo $result['width'].'px'?>" />
                <?php }?>
            <?php }?>
            <?php if (isset($result['display_countdown']) && $result['display_countdown'] == 1) {?>
            <div id="so_countdown_timer"></div>
            <script type="text/javascript">
            //<![CDATA[
                listdeal.push('so_countdown_timer<?php echo "&&||&&".date("Y/m/d", strtotime($result["end_date"]));?>');
            //]]>
            </script> 
            <?php }?>
        </div>
    </div>
</div>
<script type="text/javascript">
    // $('#so_popup_countdown').modal();
</script>
<script>
    function dontShowPopup(){
        $.cookie('so_visited', 'yes', { expires: 1 });
    }
    jQuery(document).ready(function($) {
        var so_visited = $.cookie('so_visited');
        if (so_visited == 'yes') {
            return false;
        } else {
            $('#so_popup_countdown').modal();
        }
    });
</script>

<script type="text/javascript">
//<![CDATA[
window.onload=function(){
    if(listdeal.length > 0){
        for(i=0;i<listdeal.length;i++)
        {
            var arr = listdeal[i].split("&&||&&"); 
            var data = new Date(arr[1]);
            CountDown(data, arr[0]);
        }   
    }
};
//]]>
</script>
<?php }?>