.class public final Lcom/alliance/util/AssetUtils;
.super Ljava/lang/Object;
.source "AssetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAnimId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "anim"

    invoke-static {v0, p1, v1}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getAnimId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 107
    const-string v0, "anim"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getAttrId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "attr"

    invoke-static {v0, p1, v1}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getAttrId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 147
    const-string v0, "attr"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getBool(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alliance/util/AssetUtils;->getBool(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final getBool(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 99
    const-string v0, "bool"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static final getBoolId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bool"

    invoke-static {v0, p1, v1}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getBoolId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 91
    const-string v0, "bool"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getCancel(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "cancel"

    const-string v2, "string"

    invoke-static {v0, v1, v2}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getCancel(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .parameter "res"

    .prologue
    .line 35
    const-string v0, "cancel"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getDimenId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    invoke-static {v0, p1, v1}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getDimenId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 123
    const-string v0, "dimen"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alliance/util/AssetUtils;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 67
    const-string v0, "drawable"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-static {v0, p1, v1}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getDrawableId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 59
    const-string v0, "drawable"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "res"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 10
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 11
    .local v0, result:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 18
    :goto_0
    return v1

    .line 14
    :cond_0
    const-string v1, "android"

    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 15
    if-eqz v0, :cond_1

    move v1, v0

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    const-string v1, "com.android.internal"

    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static final getIdId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getIdId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 83
    const-string v0, "id"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alliance/util/AssetUtils;->getInt(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getInt(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 139
    const-string v0, "integer"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static final getIntId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "integer"

    invoke-static {v0, p1, v1}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getIntId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 131
    const-string v0, "integer"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getLayoutId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 75
    const-string v0, "layout"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getMipmapId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "mipmap"

    invoke-static {v0, p1, v1}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getMipmapId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 155
    const-string v0, "mipmap"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getOk(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ok"

    const-string v2, "string"

    invoke-static {v0, v1, v2}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getOk(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .parameter "res"

    .prologue
    .line 26
    const-string v0, "ok"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alliance/util/AssetUtils;->getString(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getString(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 51
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-static {v0, p1, v1}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getStringId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 43
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getStyleId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "style"

    invoke-static {v0, p1, v1}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getStyleId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .parameter "res"
    .parameter "name"

    .prologue
    .line 115
    const-string v0, "style"

    invoke-static {p0, p1, v0}, Lcom/alliance/util/AssetUtils;->getId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
