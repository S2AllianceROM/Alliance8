.class public Lcom/alliance/systemui/quickpanel/AutoRotateButton;
.super Lcom/alliance/systemui/quickpanel/PowerButton;
.source "AutoRotateButton.java"


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
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alliance/systemui/quickpanel/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    .line 19
    sget-object v0, Lcom/alliance/systemui/quickpanel/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleAutoRotate"

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/AutoRotateButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getOrientationState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
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
    .line 61
    sget-object v0, Lcom/alliance/systemui/quickpanel/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x509000c

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/AutoRotateButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 4

    .prologue
    .line 37
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/AutoRotateButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/alliance/systemui/quickpanel/AutoRotateButton;->getOrientationState(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected updateState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/AutoRotateButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alliance/systemui/quickpanel/AutoRotateButton;->getOrientationState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 27
    const v0, 0x5020074

    iput v0, p0, Lcom/alliance/systemui/quickpanel/AutoRotateButton;->mIcon:I

    .line 28
    iput v1, p0, Lcom/alliance/systemui/quickpanel/AutoRotateButton;->mState:I

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    const v0, 0x5020073

    iput v0, p0, Lcom/alliance/systemui/quickpanel/AutoRotateButton;->mIcon:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/alliance/systemui/quickpanel/AutoRotateButton;->mState:I

    goto :goto_0
.end method
