.class public Lcom/alliance/systemui/quickpanel/GPSButton;
.super Lcom/alliance/systemui/quickpanel/PowerButton;
.source "GPSButton.java"


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
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alliance/systemui/quickpanel/GPSButton;->OBSERVED_URIS:Ljava/util/List;

    .line 22
    sget-object v0, Lcom/alliance/systemui/quickpanel/GPSButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleGPS"

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/GPSButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
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
    .line 58
    sget-object v0, Lcom/alliance/systemui/quickpanel/GPSButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 68
    const v0, 0x509000e

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/GPSButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 5

    .prologue
    .line 40
    iget-object v3, p0, Lcom/alliance/systemui/quickpanel/GPSButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 42
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/alliance/systemui/quickpanel/GPSButton;->getGpsState(Landroid/content/Context;)Z

    move-result v1

    .line 43
    .local v1, enabled:Z
    const-string v4, "gps"

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 45
    return-void

    .line 43
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/GPSButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alliance/systemui/quickpanel/GPSButton;->getGpsState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const v0, 0x502006a

    iput v0, p0, Lcom/alliance/systemui/quickpanel/GPSButton;->mIcon:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/alliance/systemui/quickpanel/GPSButton;->mState:I

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    const v0, 0x5020069

    iput v0, p0, Lcom/alliance/systemui/quickpanel/GPSButton;->mIcon:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/alliance/systemui/quickpanel/GPSButton;->mState:I

    goto :goto_0
.end method
