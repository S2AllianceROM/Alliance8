.class Lcom/alliance/systemui/quickpanel/PowerButton$2;
.super Ljava/lang/Object;
.source "PowerButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alliance/systemui/quickpanel/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alliance/systemui/quickpanel/PowerButton;


# direct methods
.method constructor <init>(Lcom/alliance/systemui/quickpanel/PowerButton;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alliance/systemui/quickpanel/PowerButton$2;->this$0:Lcom/alliance/systemui/quickpanel/PowerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    .local v2, type:Ljava/lang/String;
    invoke-static {}, Lcom/alliance/systemui/quickpanel/PowerButton;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alliance/systemui/quickpanel/PowerButton;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alliance/systemui/quickpanel/PowerButton;

    invoke-virtual {v3}, Lcom/alliance/systemui/quickpanel/PowerButton;->toggleState()V

    .line 187
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alliance/systemui/quickpanel/PowerButton;>;"
    :cond_1
    invoke-static {}, Lcom/alliance/systemui/quickpanel/PowerButton;->access$200()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 188
    invoke-static {}, Lcom/alliance/systemui/quickpanel/PowerButton;->access$200()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 190
    :cond_2
    return-void
.end method
