"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[295],{72917:(e,t,a)=>{a.d(t,{c:()=>s});var n=a(67294),l=a.n(n),r=a(76439),i=a(20657),o=a(56802),c=a(61290);const s=({id:e,children:t,targetURI:a})=>{const s=(0,n.useCallback)((()=>{const e=new URL("go",window.location.origin);e.searchParams.set("uri",a.toURI()),e.searchParams.set("rtd","1"),window.open(e.href)}),[a]),m={getTitle:()=>i.ag.get("action-trigger.available-in-app-only"),getDescription:()=>i.ag.get("action-trigger.listen-mixed-media-episode"),primaryButtonText:()=>i.ag.get("action-trigger.button.get-app"),secondaryButtonText:()=>i.ag.get("action-trigger.button.not-now"),isCTA:!0,intentPrimaryButton:"download-app",onLogInteraction:(0,o.o)()};return l().createElement(r.P,{className:c.Z.container,id:e,onPrimaryButtonClick:s,options:m},t)}},90110:(e,t,a)=>{a.d(t,{q:()=>C,o:()=>_});var n=a(67294),l=a.n(n),r=a(69518),i=a.n(r),o=a(50020),c=a(96895),s=a(24656),m=a(69010),u=a(94184),d=a.n(u);const g="l_MW0G9qeeCKlVJwBykT",p="BKsbV2Xl786X9a09XROH",h="HbKLiGoYM4dpuK8L4TMX",b="_APVWqivXc4YqgsnpFkP",E="VmwiDoU6RpqyzK_n7XRO",v="rEx3EYgBzS8SoY7dmC6x",y="z3zia5snl987x676qe5w";var f=a(6116),w=a(20657),k=a(40080),N=a(38209);var O=a(80946),D=a(83692);let C;!function(e){e[e.sm=24]="sm",e[e.md=32]="md"}(C||(C={}));const L=e=>{const{currentTarget:t,detail:a}=e;a>0&&t&&t.blur()},_=({uri:e,isFollowing:t,onFollow:a,size:r=C.sm,className:u})=>{const _={"--size":`${r}px`},{useDownloading:x,useDownloadCapability:S}=(0,n.useContext)(s.I),[P,T]=(0,n.useState)(!1),[j,A]=S(i().isEpisode(e)),[I,B]=(0,n.useState)(!1),{currentAvailability:M,progress:R,beginDownload:z,clearDownload:X}=x(e);((e,t)=>{const a=(0,N.r)(),l=(0,n.useRef)(!1);(0,n.useEffect)((()=>{e===m.V8.DOWNLOADING&&!1===l.current&&(l.current=!0,a.say(w.ag.get("download.downloading",t.totalItems)))}),[a,e,t]);const r=(0,k.D)(e);(0,n.useEffect)((()=>{r===m.V8.DOWNLOADING&&e===m.V8.YES&&(l.current=!1,a.say(w.ag.get("download.complete")))}),[a,r,e])})(M,R);const q=(0,n.useCallback)((e=>{A===m.v$.DOWNLOADING_NOT_ALLOWED?B(!0):!1===t?(a(),T(!0)):z(),L(e)}),[z,A,t,a]),W=(0,n.useCallback)((e=>{X(),L(e)}),[X]);return(0,n.useEffect)((()=>{!0===P&&!0===t&&(z(),T(!1))}),[t,P,z]),j===m.PQ.NO_DOWNLOAD_CAPABILITY?null:A===m.v$.DOWNLOADING_NOT_ALLOWED?l().createElement("div",{className:p},l().createElement(D.w,{label:w.ag.get("download.download")},l().createElement("button",{className:d()(h,u),role:"switch",onClick:q,"aria-label":w.ag.get("download.download"),"aria-checked":!1},l().createElement(o.a,{iconSize:r}))),I&&l().createElement("div",{className:y},l().createElement(O.E,{withTopLeftPointer:!0,horizontal:!0,onClose:()=>{B(!1)}},w.ag.get("download.upsell")))):M===m.V8.YES?l().createElement(D.w,{label:w.ag.get("download.remove")},l().createElement("button",{className:d()(h,u,b),role:"switch",onClick:W,"aria-label":w.ag.get("download.remove"),"aria-checked":!0},l().createElement(c.C,{iconSize:r}))):M===m.V8.NO?l().createElement(D.w,{label:w.ag.get("download.download")},l().createElement("button",{className:d()(h,u),role:"switch",onClick:q,"aria-label":w.ag.get("download.download"),"aria-checked":!1},l().createElement(o.a,{iconSize:r}))):l().createElement("div",{className:d()(E,u),role:"switch","aria-checked":!0},l().createElement(D.w,{label:w.ag.get("download.cancel")},l().createElement("button",{style:_,className:d()(h,g,u),onClick:W,"aria-label":w.ag.get("download.cancel")})),l().createElement("span",{style:_,className:d()(v,g)},l().createElement(f.e,{"aria-valuetext":w.ag.get("progress.downloading-tracks"),percentage:R.percentage,size:r})))}},37483:(e,t,a)=>{a.d(t,{p:()=>u,q:()=>i.q});var n=a(67294),l=a.n(n),r=a(65858),i=a(90110),o=a(56802),c=a(8475),s=a(4383);const m=l().memo((({uri:e,size:t=i.q.md,className:a})=>{const[m,u]=(0,s.Z)(e),d=(0,r.I0)(),g=(0,o.o)(),p=(0,n.useCallback)((()=>{g({targetUri:e,intent:m?"remove-from-library":"add-to-library",type:"click"}),u(!m),d(m?(0,c.SS)():(0,c.kK)())}),[g,e,m,u,d]);return l().createElement(i.o,{className:a,isFollowing:m,onFollow:p,uri:e,size:t})})),u=l().memo((e=>l().createElement(m,e)))},70369:(e,t,a)=>{a.d(t,{$:()=>n.$});var n=a(22578)},30247:(e,t,a)=>{a.d(t,{s:()=>E});var n=a(42781),l=a(23716),r=a(69691),i=a(56802),o=a(67294),c=a(59713),s=a.n(c);const m=e=>e<=64?"small":e>640?"xlarge":e>300?"large":"standard";function u(e,t){return e.filter((e=>e.label?e.label===t:e.width?m(e.width)===t:!!e.height&&m(e.height)===t))[0]}var d=a(67789),g=a(88522);function p(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function h(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?p(Object(a),!0).forEach((function(t){s()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):p(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}function b(e){var t,a,n,l,r,i,o,c;const s=u(e,"standard"),m=u(e,"large"),d=u(e,"small"),g=u(e,"xlarge");return{image_url:null==s?void 0:s.url,image_height:null==s||null===(t=s.height)||void 0===t?void 0:t.toString(),image_width:null==s||null===(a=s.width)||void 0===a?void 0:a.toString(),image_url_large:null==m?void 0:m.url,image_height_large:null==m||null===(n=m.height)||void 0===n?void 0:n.toString(),image_width_large:null==m||null===(l=m.width)||void 0===l?void 0:l.toString(),image_url_small:null==d?void 0:d.url,image_height_small:null==d||null===(r=d.height)||void 0===r?void 0:r.toString(),image_width_small:null==d||null===(i=d.width)||void 0===i?void 0:i.toString(),image_url_xlarge:null==g?void 0:g.url,image_height_xlarge:null==g||null===(o=g.height)||void 0===o?void 0:o.toString(),image_width_xlarge:null==g||null===(c=g.width)||void 0===c?void 0:c.toString()}}function E(e,t){const a=(0,i.o)(),c=(0,l.g)(),{isPlaying:s,isActive:m}=(0,r.$o)((null==e?void 0:e.uri)||""),{isActive:u}=(0,r.cR)((null==t?void 0:t.uri)||"");return(0,o.useCallback)((l=>{if(!t||!e)return;const r=function(e,t){var a,n,l,r;const i=(0,g.l)((null===(a=e.coverArt)||void 0===a?void 0:a.sources)||[]),o=(0,d.Xb)(e,t),c=(0,d.Ie)(t)||o;return h(h({uri:e.uri,title:e.name,subtitle:t.name,type:"episode",album_uri:t.uri,album_title:t.name,artist_uri:t.uri,artist_name:t.name},b(i)),{},{media_type:"audio",externalResolvedUrl:null===(n=e.audio)||void 0===n||null===(l=n.items)||void 0===l||null===(r=l.find((e=>e.externallyHosted)))||void 0===r?void 0:r.url,isTrailer:o,anonymousPlaybackAllowed:c})}(e,t);u&&!s&&m&&!l?c.resume():u&&s&&!l?(a({type:"click",intent:"pause",targetUri:e.uri}),c.pause()):(a({type:"click",intent:"play",targetUri:e.uri}),c.play({uri:t.uri,pages:[{items:[{type:n.p.EPISODE,uri:e.uri,uid:null,metadata:r,provider:null}]}]},{referrerIdentifier:c.getReferrer(),featureIdentifier:"episode"},l))}),[m,s,u,c,a,t,e])}},38894:(e,t,a)=>{a.d(t,{g:()=>r});var n=a(65858),l=a(29255);const r=()=>(0,n.v9)(l.Gg).isAnonymous},20238:(e,t,a)=>{a.d(t,{o:()=>z});var n=a(59713),l=a.n(n),r=a(67294),i=a.n(r),o=a(20657);const c="CTqnyEX1E8bCstZSENX_",s="wuGkmgD03o8t6Ekc6PUk",m="l1ZEvEBLXHaRxKZTgG2Q",u="KXlcyuHuR1UPYVsnF3zF";var d=a(69559),g=a(76343),p=a(52865),h=a(58548);const b=/(\((?:[0-9]{1,3}:){1,2}[0-9]{2}\))/g;function E(e){return e.split(b).map((e=>{if(e.match(b)){return`(<time>${e.replace("(","").replace(")","")}</time>)`}return e})).join("")}const v=i().memo((({text:e,onTimeStampClick:t,children:a,className:n,LinkComponent:l,enableTimestamps:o=!1})=>{const c=(0,r.useMemo)((()=>{const a=(0,p.ZU)(e),n=o?E(a):a;return i().createElement(h.NB,{source:n,LinkComponent:l,onTimeStampClick:t})}),[e,o,l,t]);return i().createElement(g.Dy,{as:"p",variant:g.$e.ballad,className:n},c,a)})),y="AFGg70Z_GfjSDTYBWyEq",f=i().memo((({text:e,onTimeStampClick:t,onToggle:a,className:n,LinkComponent:l,enableTimestamps:r})=>i().createElement(v,{className:n,text:e,onTimeStampClick:t,LinkComponent:l,enableTimestamps:r},i().createElement("button",{"aria-expanded":!1,className:y,onClick:a},i().createElement(g.Dy,{variant:g.$e.balladBold},"… ",o.ag.get("mwp.see.more")))))),w=(e,t,a)=>{const n=o.ag.get("mwp.see.more").length,l=e.length+n+6;return a<=1&&l<t},k=i().memo((({paragraphs:e,clickHandler:t,maxCharactersPerLine:a,maxLines:n,toggleExpandedState:l,LinkComponent:r,className:c,enableTimestamps:s})=>{let m=!1,u=0;const d=e.map(((d,g)=>{const p=Math.round(d.length/a);if(u+=p>0?p:1,m)return null;const h=n-(u-p);if(g+1===e.length&&(w(d,a,h)||p<=h))return i().createElement(v,{className:c,text:d,onTimeStampClick:t,LinkComponent:r,enableTimestamps:s,key:g});if(u>=n){m=!0;const e=((e,t,a)=>{const n=o.ag.get("mwp.see.more").length;if(w(e,t,a))return e;const l=t*a-n-6;return e.slice(0,l)})(d,a,h);return i().createElement(f,{key:g,text:e,onTimeStampClick:t,onToggle:l,className:c,LinkComponent:r,enableTimestamps:s})}return i().createElement(v,{className:c,text:d,onTimeStampClick:t,LinkComponent:r,enableTimestamps:s,key:g})}));return i().createElement(i().Fragment,null,d)}));var N=a(65598),O=a.n(N),D=a(73012),C=a(67892);const L="xgmjVLxjqfcXK5BV_XyN",_="QD13ZfPiO5otS0PU89wG",x="ZbLneLRe2x_OBOYZMX3M",S="rjdQaIDkSgcGmxkdI2vU";var P=a(19594);const T=i().memo((({html:e,onTimeStampClick:t,enableTimestamps:a=!1})=>{const n=(0,r.useMemo)((()=>{const n=a?E(e):e;return O()(n,{transform:j(t),dangerouslySetChildren:[]})}),[a,e,t]);return i().createElement("div",{className:L},n)}));function j(e){let t=0;return{p:e=>i().createElement(g.Dy.p,{variant:g.Dy.ballad,color:D.nh1},e.children),a:e=>e.href?i().createElement(C.r,{to:e.href},e.children):i().createElement(i().Fragment,null,e.children),ul:e=>i().createElement("ul",{className:x},e.children),ol:e=>i().createElement("ol",{className:x},e.children),li:e=>i().createElement(g.Dy.li,{variant:g.Dy.ballad,color:D.nh1,className:S},e.children),br:()=>i().createElement("br",null),h1:e=>i().createElement(g.Dy.h1,{variant:g.Dy.balladBold,color:D.nh1,className:_},e.children),h2:e=>i().createElement(g.Dy.h2,{variant:g.Dy.balladBold,color:D.nh1,className:_},e.children),h3:e=>i().createElement(g.Dy.h3,{variant:g.Dy.balladBold,color:D.nh1,className:_},e.children),h4:e=>i().createElement(g.Dy.h4,{variant:g.Dy.balladBold,color:D.nh1,className:_},e.children),h5:e=>i().createElement(g.Dy.h5,{variant:g.Dy.balladBold,color:D.nh1,className:_},e.children),h6:e=>i().createElement(g.Dy.h6,{variant:g.Dy.balladBold,color:D.nh1,className:_},e.children),time:t=>i().createElement(P.E,{onClick:e},t.children),_:(e,a,n)=>{const l=void 0===a?e:n;return i().createElement(i().Fragment,{key:"fragment"+t++},l)}}}function A(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function I(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?A(Object(a),!0).forEach((function(t){l()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):A(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}const B={isOpen:!1,contentWidth:0},M=(e,t)=>I(I({},e),t),R=(e="")=>e.split(/[ \u00a0]{2}/).filter(Boolean),z=i().memo((({content:e,htmlContent:t,maxLines:a=2,className:n,onTimeStampClick:l=(()=>{}),LinkComponent:p,onExpanded:h,enableTimestamps:b=!1})=>{const[E,y]=(0,r.useReducer)(M,B),{isOpen:f,contentWidth:w}=E,N=(0,r.useCallback)((()=>{y({isOpen:!f}),h&&h(!f)}),[f,h]);(0,r.useEffect)((()=>{y({isOpen:!1})}),[e]);const O=w?w/7.8:Number.MAX_VALUE,D=(0,r.useRef)(null),C=(0,r.useCallback)((e=>{e&&(D.current=e,y({contentWidth:e.clientWidth}))}),[]),L=(0,r.useMemo)((()=>t?i().createElement(T,{html:t,onTimeStampClick:l,enableTimestamps:b}):((e,t,a,n)=>R(e).map(((e,l)=>i().createElement(v,{className:s,text:e,onTimeStampClick:t,enableTimestamps:a,LinkComponent:n,key:l}))))(e,l,b,p)),[p,e,b,t,l]),_=(0,r.useMemo)((()=>t?((e="")=>e.replace("<p>","").split(/(?:<\/p>)/).filter(Boolean))(t):R(e)),[e,t]);return(0,d.a)((()=>{D.current&&y({contentWidth:D.current.clientWidth})})),i().createElement("div",{className:n},i().createElement("div",{ref:C,className:c},f&&i().createElement(i().Fragment,null,L,i().createElement("button",{"aria-expanded":!0,className:u,onClick:N},i().createElement(g.Dy,{className:m,variant:g.$e.balladBold},o.ag.get("show_less")))),!f&&i().createElement(k,{className:s,paragraphs:_,LinkComponent:p,clickHandler:l,enableTimestamps:b,maxCharactersPerLine:O,maxLines:a,toggleExpandedState:N})))}))},40080:(e,t,a)=>{a.d(t,{D:()=>l});var n=a(67294);function l(e){const t=(0,n.useRef)();return(0,n.useEffect)((()=>{t.current=e}),[e]),t.current}},88522:(e,t,a)=>{function n(e){return e.sort(((e,t)=>(t.width||0)-(e.width||0)))}a.d(t,{l:()=>n})},92408:(e,t,a)=>{a.d(t,{E:()=>_,$:()=>L});var n=a(67294),l=a.n(n),r=a(43315),i=a(59713),o=a.n(i);const c="wIA_5Ypq0rltNPeZQpM4",s="Swi6YtNEFCCVz8l4y75v",m="pklLPOhfigdytL9bPoth",u="sb24Y8kdMZInJ8aI8dXT";a(45697);class d extends n.PureComponent{render(){const{ariaValueText:e,max:t,current:a}=this.props,n=t&&a?100*Math.min(1,a/t):0,r={transform:`translateX(-${100-n}%)`},i=e||`${Math.round(n)}%`;return l().createElement("div",{className:c,role:"progressbar",tabIndex:0,"aria-valuenow":a,"aria-valuemin":0,"aria-valuemax":t,"aria-valuetext":i},l().createElement("div",{className:s}),l().createElement("div",{className:m},l().createElement("div",{className:u,style:r})))}}o()(d,"defaultProps",{current:0,max:1});const g=d,p="qfYkuLpETFW3axnfMntO",h="jOd7lbjiyc_kvRJaAbeL",b="_q93agegdE655O5zPz6l",E="z7Yl7CIT1AB0y91f_moh",v="iLIlkUcfIq56KncGtX7u",y="nV50yZ6BR_TIuWP3l7b1",f="qLjIx_SzBEpDRA_q7kxQ";var w=a(40378),k=a(20657),N=a(76343),O=a(94184),D=a.n(O),C=a(6695);let L;!function(e){e[e.LARGE=0]="LARGE",e[e.SMALL=1]="SMALL"}(L||(L={}));const _=e=>{const{resumePositionMs:t=0,releaseDate:a,isPlaying:n,fullyPlayed:i,durationMs:o,size:c=L.SMALL,position:s=t}=e;return l().createElement("div",{className:D()(p,{[h]:c===L.LARGE})},a?l().createElement(N.Dy.p,{variant:N.$e.mesto,className:b},(0,r.rL)((0,r.RX)(a))):null,(()=>{if(i&&!n)return l().createElement("div",{className:v},l().createElement(N.Dy.p,{variant:N.$e.mesto,className:E},k.ag.get("episode.played")),l().createElement(w.R,{iconSize:16,className:f}));if(s>0||n){const e=Math.ceil(Math.max(o-s,0));return l().createElement("div",{className:v},l().createElement(N.Dy.p,{variant:N.$e.mesto,className:E},l().createElement(C.ng,{durationMs:e})))}return l().createElement(N.Dy.p,{variant:N.$e.mesto,className:b},l().createElement(C.nL,{durationMs:o}))})(),!i&&s>0||n?l().createElement("div",{className:y},l().createElement(g,{current:s,max:o,isEnabled:!1})):null)}}}]);
//# sourceMappingURL=295.js.map