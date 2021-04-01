.class public Lcom/sec/shabbatmode/preferences/customlist/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field contact_id:Ljava/lang/String;

.field display_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "contact_id"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/customlist/Contact;->contact_id:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/Contact;->display_name:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contact_id"    # Ljava/lang/String;
    .param p2, "display_name"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/customlist/Contact;->contact_id:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/sec/shabbatmode/preferences/customlist/Contact;->display_name:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/sec/shabbatmode/preferences/customlist/Contact;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 47
    check-cast v0, Lcom/sec/shabbatmode/preferences/customlist/Contact;

    iget-object v0, v0, Lcom/sec/shabbatmode/preferences/customlist/Contact;->contact_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/shabbatmode/preferences/customlist/Contact;->contact_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 56
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 51
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/Contact;->contact_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 53
    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContact_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/Contact;->contact_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/Contact;->display_name:Ljava/lang/String;

    return-object v0
.end method

.method public setContact_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "contact_id"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/customlist/Contact;->contact_id:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setDisplay_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "display_name"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/customlist/Contact;->display_name:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Contact [contact_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/customlist/Contact;->contact_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", display_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/customlist/Contact;->display_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
