"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[188],{85404:(e,t,a)=>{a.d(t,{K:()=>v});var n=a(67154),r=a.n(n),l=a(6479),o=a.n(l),s=a(67294),c=a.n(s),i=a(99450),d=a(76343);const m="G8b_VGQSxRwZSatAhUTd";var u=a(94184),h=a.n(u);const p=["children","data-testid","className"];function v(e){let{children:t,"data-testid":a,className:n}=e,l=o()(e,p);return c().createElement("div",{className:h()(m,n),"data-testid":a},c().createElement(i.D,r()({},l,{buttonSize:l.buttonSize||i.D.sm}),c().createElement(d.Dy,{variant:d.Dy.mestoBold},t)))}},49188:(e,t,a)=>{a.r(t),a.d(t,{ShowSponsorsPreviewWithData:()=>k,default:()=>C});var n=a(59713),r=a.n(n),l=a(67294),o=a.n(l),s=a(74820);const c="RnqjezHOt23z2EKd7j_l",i="M33ItRKEoYWPnq4DwL8n",d="KfQ2IK1i8BYSRgl3VYf4",m="Re1JThkswwaLzRdqavcO",u="uvrjZps73BZs41Z_0JcP",h="w2tPVFzE6CB2GFDWFwlE";var p=a(82716),v=a(76343),f=a(85404),S=a(67154),w=a.n(S),g=a(94184),E=a.n(g),A=a(40160);const y="38px";const b="GoBUqE90bjUv_7ndH9Fw";function O(e){return o().createElement("span",w()({},e,{className:E()(b,e.className)}))}function P({thereIsOnlyASingleShowSponsor:e,firstShowSponsor:t,showSponsorsDataThatActuallyGetDisplayedInPreview:a,numberOfHiddenSponsors:n}){return o().createElement(v.Dy,{variant:v.Dy.viola,className:E()(i,{[m]:e})},"Sponsored by"," ",e?o().createElement(O,null,t.metadata.advertiser):o().createElement(o().Fragment,null,a.length>2?a.slice(0,-2).flatMap(((e,t)=>[o().createElement(O,{key:`advertiser ${e.metadata.creativeId||e.metadata.creative_id||e.metadata.advertiser} - ${t}`},e.metadata.advertiser),", "])):"",n?o().createElement(o().Fragment,null,o().createElement(O,null,a[a.length-2].metadata.advertiser),","," ",o().createElement(O,null,a[a.length-1].metadata.advertiser)," ","and more"):o().createElement(o().Fragment,null,o().createElement(O,null,a[a.length-2].metadata.advertiser)," ","and"," ",o().createElement(O,null,a[a.length-1].metadata.advertiser)),"."))}function D(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function k(e){const{showSponsorsData:t,showId:n}=e,i=(0,s.D)(n),m=(0,l.useMemo)((()=>t.length>6?t.length-5:0),[t]),S=(0,l.useMemo)((()=>t.slice(0,m?5:6)),[t,m]),g=1===S.length,b=S[0];(0,l.useEffect)((function(){g&&S.forEach((({trackingEvents:e})=>null==e?void 0:e.viewed.forEach((e=>fetch(e)))))}),[g,S]);const O=(0,l.useCallback)((async t=>{const[{getEventSenderInstance:n},{createPodcastAdCtaCardEvent:l}]=await Promise.all([Promise.resolve().then(a.bind(a,24872)),a.e(814).then(a.bind(a,1486))]);return n().send(l(function(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?D(Object(a),!0).forEach((function(t){r()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):D(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}({uri:e.uri,reason:"Show page",lineitem_id:S.map((e=>e.metadata.lineitemId))},t)))}),[e.uri,S]);(0,l.useEffect)((function(){O()}),[e.showSponsorsData,O]);const k=function({thereIsOnlyASingleShowSponsor:e,props:t,allShowSponsorsPathname:a,sendPodcastAdCtaCardEventForShowSponsorsPreview:n,firstShowSponsor:r}){return(0,l.useMemo)((()=>{const l=E()(c,{[d]:e}),s={"--max-sponsors-to-display-in-preview":6,"--logo-size":y};return e?e=>o().createElement("a",w()({href:r.metadata.clickthroughUrl,className:l,style:s},e,{onClick:function(t){var a,l,o;null===(a=e.onClick)||void 0===a||a.call(e,t),null===(l=r.trackingEvents)||void 0===l||null===(o=l.clicked)||void 0===o||o.forEach((e=>fetch(e))),n({ui_navigate:[r.clickthrough],navigate_to_external_uri:[!0]})}}),e.children):e=>o().createElement(A.rU,w()({className:l,style:s,to:{pathname:a,state:t}},e,{onClick:function(t){var a;null===(a=e.onClick)||void 0===a||a.call(e,t),n({cta_card_see_all:!0})}}))}),[e,t,a,n,r])}({thereIsOnlyASingleShowSponsor:g,props:e,allShowSponsorsPathname:i,sendPodcastAdCtaCardEventForShowSponsorsPreview:O,firstShowSponsor:b});return o().createElement(k,null,null==S?void 0:S.map(((e,t)=>o().createElement(p.Ee,{key:`logo image ${e.metadata.creativeId||e.metadata.creative_id||e.metadata.advertiser} - ${t}`,src:e.metadata.logoImage,placeholderSrc:"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mP8LwkAAh0BGumlBj4AAAAASUVORK5CYII=",alt:e.metadata.advertiser,imageWidth:y,imageHeight:y,className:u,crop:!0}))),m?o().createElement(v.Dy,{className:h,variant:v.Dy.viola},"+",m):null,o().createElement(P,{thereIsOnlyASingleShowSponsor:g,firstShowSponsor:b,showSponsorsDataThatActuallyGetDisplayedInPreview:S,numberOfHiddenSponsors:m}),g?o().createElement(f.K,null,b.metadata.buttonMessage):null)}const C=k}}]);
//# sourceMappingURL=188.js.map