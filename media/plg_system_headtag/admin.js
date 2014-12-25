var HeadTag = new Class({
    Implements:[Events,Options],
    options: {
        elparent:'div.control-group'
    },
    rules:{},
    initialize:function(options){
        var self = this;
        self.setOptions(options);
        self.options.elparent = $$('div.control-group').length?'div.control-group':'li';
        var upgrade = document.id('jform_params_rules').value.trim();
        if(upgrade.length) {
            document.id('jform_params_menuitemrules').value = document.id('jform_params_rules').value;
            document.id('jform_params_rules').value = '';
        }
        Array.each(['menuitem','accesslevel','usergroup'],function(group){            
            self.hidefields(group);
            self[group+'rules'] = JSON.decode(document.id('jform_params_'+group+'rules').value);
            var selectlist = document.id('jform_params_'+group);
            if(selectlist === null) selectlist = document.id('jformparams'+group)?document.id('jformparams'+group):document.id('jform_params_'+group);
            if(jQuery) jQuery(selectlist).chosen('destroy');
            selectlist.getElement('option').selected = true;
            self.listrules(group);
            $$('.headtag'+group).each(function(el){
                el.addEvent('change',function(){
                    self.showfields(group);
                });
            });
            $$('.headtag'+group+'linktype').each(function(el){
                el.addEvent('change',function(){
                    self.showfields(group);
                });
            });
            document.id('jform_params_'+group+'add').addEvent('click',function(){self.additem(group);return false;});
            document.id('jform_params_'+group+'update').addEvent('click',function(){self.updateitem(group);return false;});
            document.id('jform_params_'+group+'remove').addEvent('click',function(){self.removeitem(group);return false;});
            document.id('jform_params_'+group+'rules').getParent(self.options.elparent).hide();
        });
    },
    hidefields:function(group){
        var self = this;
        Array.each(['linktype','linkfile','codeeditor','customtag'],function(field){
            document.id('jform_params_'+group+field+'-lbl').getParent(self.options.elparent).hide();
        });
        var selectlist = document.id('jform_params_'+group);
        if(selectlist === null) selectlist = document.id('jformparams'+group)?document.id('jformparams'+group):document.id('jform_params_'+group);
        selectlist.disabled = false;
        document.id('jform_params_'+group+'add').getParent(self.options.elparent).hide();
        document.id('jform_params_'+group+'update').getParent(self.options.elparent).hide();
        document.id('jform_params_'+group+'remove').getParent(self.options.elparent).hide();
        self.listrules(group);
    },
    showfields:function(group){
        var self = this;
        self.hidefields(group);
        var selectlist = document.id('jform_params_'+group);
        if(selectlist === null) selectlist = document.id('jformparams'+group)?document.id('jformparams'+group):document.id('jform_params_'+group);
        $$('.rule').each(function(rel){ rel.setStyle('color','#000'); });
        document.id('jform_params_'+group+'codeeditor').value = '';
        document.id('jform_params_'+group+'linkfile').value = '';
        document.id('jform_params_'+group+'customtag').value = '';
        document.id('jform_params_'+group+'rulekey').value = 0;
        if(selectlist.getSelected()[0].value === '') return;
        document.id('jform_params_'+group+'linktype').getParent(self.options.elparent).show();
        var selected = document.id('jform_params_'+group+'linktype').getSelected()[0].value;
        Array.each($$('.'+group+'.'+selected),function(el) { el.getParent(self.options.elparent).show(); });              
        document.id('jform_params_'+group+'add').getParent(self.options.elparent).show();
    },
    listrules:function(group){
        var self = this;
        var displaybox = document.id('jform_params_'+group+'ruledisplay');
        displaybox.setStyles({'clear':'both','margin':'20px'});
        displaybox.empty();
        var ruledisplay;
        var selectlist = document.id('jform_params_'+group);
        if(selectlist === null) selectlist = document.id('jformparams'+group)?document.id('jformparams'+group):document.id('jform_params_'+group);
        if(selectlist.getSelected()[0].value === '') {
            ruledisplay = new Element('ol').inject(displaybox,'bottom');
            Object.each(self[group+'rules'],function(value,key){
                self.addrules(ruledisplay,value,key,group);
            });
        } else {
            var showall = new Element('a',{
                html:Joomla.JText._('PLG_SYS_HEADTAG_SHOWALL')
            }).inject(displaybox,'bottom');
            showall.addEvent('click',function(){
                selectlist.getElement('option').selected = true;
                self.hidefields(group);
                self.listrules(group);
            });
            ruledisplay = new Element('ol').inject(displaybox,'bottom');
            Object.each(self[group+'rules'],function(value,key){
                if(parseInt(selectlist.getSelected()[0].value) === parseInt(key)) {
                    self.addrules(ruledisplay,value,key,group);
                }
            });
        }
    },
    addrules:function(element,rules,key,group){
        var self = this;
        var itemid = new Element('li',{
            'value':key,
            html:'<a href="#">'+self.getitemoptgroup(key,group)+': '+self.getitem(key,group)+'</a>',
            'data-itemid':key,
            styles:{
                'list-style':'decimal'
            }
        }).inject(element,'bottom');
        itemid.getElement('a').addEvent('click',function(){
            self.getitemid(itemid,group);
            return false;
        });
        var rulelist = new Element('ol').inject(itemid,'bottom');
        Array.each(rules,function(itemrule,rulekey){
            var rule = new Element('li',{
                html:'<a href="#">'+self.translatelinktype(itemrule.type,group)+'</a>',
                'class':'rule',
                'data-itemid':key,
                'data-linktype':itemrule.type,
                'data-rulekey':(rulekey+1),
                styles:{
                    'list-style':'decimal'
                }
            }).inject(rulelist,'bottom');
            rule.getElement('a').addEvent('click',function(){
                self.getrule(this.getParent('li'),group);
                return false;
            });
        });
    },
    getrule:function(el,group){
        var self = this;
        var itemid = el.get('data-itemid');
        var linktype = el.get('data-linktype');
        var rulekey = el.get('data-rulekey');
        var content = self[group+'rules'][itemid][(parseInt(rulekey)-1)].content;
        var selectlist = document.id('jform_params_'+group);
        if(selectlist === null) selectlist = document.id('jformparams'+group)?document.id('jformparams'+group):document.id('jform_params_'+group);
        Array.each(selectlist.getElements('option'),function(fel){
            if(parseInt(fel.value) === parseInt(itemid)) fel.selected = true;
        })         ;       
        Array.each(document.id('jform_params_'+group+'linktype').getElements('option'),function(tel){
            if(tel.value === linktype) tel.selected = true;
        });
        self.showfields(group);
        switch(linktype){
            case 'script':
            case 'stylesheet':
                document.id('jform_params_'+group+'linkfile').value=content;
                break;
            case 'scriptdeclaration':
            case 'styledeclaration':
                document.id('jform_params_'+group+'codeeditor').value=content;
                break;
            case 'customtag':
                document.id('jform_params_'+group+'customtag').value=content;
                break;
        }
        el.setStyle('color','#900');
        document.id('jform_params_'+group+'rulekey').value = rulekey;
        selectlist.disabled = true;
        document.id('jform_params_'+group+'add').getParent(self.options.elparent).hide();
        document.id('jform_params_'+group+'update').getParent(self.options.elparent).show();
        document.id('jform_params_'+group+'remove').getParent(self.options.elparent).show();
    },
    getitemid:function(el,group){
        var self = this;
        var itemid = el.get('data-itemid');
        var selectlist = document.id('jform_params_'+group);
        if(selectlist === null) selectlist = document.id('jformparams'+group)?document.id('jformparams'+group):document.id('jform_params_'+group);
        Array.each(selectlist.getElements('option'),function(el){
            if(parseInt(el.value) === parseInt(itemid)) el.selected = true;
        });
        self.showfields(group);
    },
    additem:function(group){
        var self = this;
        var selectlist = document.id('jform_params_'+group);
        if(selectlist === null) selectlist = document.id('jformparams'+group)?document.id('jformparams'+group):document.id('jform_params_'+group);
        var itemid = selectlist.getSelected()[0].value;
        var type = document.id('jform_params_'+group+'linktype').value;
        var content;
        switch(type){
            case 'script':
            case 'stylesheet':
                content = document.id('jform_params_'+group+'linkfile').value;
                break;
            case 'scriptdeclaration':
            case 'styledeclaration':
                content = document.id('jform_params_'+group+'codeeditor').value;
                break;
            case 'customtag':
                content = document.id('jform_params_'+group+'customtag').value;
                break;
        }
        var rule = {
            type:type,
            content:content
        };
        if(self[group+'rules'][(itemid+'')]) {
            self[group+'rules'][(itemid+'')].push(rule);
        } else {
            self[group+'rules'][(itemid+'')]=[rule];
        }
        document.id('jform_params_'+group+'rules').value = JSON.encode(self[group+'rules']);
        selectlist.getElement('option').selected = true;
        self.hidefields(group);
        self.listrules(group);
    },
    updateitem:function(group){
        var self = this;
        var selectlist = document.id('jform_params_'+group);
        if(selectlist === null) selectlist = document.id('jformparams'+group)?document.id('jformparams'+group):document.id('jform_params_'+group);
        var itemid = selectlist.getSelected()[0].value;
        var rulekey = (parseInt(document.id('jform_params_'+group+'rulekey').value)-1);
        switch(self[group+'rules'][(itemid+'')][rulekey].type){
            case 'script':
            case 'stylesheet':
                self[group+'rules'][(itemid+'')][rulekey].content = document.id('jform_params_'+group+'linkfile').value;
                break;
            case 'scriptdeclaration':
            case 'styledeclaration':
                self[group+'rules'][(itemid+'')][rulekey].content = document.id('jform_params_'+group+'codeeditor').value;
                break;
            case 'customtag':
                self[group+'rules'][(itemid+'')][rulekey].content = document.id('jform_params_'+group+'customtag').value;
                break;
        }
        document.id('jform_params_'+group+'rules').value = JSON.encode(self[group+'rules']);
        self.hidefields(group);
        self.listrules(group);
    },
    removeitem:function(group){
        var self = this;
        var selectlist = document.id('jform_params_'+group);
        if(selectlist === null) selectlist = document.id('jformparams'+group)?document.id('jformparams'+group):document.id('jform_params_'+group);
        var itemid = selectlist.getSelected()[0].value;
        var rulekey = (parseInt(document.id('jform_params_'+group+'rulekey').value)-1);
        var rule = self[group+'rules'][(itemid+'')][(rulekey+'')];
        self[group+'rules'][(itemid+'')].erase(rule);
        if(!self[group+'rules'][(itemid+'')].length) delete self[group+'rules'][(itemid+'')];
        document.id('jform_params_'+group+'rules').value = JSON.encode(self[group+'rules']);
        selectlist.getElement('option').selected = true;
        self.hidefields(group);
        self.listrules(group);
    },
    getitem:function(id,group) {
        var self = this;
        var ret = '';
        var selectlist = document.id('jform_params_'+group);
        if(selectlist === null) selectlist = document.id('jformparams'+group)?document.id('jformparams'+group):document.id('jform_params_'+group);
        Array.each(selectlist.getElements('option'),function(el){
            if(parseInt(el.value) === parseInt(id)) ret = el.get('html');
        });
        return ret;
    },
    getitemoptgroup:function(id,group) {
        var self = this;
        var ret = '';
        var selectlist = document.id('jform_params_'+group);
        if(selectlist === null) selectlist = document.id('jformparams'+group)?document.id('jformparams'+group):document.id('jform_params_'+group);
        switch(group) {
            case 'menuitem':
                Array.each(selectlist.getElements('option'),function(el){
                    if(parseInt(el.value) === parseInt(id)) ret = el.getParent('optgroup').get('label');
                });
                break;
            default:
                ret = '';
                break;
        }
        return ret;
    },
    translatelinktype:function(linktype,group){
        var ret = '';
        Array.each(document.id('jform_params_'+group+'linktype').getElements('option'),function(el){
            if(el.value === linktype) ret = el.get('html');
        });     
        return ret;
    }
});
window.addEvent('domready',function(){
    window.headtag = new HeadTag();
});