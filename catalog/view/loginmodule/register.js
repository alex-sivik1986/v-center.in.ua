(function(k){k.transit={version:"0.9.9",propertyMap:{marginLeft:"margin",marginRight:"margin",marginBottom:"margin",marginTop:"margin",paddingLeft:"padding",paddingRight:"padding",paddingBottom:"padding",paddingTop:"padding"},enabled:true,useTransitionEnd:false};var d=document.createElement("div");var q={};function b(v){if(v in d.style){return v}var u=["Moz","Webkit","O","ms"];var r=v.charAt(0).toUpperCase()+v.substr(1);if(v in d.style){return v}for(var t=0;t<u.length;++t){var s=u[t]+r;if(s in d.style){return s}}}function e(){d.style[q.transform]="";d.style[q.transform]="rotateY(90deg)";return d.style[q.transform]!==""}var a=navigator.userAgent.toLowerCase().indexOf("chrome")>-1;q.transition=b("transition");q.transitionDelay=b("transitionDelay");q.transform=b("transform");q.transformOrigin=b("transformOrigin");q.transform3d=e();var i={transition:"transitionEnd",MozTransition:"transitionend",OTransition:"oTransitionEnd",WebkitTransition:"webkitTransitionEnd",msTransition:"MSTransitionEnd"};var f=q.transitionEnd=i[q.transition]||null;for(var p in q){if(q.hasOwnProperty(p)&&typeof k.support[p]==="undefined"){k.support[p]=q[p]}}d=null;k.cssEase={_default:"ease","in":"ease-in",out:"ease-out","in-out":"ease-in-out",snap:"cubic-bezier(0,1,.5,1)",easeOutCubic:"cubic-bezier(.215,.61,.355,1)",easeInOutCubic:"cubic-bezier(.645,.045,.355,1)",easeInCirc:"cubic-bezier(.6,.04,.98,.335)",easeOutCirc:"cubic-bezier(.075,.82,.165,1)",easeInOutCirc:"cubic-bezier(.785,.135,.15,.86)",easeInExpo:"cubic-bezier(.95,.05,.795,.035)",easeOutExpo:"cubic-bezier(.19,1,.22,1)",easeInOutExpo:"cubic-bezier(1,0,0,1)",easeInQuad:"cubic-bezier(.55,.085,.68,.53)",easeOutQuad:"cubic-bezier(.25,.46,.45,.94)",easeInOutQuad:"cubic-bezier(.455,.03,.515,.955)",easeInQuart:"cubic-bezier(.895,.03,.685,.22)",easeOutQuart:"cubic-bezier(.165,.84,.44,1)",easeInOutQuart:"cubic-bezier(.77,0,.175,1)",easeInQuint:"cubic-bezier(.755,.05,.855,.06)",easeOutQuint:"cubic-bezier(.23,1,.32,1)",easeInOutQuint:"cubic-bezier(.86,0,.07,1)",easeInSine:"cubic-bezier(.47,0,.745,.715)",easeOutSine:"cubic-bezier(.39,.575,.565,1)",easeInOutSine:"cubic-bezier(.445,.05,.55,.95)",easeInBack:"cubic-bezier(.6,-.28,.735,.045)",easeOutBack:"cubic-bezier(.175, .885,.32,1.275)",easeInOutBack:"cubic-bezier(.68,-.55,.265,1.55)"};k.cssHooks["transit:transform"]={get:function(r){return k(r).data("transform")||new j()},set:function(s,r){var t=r;if(!(t instanceof j)){t=new j(t)}if(q.transform==="WebkitTransform"&&!a){s.style[q.transform]=t.toString(true)}else{s.style[q.transform]=t.toString()}k(s).data("transform",t)}};k.cssHooks.transform={set:k.cssHooks["transit:transform"].set};if(k.fn.jquery<"1.8"){k.cssHooks.transformOrigin={get:function(r){return r.style[q.transformOrigin]},set:function(r,s){r.style[q.transformOrigin]=s}};k.cssHooks.transition={get:function(r){return r.style[q.transition]},set:function(r,s){r.style[q.transition]=s}}}n("scale");n("translate");n("rotate");n("rotateX");n("rotateY");n("rotate3d");n("perspective");n("skewX");n("skewY");n("x",true);n("y",true);function j(r){if(typeof r==="string"){this.parse(r)}return this}j.prototype={setFromString:function(t,s){var r=(typeof s==="string")?s.split(","):(s.constructor===Array)?s:[s];r.unshift(t);j.prototype.set.apply(this,r)},set:function(s){var r=Array.prototype.slice.apply(arguments,[1]);if(this.setter[s]){this.setter[s].apply(this,r)}else{this[s]=r.join(",")}},get:function(r){if(this.getter[r]){return this.getter[r].apply(this)}else{return this[r]||0}},setter:{rotate:function(r){this.rotate=o(r,"deg")},rotateX:function(r){this.rotateX=o(r,"deg")},rotateY:function(r){this.rotateY=o(r,"deg")},scale:function(r,s){if(s===undefined){s=r}this.scale=r+","+s},skewX:function(r){this.skewX=o(r,"deg")},skewY:function(r){this.skewY=o(r,"deg")},perspective:function(r){this.perspective=o(r,"px")},x:function(r){this.set("translate",r,null)},y:function(r){this.set("translate",null,r)},translate:function(r,s){if(this._translateX===undefined){this._translateX=0}if(this._translateY===undefined){this._translateY=0}if(r!==null&&r!==undefined){this._translateX=o(r,"px")}if(s!==null&&s!==undefined){this._translateY=o(s,"px")}this.translate=this._translateX+","+this._translateY}},getter:{x:function(){return this._translateX||0},y:function(){return this._translateY||0},scale:function(){var r=(this.scale||"1,1").split(",");if(r[0]){r[0]=parseFloat(r[0])}if(r[1]){r[1]=parseFloat(r[1])}return(r[0]===r[1])?r[0]:r},rotate3d:function(){var t=(this.rotate3d||"0,0,0,0deg").split(",");for(var r=0;r<=3;++r){if(t[r]){t[r]=parseFloat(t[r])}}if(t[3]){t[3]=o(t[3],"deg")}return t}},parse:function(s){var r=this;s.replace(/([a-zA-Z0-9]+)\((.*?)\)/g,function(t,v,u){r.setFromString(v,u)})},toString:function(t){var s=[];for(var r in this){if(this.hasOwnProperty(r)){if((!q.transform3d)&&((r==="rotateX")||(r==="rotateY")||(r==="perspective")||(r==="transformOrigin"))){continue}if(r[0]!=="_"){if(t&&(r==="scale")){s.push(r+"3d("+this[r]+",1)")}else{if(t&&(r==="translate")){s.push(r+"3d("+this[r]+",0)")}else{s.push(r+"("+this[r]+")")}}}}}return s.join(" ")}};function m(s,r,t){if(r===true){s.queue(t)}else{if(r){s.queue(r,t)}else{t()}}}function h(s){var r=[];k.each(s,function(t){t=k.camelCase(t);t=k.transit.propertyMap[t]||k.cssProps[t]||t;t=c(t);if(k.inArray(t,r)===-1){r.push(t)}});return r}function g(s,v,x,r){var t=h(s);if(k.cssEase[x]){x=k.cssEase[x]}var w=""+l(v)+" "+x;if(parseInt(r,10)>0){w+=" "+l(r)}var u=[];k.each(t,function(z,y){u.push(y+" "+w)});return u.join(", ")}k.fn.transition=k.fn.transit=function(z,s,y,C){var D=this;var u=0;var w=true;if(typeof s==="function"){C=s;s=undefined}if(typeof y==="function"){C=y;y=undefined}if(typeof z.easing!=="undefined"){y=z.easing;delete z.easing}if(typeof z.duration!=="undefined"){s=z.duration;delete z.duration}if(typeof z.complete!=="undefined"){C=z.complete;delete z.complete}if(typeof z.queue!=="undefined"){w=z.queue;delete z.queue}if(typeof z.delay!=="undefined"){u=z.delay;delete z.delay}if(typeof s==="undefined"){s=k.fx.speeds._default}if(typeof y==="undefined"){y=k.cssEase._default}s=l(s);var E=g(z,s,y,u);var B=k.transit.enabled&&q.transition;var t=B?(parseInt(s,10)+parseInt(u,10)):0;if(t===0){var A=function(F){D.css(z);if(C){C.apply(D)}if(F){F()}};m(D,w,A);return D}var x={};var r=function(H){var G=false;var F=function(){if(G){D.unbind(f,F)}if(t>0){D.each(function(){this.style[q.transition]=(x[this]||null)})}if(typeof C==="function"){C.apply(D)}if(typeof H==="function"){H()}};if((t>0)&&(f)&&(k.transit.useTransitionEnd)){G=true;D.bind(f,F)}else{window.setTimeout(F,t)}D.each(function(){if(t>0){this.style[q.transition]=E}k(this).css(z)})};var v=function(F){this.offsetWidth;r(F)};m(D,w,v);return this};function n(s,r){if(!r){k.cssNumber[s]=true}k.transit.propertyMap[s]=q.transform;k.cssHooks[s]={get:function(v){var u=k(v).css("transit:transform");return u.get(s)},set:function(v,w){var u=k(v).css("transit:transform");u.setFromString(s,w);k(v).css({"transit:transform":u})}}}function c(r){return r.replace(/([A-Z])/g,function(s){return"-"+s.toLowerCase()})}function o(s,r){if((typeof s==="string")&&(!s.match(/^[\-0-9\.]+$/))){return s}else{return""+s+r}}function l(s){var r=s;if(k.fx.speeds[r]){r=k.fx.speeds[r]}return o(r,"ms")}k.transit.getTransitionValue=g})(jQuery);

window.login_n_signup={init:function(){

var base=$('#member-modal');
var signup_form=base.find('#signup-form');
var signupButton=signup_form.find('button[type="submit"]:eq(0)');
var login_form=base.find('#login-form');
var reset_form=base.find('#reset-form');

var modalContent=base.find('.modal-content');
var modalSections=base.find('.modal-body');
var sections={register:modalSections.filter('.register'),login:modalSections.filter('.login')};
var steps=sections.register.find('.steps');
var step1=steps.find('.step1');
var step2=steps.find('.step2');
var membership_type=sections.register.find('input[name="membership_type"]');

if(membership_type.val()=='')
{
	membership_type.val('2');
}

var resetModal=function(type){

	if(type=='login'||type=='all') {

	$("#error").empty();
	login_form.find("#reset-password:first").addClass('hidden');
	login_form.find('[name="password"]').parent().removeClass('hidden');
	login_form.find('[name="remember_me"]').parent().parent().removeClass('hidden');
	login_form.find('#button-login').show();
	login_form.find('#button-forget').hide();
	login_form.find('.reset-password').removeClass('hidden');
	login_form.find('.form-group.has-icon label.error').remove();
	login_form.find('.form-group input.error').removeClass('error');
	login_form.find('#warning:first').addClass('hidden');

	}

	if(type=='register'||type=='all'){
		steps.css({left:0,height:'auto'});
		signup_form.find('.form-group label').remove();
		signup_form.find('.form-group input.error').removeClass('error');

	}
};

var checkUsernameTimeout;
$('[data-toggle="modal"][data-show]').on('click',function(e,force){

	step2.find('.signupform').removeClass('hidden');
	step2.find('.activation_message').addClass('hidden');


	if(!e.isTrigger||typeof force!='undefined') {
		resetModal('all');
	}

	else { 

		if(signup_form.data('type')!=''){
			steps.css({left:'-110%',height:288});
			base.on('shown.bs.modal',function(){$('body').css('overflow','hidden');
				steps.css({left:-steps.outerWidth(),height:step2.outerHeight()});
				step2.find('[name="signup_username"]').focus();
			});
		}
	}

if($(this).data('show')=='login') {
	sections.login.show();
	sections.register.hide();
	base.on('shown.bs.modal',function(){
	sections.login.find('[name="email"]').focus();});
}

else{
	sections.register.show();
	sections.login.hide();


}
});



base.on('click','.register [data-toggle="tab"]',function(){
	var self=$(this);base.find('.register [data-toggle="tab"]').removeClass('btnlog-primary btnlog-info').not(self).addClass('btnlog-info');self.addClass('btnlog-primary');membership_type.val(self.data('type'));}).on('click','.show-login',function(){resetModal('login');var registerHeight=sections.register.outerHeight(true);var loginHeight=sections.login.outerHeight(true);modalContent.height(registerHeight).transition({height:loginHeight},400);sections.login.show().css({top:'100%'}).addClass('animating').transition({top:'0%',duration:400,complete:function(){sections.register.hide();sections.login.removeClass('animating');modalContent.height('auto');sections.register.find('.steps').css({left:0,height:'auto'});sections.login.find('[name="email"]').focus();}});}).on('click','.show-register',function(){$("#error").empty();var registerHeight=sections.register.outerHeight(true);var loginHeight=sections.login.outerHeight(true);modalContent.height(loginHeight).transition({height:registerHeight},400);sections.register.show();sections.login.css({top:'0%'}).addClass('animating').transition({top:'100%',duration:400,complete:function(){sections.login.hide().removeClass('animating');modalContent.height('auto');}});})

var resetPassword=login_form.find("#reset-password:first"),submitButton=login_form.find('.btn-success');
var login_form=base.find('#login-form');
login_form.on('submit').find('.reset-password').on('click',function()
{
login_form.find("#reset-password:first").removeClass('hidden');
login_form.find('[name="password"]').parent().addClass('hidden');
login_form.find('[name="remember_me"]').parent().parent().addClass('hidden');
login_form.find('#button-login').hide();
login_form.find('#button-forget').show();
$('#warning').addClass("hidden");


$(this).addClass('hidden');
$("#error").empty();
});

}};
login_n_signup.init();;