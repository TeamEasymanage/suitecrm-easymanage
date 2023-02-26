(()=>{var P=Object.defineProperty,Io=Object.defineProperties,Co=Object.getOwnPropertyDescriptor,ko=Object.getOwnPropertyDescriptors,Lo=Object.getOwnPropertyNames,F=Object.getOwnPropertySymbols;var te=Object.prototype.hasOwnProperty,be=Object.prototype.propertyIsEnumerable;var ye=(e,o,r)=>o in e?P(e,o,{enumerable:!0,configurable:!0,writable:!0,value:r}):e[o]=r,y=(e,o)=>{for(var r in o||(o={}))te.call(o,r)&&ye(e,r,o[r]);if(F)for(var r of F(o))be.call(o,r)&&ye(e,r,o[r]);return e},I=(e,o)=>Io(e,ko(o));var C=(e,o)=>{var r={};for(var n in e)te.call(e,n)&&o.indexOf(n)<0&&(r[n]=e[n]);if(e!=null&&F)for(var n of F(e))o.indexOf(n)<0&&be.call(e,n)&&(r[n]=e[n]);return r};var g=(e,o)=>()=>(e&&(o=e(e=0)),o);var So=(e,o)=>{for(var r in o)P(e,r,{get:o[r],enumerable:!0})},Ao=(e,o,r,n)=>{if(o&&typeof o=="object"||typeof o=="function")for(let _ of Lo(o))!te.call(e,_)&&_!==r&&P(e,_,{get:()=>o[_],enumerable:!(n=Co(o,_))||n.enumerable});return e};var wo=e=>Ao(P({},"__esModule",{value:!0}),e);function w(e,o){for(var r in o)e[r]=o[r];return e}function Te(e){var o=e.parentNode;o&&o.removeChild(e)}function p(e,o,r){var n,_,a,i={};for(a in o)a=="key"?n=o[a]:a=="ref"?_=o[a]:i[a]=o[a];if(arguments.length>2&&(i.children=arguments.length>3?$.call(arguments,2):r),typeof e=="function"&&e.defaultProps!=null)for(a in e.defaultProps)i[a]===void 0&&(i[a]=e.defaultProps[a]);return W(e,i,n,_,null)}function W(e,o,r,n,_){var a={type:e,props:o,key:r,ref:n,__k:null,__:null,__b:0,__e:null,__d:void 0,__c:null,__h:null,constructor:void 0,__v:_==null?++Ae:_};return _==null&&l.vnode!=null&&l.vnode(a),a}function K(e){return e.children}function O(e,o){this.props=e,this.context=o}function M(e,o){if(o==null)return e.__?M(e.__,e.__.__k.indexOf(e)+1):null;for(var r;o<e.__k.length;o++)if((r=e.__k[o])!=null&&r.__e!=null)return r.__e;return typeof e.type=="function"?M(e):null}function He(e){var o,r;if((e=e.__)!=null&&e.__c!=null){for(e.__e=e.__c.base=null,o=0;o<e.__k.length;o++)if((r=e.__k[o])!=null&&r.__e!=null){e.__e=e.__c.base=r.__e;break}return He(e)}}function Ce(e){(!e.__d&&(e.__d=!0)&&N.push(e)&&!j.__r++||Ie!==l.debounceRendering)&&((Ie=l.debounceRendering)||setTimeout)(j)}function j(){for(var e;j.__r=N.length;)e=N.sort(function(o,r){return o.__v.__b-r.__v.__b}),N=[],e.some(function(o){var r,n,_,a,i,d;o.__d&&(i=(a=(r=o).__v).__e,(d=r.__P)&&(n=[],(_=w({},a)).__v=a.__v+1,ae(d,a,_,r.__n,d.ownerSVGElement!==void 0,a.__h!=null?[i]:null,n,i==null?M(a):i,a.__h),De(n,a),a.__e!=i&&He(a)))})}function Ee(e,o,r,n,_,a,i,d,s,u){var t,x,f,c,m,T,h,b=n&&n.__k||we,L=b.length;for(r.__k=[],t=0;t<o.length;t++)if((c=r.__k[t]=(c=o[t])==null||typeof c=="boolean"?null:typeof c=="string"||typeof c=="number"||typeof c=="bigint"?W(null,c,null,null,c):Array.isArray(c)?W(K,{children:c},null,null,null):c.__b>0?W(c.type,c.props,c.key,c.ref?c.ref:null,c.__v):c)!=null){if(c.__=r,c.__b=r.__b+1,(f=b[t])===null||f&&c.key==f.key&&c.type===f.type)b[t]=void 0;else for(x=0;x<L;x++){if((f=b[x])&&c.key==f.key&&c.type===f.type){b[x]=void 0;break}f=null}ae(e,c,f=f||G,_,a,i,d,s,u),m=c.__e,(x=c.ref)&&f.ref!=x&&(h||(h=[]),f.ref&&h.push(f.ref,null,c),h.push(x,c.__c||m,c)),m!=null?(T==null&&(T=m),typeof c.type=="function"&&c.__k===f.__k?c.__d=s=Ne(c,s,e):s=Me(e,c,f,b,m,s),typeof r.type=="function"&&(r.__d=s)):s&&f.__e==s&&s.parentNode!=e&&(s=M(f))}for(r.__e=T,t=L;t--;)b[t]!=null&&Ue(b[t],b[t]);if(h)for(t=0;t<h.length;t++)Be(h[t],h[++t],h[++t])}function Ne(e,o,r){for(var n,_=e.__k,a=0;_&&a<_.length;a++)(n=_[a])&&(n.__=e,o=typeof n.type=="function"?Ne(n,o,r):Me(r,n,n,_,n.__e,o));return o}function ne(e,o){return o=o||[],e==null||typeof e=="boolean"||(Array.isArray(e)?e.some(function(r){ne(r,o)}):o.push(e)),o}function Me(e,o,r,n,_,a){var i,d,s;if(o.__d!==void 0)i=o.__d,o.__d=void 0;else if(r==null||_!=a||_.parentNode==null)e:if(a==null||a.parentNode!==e)e.appendChild(_),i=null;else{for(d=a,s=0;(d=d.nextSibling)&&s<n.length;s+=1)if(d==_)break e;e.insertBefore(_,a),i=a}return i!==void 0?i:_.nextSibling}function No(e,o,r,n,_){var a;for(a in r)a==="children"||a==="key"||a in o||q(e,a,null,r[a],n);for(a in o)_&&typeof o[a]!="function"||a==="children"||a==="key"||a==="value"||a==="checked"||r[a]===o[a]||q(e,a,o[a],r[a],n)}function ke(e,o,r){o[0]==="-"?e.setProperty(o,r):e[o]=r==null?"":typeof r!="number"||Eo.test(o)?r:r+"px"}function q(e,o,r,n,_){var a;e:if(o==="style")if(typeof r=="string")e.style.cssText=r;else{if(typeof n=="string"&&(e.style.cssText=n=""),n)for(o in n)r&&o in r||ke(e.style,o,"");if(r)for(o in r)n&&r[o]===n[o]||ke(e.style,o,r[o])}else if(o[0]==="o"&&o[1]==="n")a=o!==(o=o.replace(/Capture$/,"")),o=o.toLowerCase()in e?o.toLowerCase().slice(2):o.slice(2),e.l||(e.l={}),e.l[o+a]=r,r?n||e.addEventListener(o,a?Se:Le,a):e.removeEventListener(o,a?Se:Le,a);else if(o!=="dangerouslySetInnerHTML"){if(_)o=o.replace(/xlink(H|:h)/,"h").replace(/sName$/,"s");else if(o!=="href"&&o!=="list"&&o!=="form"&&o!=="tabIndex"&&o!=="download"&&o in e)try{e[o]=r==null?"":r;break e}catch(i){}typeof r=="function"||(r==null||r===!1&&o.indexOf("-")==-1?e.removeAttribute(o):e.setAttribute(o,r))}}function Le(e){this.l[e.type+!1](l.event?l.event(e):e)}function Se(e){this.l[e.type+!0](l.event?l.event(e):e)}function ae(e,o,r,n,_,a,i,d,s){var u,t,x,f,c,m,T,h,b,L,U,E,ve,V,z,k=o.type;if(o.constructor!==void 0)return null;r.__h!=null&&(s=r.__h,d=o.__e=r.__e,o.__h=null,a=[d]),(u=l.__b)&&u(o);try{e:if(typeof k=="function"){if(h=o.props,b=(u=k.contextType)&&n[u.__c],L=u?b?b.props.value:u.__:n,r.__c?T=(t=o.__c=r.__c).__=t.__E:("prototype"in k&&k.prototype.render?o.__c=t=new k(h,L):(o.__c=t=new O(h,L),t.constructor=k,t.render=Do),b&&b.sub(t),t.props=h,t.state||(t.state={}),t.context=L,t.__n=n,x=t.__d=!0,t.__h=[],t._sb=[]),t.__s==null&&(t.__s=t.state),k.getDerivedStateFromProps!=null&&(t.__s==t.state&&(t.__s=w({},t.__s)),w(t.__s,k.getDerivedStateFromProps(h,t.__s))),f=t.props,c=t.state,x)k.getDerivedStateFromProps==null&&t.componentWillMount!=null&&t.componentWillMount(),t.componentDidMount!=null&&t.__h.push(t.componentDidMount);else{if(k.getDerivedStateFromProps==null&&h!==f&&t.componentWillReceiveProps!=null&&t.componentWillReceiveProps(h,L),!t.__e&&t.shouldComponentUpdate!=null&&t.shouldComponentUpdate(h,t.__s,L)===!1||o.__v===r.__v){for(t.props=h,t.state=t.__s,o.__v!==r.__v&&(t.__d=!1),t.__v=o,o.__e=r.__e,o.__k=r.__k,o.__k.forEach(function(R){R&&(R.__=o)}),U=0;U<t._sb.length;U++)t.__h.push(t._sb[U]);t._sb=[],t.__h.length&&i.push(t);break e}t.componentWillUpdate!=null&&t.componentWillUpdate(h,t.__s,L),t.componentDidUpdate!=null&&t.__h.push(function(){t.componentDidUpdate(f,c,m)})}if(t.context=L,t.props=h,t.__v=o,t.__P=e,E=l.__r,ve=0,"prototype"in k&&k.prototype.render){for(t.state=t.__s,t.__d=!1,E&&E(o),u=t.render(t.props,t.state,t.context),V=0;V<t._sb.length;V++)t.__h.push(t._sb[V]);t._sb=[]}else do t.__d=!1,E&&E(o),u=t.render(t.props,t.state,t.context),t.state=t.__s;while(t.__d&&++ve<25);t.state=t.__s,t.getChildContext!=null&&(n=w(w({},n),t.getChildContext())),x||t.getSnapshotBeforeUpdate==null||(m=t.getSnapshotBeforeUpdate(f,c)),z=u!=null&&u.type===K&&u.key==null?u.props.children:u,Ee(e,Array.isArray(z)?z:[z],o,r,n,_,a,i,d,s),t.base=o.__e,o.__h=null,t.__h.length&&i.push(t),T&&(t.__E=t.__=null),t.__e=!1}else a==null&&o.__v===r.__v?(o.__k=r.__k,o.__e=r.__e):o.__e=Mo(r.__e,o,r,n,_,a,i,s);(u=l.diffed)&&u(o)}catch(R){o.__v=null,(s||a!=null)&&(o.__e=d,o.__h=!!s,a[a.indexOf(d)]=null),l.__e(R,o,r)}}function De(e,o){l.__c&&l.__c(o,e),e.some(function(r){try{e=r.__h,r.__h=[],e.some(function(n){n.call(r)})}catch(n){l.__e(n,r.__v)}})}function Mo(e,o,r,n,_,a,i,d){var s,u,t,x=r.props,f=o.props,c=o.type,m=0;if(c==="svg"&&(_=!0),a!=null){for(;m<a.length;m++)if((s=a[m])&&"setAttribute"in s==!!c&&(c?s.localName===c:s.nodeType===3)){e=s,a[m]=null;break}}if(e==null){if(c===null)return document.createTextNode(f);e=_?document.createElementNS("http://www.w3.org/2000/svg",c):document.createElement(c,f.is&&f),a=null,d=!1}if(c===null)x===f||d&&e.data===f||(e.data=f);else{if(a=a&&$.call(e.childNodes),u=(x=r.props||G).dangerouslySetInnerHTML,t=f.dangerouslySetInnerHTML,!d){if(a!=null)for(x={},m=0;m<e.attributes.length;m++)x[e.attributes[m].name]=e.attributes[m].value;(t||u)&&(t&&(u&&t.__html==u.__html||t.__html===e.innerHTML)||(e.innerHTML=t&&t.__html||""))}if(No(e,f,x,_,d),t)o.__k=[];else if(m=o.props.children,Ee(e,Array.isArray(m)?m:[m],o,r,n,_&&c!=="foreignObject",a,i,a?a[0]:r.__k&&M(r,0),d),a!=null)for(m=a.length;m--;)a[m]!=null&&Te(a[m]);d||("value"in f&&(m=f.value)!==void 0&&(m!==e.value||c==="progress"&&!m||c==="option"&&m!==x.value)&&q(e,"value",m,x.value,!1),"checked"in f&&(m=f.checked)!==void 0&&m!==e.checked&&q(e,"checked",m,x.checked,!1))}return e}function Be(e,o,r){try{typeof e=="function"?e(o):e.current=o}catch(n){l.__e(n,r)}}function Ue(e,o,r){var n,_;if(l.unmount&&l.unmount(e),(n=e.ref)&&(n.current&&n.current!==e.__e||Be(n,null,o)),(n=e.__c)!=null){if(n.componentWillUnmount)try{n.componentWillUnmount()}catch(a){l.__e(a,o)}n.base=n.__P=null,e.__c=void 0}if(n=e.__k)for(_=0;_<n.length;_++)n[_]&&Ue(n[_],o,r||typeof e.type!="function");r||e.__e==null||Te(e.__e),e.__=e.__e=e.__d=void 0}function Do(e,o,r){return this.constructor(e,r)}function Ve(e,o,r){var n,_,a;l.__&&l.__(e,o),_=(n=typeof r=="function")?null:r&&r.__k||o.__k,a=[],ae(o,e=(!n&&r||o).__k=p(K,null,[e]),_||G,G,o.ownerSVGElement!==void 0,!n&&r?[r]:_?null:o.firstChild?$.call(o.childNodes):null,a,!n&&r?r:_?_.__e:o.firstChild,n),De(a,e)}var $,l,Ae,To,N,Ie,Ho,G,we,Eo,S=g(()=>{G={},we=[],Eo=/acit|ex(?:s|g|n|p|$)|rph|grid|ows|mnc|ntw|ine[ch]|zoo|^ord|itera/i;$=we.slice,l={__e:function(e,o,r,n){for(var _,a,i;o=o.__;)if((_=o.__c)&&!_.__)try{if((a=_.constructor)&&a.getDerivedStateFromError!=null&&(_.setState(a.getDerivedStateFromError(e)),i=_.__d),_.componentDidCatch!=null&&(_.componentDidCatch(e,n||{}),i=_.__d),i)return _.__E=_}catch(d){e=d}throw e}},Ae=0,To=function(e){return e!=null&&e.constructor===void 0},O.prototype.setState=function(e,o){var r;r=this.__s!=null&&this.__s!==this.state?this.__s:this.__s=w({},this.state),typeof e=="function"&&(e=e(w({},r),this.props)),e&&w(r,e),e!=null&&this.__v&&(o&&this._sb.push(o),Ce(this))},O.prototype.forceUpdate=function(e){this.__v&&(this.__e=!0,e&&this.__h.push(e),Ce(this))},O.prototype.render=K,N=[],j.__r=0,Ho=0});function H(e){return e.filter(function(o){return o!==null}).join(" ")}var X=g(()=>{});function qe(e,o){l.__h&&l.__h(v,e,Z||o),Z=0;var r=v.__H||(v.__H={__:[],__h:[]});return e>=r.__.length&&r.__.push({__V:J}),r.__[e]}function le(e){return Z=1,Bo($e,e)}function Bo(e,o,r){var n=qe(ie++,2);if(n.t=e,!n.__c&&(n.__=[r?r(o):$e(void 0,o),function(a){var i=n.__N?n.__N[0]:n.__[0],d=n.t(i,a);i!==d&&(n.__N=[d,n.__[1]],n.__c.setState({}))}],n.__c=v,!v.u)){v.u=!0;var _=v.shouldComponentUpdate;v.shouldComponentUpdate=function(a,i,d){if(!n.__c.__H)return!0;var s=n.__c.__H.__.filter(function(t){return t.__c});if(s.every(function(t){return!t.__N}))return!_||_.call(this,a,i,d);var u=!1;return s.forEach(function(t){if(t.__N){var x=t.__[0];t.__=t.__N,t.__N=void 0,x!==t.__[0]&&(u=!0)}}),!(!u&&n.__c.props===a)&&(!_||_.call(this,a,i,d))}}return n.__N||n.__}function Uo(e,o){var r=qe(ie++,7);return Ro(r.__H,o)?(r.__V=e(),r.i=o,r.__h=e,r.__V):r.__}function D(e,o){return Z=8,Uo(function(){return e},o)}function Vo(){for(var e;e=je.shift();)if(e.__P&&e.__H)try{e.__H.__h.forEach(Y),e.__H.__h.forEach(ce),e.__H.__h=[]}catch(o){e.__H.__h=[],l.__e(o,e.__v)}}function zo(e){var o,r=function(){clearTimeout(n),Ge&&cancelAnimationFrame(o),setTimeout(e)},n=setTimeout(r,100);Ge&&(o=requestAnimationFrame(r))}function Y(e){var o=v,r=e.__c;typeof r=="function"&&(e.__c=void 0,r()),v=o}function ce(e){var o=v;e.__c=e.__(),v=o}function Ro(e,o){return!e||e.length!==o.length||o.some(function(r,n){return r!==e[n]})}function $e(e,o){return typeof o=="function"?o(e):o}var ie,v,_e,ze,Z,je,J,Re,Fe,Pe,We,Oe,Ge,fe=g(()=>{S();Z=0,je=[],J=[],Re=l.__b,Fe=l.__r,Pe=l.diffed,We=l.__c,Oe=l.unmount;l.__b=function(e){v=null,Re&&Re(e)},l.__r=function(e){Fe&&Fe(e),ie=0;var o=(v=e.__c).__H;o&&(_e===v?(o.__h=[],v.__h=[],o.__.forEach(function(r){r.__N&&(r.__=r.__N),r.__V=J,r.__N=r.i=void 0})):(o.__h.forEach(Y),o.__h.forEach(ce),o.__h=[])),_e=v},l.diffed=function(e){Pe&&Pe(e);var o=e.__c;o&&o.__H&&(o.__H.__h.length&&(je.push(o)!==1&&ze===l.requestAnimationFrame||((ze=l.requestAnimationFrame)||zo)(Vo)),o.__H.__.forEach(function(r){r.i&&(r.__H=r.i),r.__V!==J&&(r.__=r.__V),r.i=void 0,r.__V=J})),_e=v=null},l.__c=function(e,o){o.some(function(r){try{r.__h.forEach(Y),r.__h=r.__h.filter(function(n){return!n.__||ce(n)})}catch(n){o.some(function(_){_.__h&&(_.__h=[])}),o=[],l.__e(n,r.__v)}}),We&&We(e,o)},l.unmount=function(e){Oe&&Oe(e);var o,r=e.__c;r&&r.__H&&(r.__H.__.forEach(function(n){try{Y(n)}catch(_){o=_}}),r.__H=void 0,o&&l.__e(o,r.__v))};Ge=typeof requestAnimationFrame=="function"});var me,Ke=g(()=>{if(document.getElementById("1de8209ff1")===null){let e=document.createElement("style");e.id="1de8209ff1",e.textContent="._loadingIndicator_pl5c3_1{height:16px;margin:0 auto;position:relative;width:16px}._svg_pl5c3_8{fill:currentColor;animation:_rotating_pl5c3_1 .5s linear infinite;height:16px;left:0;position:absolute;top:0;width:16px}@keyframes _rotating_pl5c3_1{0%{transform:rotate(0deg)}to{transform:rotate(1turn)}}",document.head.append(e)}me={loadingIndicator:"_loadingIndicator_pl5c3_1",svg:"_svg_pl5c3_8",rotating:"_rotating_pl5c3_1"}});function Xe(r){var n=r,{color:e}=n,o=C(n,["color"]);return p("div",I(y({},o),{class:me.loadingIndicator}),p("svg",{class:me.svg,style:typeof e>"u"?void 0:{fill:`var(--figma-color-icon-${e})`}},p("path",{d:"M8 15C11.866 15 15 11.866 15 8C15 6.7865 14.6912 5.64511 14.1479 4.65013L15.0263 4.17174C15.6471 5.30882 16 6.6132 16 8C16 12.4183 12.4183 16 8 16C3.58172 16 0 12.4183 0 8C0 5.54138 1.10909 3.34181 2.85426 1.8743L3.47761 2.65678C1.96204 3.94081 1 5.85806 1 8C1 11.866 4.13401 15 8 15Z"})))}var Je=g(()=>{S();Ke()});var A,Ye=g(()=>{if(document.getElementById("31cfb3d9c5")===null){let e=document.createElement("style");e.id="31cfb3d9c5",e.textContent="._button_5fxgc_1{display:inline-block;position:relative;z-index:var(--z-index-1)}._fullWidth_5fxgc_7{display:block}._button_5fxgc_1 button{border-radius:var(--border-radius-6);display:inline-block;height:32px}._disabled_5fxgc_17 button{cursor:not-allowed}._fullWidth_5fxgc_7 button{display:block;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;width:100%}._default_5fxgc_29 button{background-color:var(--figma-color-bg-brand);border:2px solid transparent;color:var(--figma-color-text-onbrand);line-height:28px;padding:0 14px}._default_5fxgc_29:not(._disabled_5fxgc_17) button:focus{border-color:var(--figma-color-border-brand-strong)}._default_5fxgc_29._disabled_5fxgc_17 button{background-color:var(--figma-color-bg-disabled);color:var(--figma-color-text-ondisabled)}._default_5fxgc_29._danger_5fxgc_44 button{background-color:var(--figma-color-bg-danger);color:var(--figma-color-text-ondanger)}._default_5fxgc_29._danger_5fxgc_44:not(._disabled_5fxgc_17) button:focus{border-color:var(--figma-color-border-danger-strong)}._default_5fxgc_29._danger_5fxgc_44._disabled_5fxgc_17 button{background-color:var(--figma-color-bg-disabled);color:var(--figma-color-text-ondisabled)}._secondary_5fxgc_56 button{background-color:transparent;border:1px solid var(--figma-color-border-strong);color:var(--figma-color-text);line-height:30px;padding:0 15px}._secondary_5fxgc_56:not(._disabled_5fxgc_17) button:focus{border-color:var(--figma-color-border-brand-strong);border-width:2px;line-height:28px;padding:0 14px}._secondary_5fxgc_56._disabled_5fxgc_17 button{border-color:var(--figma-color-border-disabled-strong);color:var(--figma-color-text-disabled)}._secondary_5fxgc_56._danger_5fxgc_44 button{color:var(--figma-color-text-danger)}._secondary_5fxgc_56._danger_5fxgc_44 button,._secondary_5fxgc_56._danger_5fxgc_44:not(._disabled_5fxgc_17) button:focus{border-color:var(--figma-color-border-danger-strong)}._secondary_5fxgc_56._danger_5fxgc_44._disabled_5fxgc_17 button{border-color:var(--figma-color-border-disabled-strong);color:var(--figma-color-text-disabled)}._loadingIndicator_5fxgc_86{left:50%;pointer-events:none;position:absolute;top:50%;transform:translate(-50%,-50%)}._default_5fxgc_29 ._loadingIndicator_5fxgc_86{color:var(--figma-color-icon-onbrand)}._default_5fxgc_29._disabled_5fxgc_17 ._loadingIndicator_5fxgc_86{color:var(--figma-color-icon-ondisabled)}._default_5fxgc_29._danger_5fxgc_44 ._loadingIndicator_5fxgc_86{color:var(--figma-color-icon-ondanger)}._default_5fxgc_29._danger_5fxgc_44._disabled_5fxgc_17 ._loadingIndicator_5fxgc_86{color:var(--figma-color-icon-ondisabled)}._secondary_5fxgc_56 ._loadingIndicator_5fxgc_86{color:var(--figma-color-text)}._secondary_5fxgc_56._disabled_5fxgc_17 ._loadingIndicator_5fxgc_86{color:var(--figma-color-text-disabled)}._secondary_5fxgc_56._danger_5fxgc_44 ._loadingIndicator_5fxgc_86{color:var(--figma-color-text-danger)}._secondary_5fxgc_56._danger_5fxgc_44._disabled_5fxgc_17 ._loadingIndicator_5fxgc_86{color:var(--figma-color-text-disabled)}._children_5fxgc_122{display:inline}._loading_5fxgc_86 ._children_5fxgc_122{visibility:hidden}",document.head.append(e)}A={button:"_button_5fxgc_1",fullWidth:"_fullWidth_5fxgc_7",disabled:"_disabled_5fxgc_17",default:"_default_5fxgc_29",danger:"_danger_5fxgc_44",secondary:"_secondary_5fxgc_56",loadingIndicator:"_loadingIndicator_5fxgc_86",children:"_children_5fxgc_122",loading:"_loading_5fxgc_86"}});function Q(u){var t=u,{children:e,danger:o=!1,disabled:r=!1,fullWidth:n=!1,loading:_=!1,onClick:a,propagateEscapeKeyDown:i=!0,secondary:d=!1}=t,s=C(t,["children","danger","disabled","fullWidth","loading","onClick","propagateEscapeKeyDown","secondary"]);let x=D(function(f){f.key==="Escape"&&(i===!1&&f.stopPropagation(),f.currentTarget.blur())},[i]);return p("div",{class:H([A.button,d===!0?A.secondary:A.default,o===!0?A.danger:null,n===!0?A.fullWidth:null,r===!0?A.disabled:null,_===!0?A.loading:null])},_===!0?p("div",{class:A.loadingIndicator},p(Xe,null)):null,p("button",I(y({},s),{disabled:r===!0,onClick:r===!0||_===!0?void 0:a,onKeyDown:r===!0||_===!0?void 0:x,tabIndex:r===!0?-1:0}),p("div",{class:A.children},e)))}var Ze=g(()=>{S();fe();X();Je();Ye()});var ee,Qe=g(()=>{if(document.getElementById("79ac6b9560")===null){let e=document.createElement("style");e.id="79ac6b9560",e.textContent='._text_mh6mm_1{color:var(--figma-color-text);padding-top:1px;pointer-events:none;transform:translateY(4px)}._text_mh6mm_1:before{content:"";display:block;height:0;margin-top:-9px;pointer-events:none}._numeric_mh6mm_15{font-variant-numeric:tabular-nums}._left_mh6mm_19{text-align:left}._center_mh6mm_22{text-align:center}._right_mh6mm_25{text-align:right}',document.head.append(e)}ee={text:"_text_mh6mm_1",numeric:"_numeric_mh6mm_15",left:"_left_mh6mm_19",center:"_center_mh6mm_22",right:"_right_mh6mm_25"}});function pe(_){var a=_,{align:e="left",children:o,numeric:r=!1}=a,n=C(a,["align","children","numeric"]);return p("div",I(y({},n),{class:H([ee.text,ee[e],r===!0?ee.numeric:null])}),o)}var eo=g(()=>{S();X();Qe()});function oo(e,o){for(let r in de)de[r].name===e&&de[r].handler.apply(null,o)}var de,oe,ro=g(()=>{de={},oe=typeof window>"u"?function(e,...o){figma.ui.postMessage([e,...o])}:function(e,...o){window.parent.postMessage({pluginMessage:[e,...o]},"*")};typeof window>"u"?figma.ui.onmessage=function([e,...o]){oo(e,o)}:window.onmessage=function(e){if(typeof e.data.pluginMessage>"u")return;let[o,...r]=e.data.pluginMessage;oo(o,r)}});var to=g(()=>{ro()});var no,ao=g(()=>{if(document.getElementById("bc078b1e1c")===null){let e=document.createElement("style");e.id="bc078b1e1c",e.textContent="._muted_139yx_1{color:var(--figma-color-text-secondary)}",document.head.append(e)}no={muted:"_muted_139yx_1"}});function se(r){var n=r,{children:e}=n,o=C(n,["children"]);return p("span",I(y({},o),{class:no.muted}),e)}var _o=g(()=>{S();ao()});var re,co=g(()=>{if(document.getElementById("dcb08123e0")===null){let e=document.createElement("style");e.id="dcb08123e0",e.textContent="._columns_ybv3x_1{display:flex}._extraSmall_ybv3x_4{margin-left:calc(var(--space-extra-small)*-1)}._small_ybv3x_7{margin-left:calc(var(--space-small)*-1)}._medium_ybv3x_10{margin-left:calc(var(--space-medium)*-1)}._large_ybv3x_13{margin-left:calc(var(--space-large)*-1)}._extraLarge_ybv3x_16{margin-left:calc(var(--space-extra-large)*-1)}._child_ybv3x_20{flex-grow:1}._extraSmall_ybv3x_4>._child_ybv3x_20{padding-left:var(--space-extra-small)}._small_ybv3x_7>._child_ybv3x_20{padding-left:var(--space-small)}._medium_ybv3x_10>._child_ybv3x_20{padding-left:var(--space-medium)}._large_ybv3x_13>._child_ybv3x_20{padding-left:var(--space-large)}._extraLarge_ybv3x_16>._child_ybv3x_20{padding-left:var(--space-extra-large)}",document.head.append(e)}re={columns:"_columns_ybv3x_1",extraSmall:"_extraSmall_ybv3x_4",small:"_small_ybv3x_7",medium:"_medium_ybv3x_10",large:"_large_ybv3x_13",extraLarge:"_extraLarge_ybv3x_16",child:"_child_ybv3x_20"}});function ue(n){var _=n,{children:e,space:o}=_,r=C(_,["children","space"]);return p("div",I(y({},r),{class:H([re.columns,typeof o>"u"?null:re[o]])}),ne(e).map(function(a,i){return p("div",{key:i,class:re.child},a)}))}var io=g(()=>{S();X();co()});var lo,fo=g(()=>{if(document.getElementById("0ae0e3b0ac")===null){let e=document.createElement("style");e.id="0ae0e3b0ac",e.textContent="._extraSmall_1oe77_1{padding:0 var(--space-extra-small)}._small_1oe77_4{padding:0 var(--space-small)}._medium_1oe77_7{padding:0 var(--space-medium)}._large_1oe77_10{padding:0 var(--space-large)}._extraLarge_1oe77_13{padding:0 var(--space-extra-large)}",document.head.append(e)}lo={extraSmall:"_extraSmall_1oe77_1",small:"_small_1oe77_4",medium:"_medium_1oe77_7",large:"_large_1oe77_10",extraLarge:"_extraLarge_1oe77_13"}});function xe(r){var n=r,{space:e}=n,o=C(n,["space"]);return p("div",I(y({},o),{class:lo[e]}))}var mo=g(()=>{S();fo()});var po,so=g(()=>{if(document.getElementById("46b50f31fb")===null){let e=document.createElement("style");e.id="46b50f31fb",e.textContent="._extraSmall_zc4n0_1{height:var(--space-extra-small)}._small_zc4n0_4{height:var(--space-small)}._medium_zc4n0_7{height:var(--space-medium)}._large_zc4n0_10{height:var(--space-large)}._extraLarge_zc4n0_13{height:var(--space-extra-large)}",document.head.append(e)}po={extraSmall:"_extraSmall_zc4n0_1",small:"_small_zc4n0_4",medium:"_medium_zc4n0_7",large:"_large_zc4n0_10",extraLarge:"_extraLarge_zc4n0_13"}});function B(r){var n=r,{space:e}=n,o=C(n,["space"]);return p("div",I(y({},o),{class:po[e]}))}var uo=g(()=>{S();so()});var xo=g(()=>{if(document.getElementById("cd188661e4")===null){let e=document.createElement("style");e.id="cd188661e4",e.textContent='@import url("https://fonts.googleapis.com/css?family=Inter:400,600&display=swap");:root{--border-radius-2:2px;--border-radius-6:6px;--box-shadow:var(--box-shadow-menu);--box-shadow-menu:0 5px 17px rgba(0,0,0,.2),0 2px 7px rgba(0,0,0,.15),inset 0 0 0 0.5px #000,0 0 0 0.5px rgba(0,0,0,.1);--box-shadow-modal:0 2px 14px rgba(0,0,0,.15),0 0 0 0.5px rgba(0,0,0,.2);--font-family:"Inter","Helvetica",sans-serif;--font-family-code:SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;--font-size-11:11px;--font-size-12:12px;--font-weight-regular:400;--font-weight-bold:600;--line-height-16:16px;--opacity-30:0.3;--space-extra-small:8px;--space-small:12px;--space-medium:16px;--space-large:20px;--space-extra-large:24px;--z-index-1:1;--z-index-2:2}.figma-dark{color-scheme:dark}*{border:0 solid;box-sizing:border-box}body{background-color:var(--figma-color-bg);color:var(--figma-color-text);font-family:var(--font-family);font-size:var(--font-size-11);font-weight:var(--font-weight-regular);line-height:var(--line-height-16);margin:0}div,span{cursor:default;user-select:none}h1,h2,h3{font-weight:inherit;margin:0}button{-webkit-appearance:none;background-color:transparent;border:0;font:inherit;outline:0;padding:0}hr{border:0;margin:0}label{display:block}input,textarea{-webkit-appearance:none;border:0;cursor:default;font:inherit;margin:0;outline:0;padding:0}svg{display:block}::selection{background-color:var(--figma-color-bg-onselected)}',document.head.append(e)}});function ge(e){return function(o,r){Ve(p(e,y({},r)),o)}}var go=g(()=>{xo();S()});var ho=g(()=>{Ze();eo();_o();io();mo();uo();go()});var vo={};So(vo,{default:()=>Po});function Fo(){let[e,o]=le(2),[r,n]=le("2"),_=D(function(){e!==null&&oe("CREATE_DESIGN",e)},[e]),a=D(function(){oe("CLOSE")},[]);return p(xe,{space:"medium"},p(B,{space:"large"}),p(pe,null,p(se,null,"Create Designs From Database Schema")),p(B,{space:"extraLarge"}),p(ue,{space:"extraSmall"},p(Q,{fullWidth:!0,onClick:_},"Create"),p(Q,{fullWidth:!0,onClick:a,secondary:!0},"Close")),p(B,{space:"small"}))}var Po,yo=g(()=>{"use strict";ho();to();S();fe();Po=ge(Fo)});var Wo=document.getElementById("create-figma-plugin"),bo={"src/main.ts--default":(yo(),wo(vo)).default},he=__FIGMA_COMMAND__===""?"src/main.ts--default":__FIGMA_COMMAND__;if(typeof bo[he]>"u")throw new Error("No UI defined for command `"+he+"`");bo[he](Wo,__SHOW_UI_DATA__);})();