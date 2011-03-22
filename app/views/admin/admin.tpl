<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt_BR">
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		<title>index2</title>
		<style type="text/css" media="screen">
			@import url("{$urlbase}public/css/internal.css");
			@import url("{$urlbase}public/css/style.css");
		</style>

                {if $template eq "admin/step_1.tpl"}
		<script type="text/javascript" src="{$urlbase}public/js/jquery-1.4.2.min.js"></script>
                <script type="text/javascript" src="{$urlbase}public/js/jquery-validate/jquery.validate.js"></script>
                <script type="text/javascript" src="{$urlbase}public/js/jquery.maskedinput-1.2.2.js"/></script>
                <script type="text/javascript" src="{$urlbase}public/js/admin_step1.js"></script>
                <script type="text/javascript" src="{$urlbase}public/js/mascara.js"></script>
        </head>
                {/if}

                {if $template eq "admin/step_2.tpl"}
		<script type="text/javascript" src="{$urlbase}public/js/jquery-1.4.2.min.js"></script>
                <script type="text/javascript" src="{$urlbase}public/js/jquery-validate/jquery.validate.js"></script>                
                <script type="text/javascript" src="{$urlbase}public/js/admin_step2.js"></script>              
        </head>
                {/if}

                {if $template eq "admin/step_4.tpl"}
		<script type="text/javascript" src="{$urlbase}public/js/jquery-1.4.2.min.js"></script>
                <script type="text/javascript" src="{$urlbase}public/js/jquery-validate/jquery.validate.js"></script>
                <script type="text/javascript" src="{$urlbase}public/js/jquery.maskedinput-1.2.2.js"/></script>
                <script type="text/javascript" src="{$urlbase}public/js/admin_step4.js"></script>
                <script type="text/javascript" src="{$urlbase}public/js/mascara.js"></script>
        </head>
                {/if}
                {if $template eq "admin/step_5_1.tpl"}
		<script type="text/javascript" src="{$urlbase}public/js/jquery-1.4.2.min.js"></script>
                <script type="text/javascript" src="{$urlbase}public/js/jquery-validate/jquery.validate.js"></script>
                <script type="text/javascript" src="{$urlbase}public/js/jquery.maskedinput-1.2.2.js"/></script>
                <script type="text/javascript" src="{$urlbase}public/js/admin_step5_1.js"></script>
                <script type="text/javascript" src="{$urlbase}public/js/mascara.js"></script>
        </head>
                {/if}
                {if $template eq "admin/step_5_2.tpl"}
		<script type="text/javascript" src="{$urlbase}public/js/jquery-1.4.2.min.js"></script>
                <script type="text/javascript" src="{$urlbase}public/js/jquery-validate/jquery.validate.js"></script>
                <script type="text/javascript" src="{$urlbase}public/js/jquery.maskedinput-1.2.2.js"/></script>
                <script type="text/javascript" src="{$urlbase}public/js/admin_step5_2.js"></script>
                <script type="text/javascript" src="{$urlbase}public/js/mascara.js"></script>
        </head>
                {/if}

		{if $template eq "admin/edit_account.tpl"}
		<script src="{$urlbase}public/js/jquery-1.4.2.min.js" type="text/javascript"></script>
		<script src="{$urlbase}public/js/jquery-ui-1.8.1.custom.min.js" type="text/javascript"></script>
		<script src="{$urlbase}public/js/master_admin.js" type="text/javascript"></script>
        </head>
		{/if}
		
		{if $template eq "admin/edit_parish.tpl"}
		<script src="{$urlbase}public/js/jquery-1.4.2.min.js" type="text/javascript"></script>
		<script src="{$urlbase}public/js/jquery-ui-1.8.1.custom.min.js" type="text/javascript"></script>
		<script src="{$urlbase}public/js/master_admin.js" type="text/javascript"></script>
        </head>
		{/if}
		
		{if $template eq "admin/step_3.tpl"  ||  $template eq "admin/edit_parish.tpl" }
        <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key={$apikey}&amp;sensor=false" type="text/javascript"></script>
        <script src="{$urlbase}public/js/gmapez-2.5.js" type="text/javascript"></script>
		</head>             
		<body onUnload="GUnload()">
		{else}     
		   	
		<body>
        {/if}
      
	
		<div class="total">
			<div class="container_12 clearfix">{include file="admin/top_admin.tpl"}</div>
		</div>
		<div class="total">
			<div class="container_12 clearfix">{if $menu eq "master"} {include file="admin/master_menu.tpl"} {else} {include file="admin/admin_menu.tpl"}{/if}</div>
		</div>
                <div class="total">
			<div class="container_12 clearfix">{include file= $template }</div>
		</div>
		<div class="footer_100 clearfix">
			<div id="footer" class="container_12 clearfix">{include file="default/footer.tpl"}</div>
		</div>
	
	
	</body>
</html>