.class public Lcom/alliance/systemui/quickpanel/AirplaneButton;
.super Lcom/alliance/systemui/quickpanel/PowerButton;
.source "AirplaneButton.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alliance/systemui/quickpanel/AirplaneButton;->OBSERVED_URIS:Ljava/util/List;

    .line 20
    sget-object v0, Lcom/alliance/systemui/quickpanel/AirplaneButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleAirplane"

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/AirplaneButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getState(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/alliance/systemui/quickpanel/AirplaneButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x5090014

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/AirplaneButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    iget-object v3, p0, Lcom/alliance/systemui/quickpanel/AirplaneButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/alliance/systemui/quickpanel/AirplaneButton;->getState(Landroid/content/Context;)Z

    move-result v2

    .line 40
    .local v2, state:Z
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    if-eqz v2, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 43
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "state"

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    move v3, v5

    .line 40
    goto :goto_0

    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    move v5, v4

    .line 45
    goto :goto_1
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/AirplaneButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alliance/systemui/quickpanel/AirplaneButton;->getState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const v0, 0x5020055

    iput v0, p0, Lcom/alliance/systemui/quickpanel/AirplaneButton;->mIcon:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/alliance/systemui/quickpanel/AirplaneButton;->mState:I

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    const v0, 0x5020054

    iput v0, p0, Lcom/alliance/systemui/quickpanel/AirplaneButton;->mIcon:I

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/alliance/systemui/quickpanel/AirplaneButton;->mState:I

    goto :goto_0
.end method
