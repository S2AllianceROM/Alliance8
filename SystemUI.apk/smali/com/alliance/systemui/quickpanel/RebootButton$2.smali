.class Lcom/alliance/systemui/quickpanel/RebootButton$2;
.super Ljava/lang/Object;
.source "RebootButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alliance/systemui/quickpanel/RebootButton;->reboot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alliance/systemui/quickpanel/RebootButton;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alliance/systemui/quickpanel/RebootButton;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alliance/systemui/quickpanel/RebootButton$2;->this$0:Lcom/alliance/systemui/quickpanel/RebootButton;

    iput-object p2, p0, Lcom/alliance/systemui/quickpanel/RebootButton$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/RebootButton$2;->val$context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 56
    .local v0, pm:Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/RebootButton$2;->this$0:Lcom/alliance/systemui/quickpanel/RebootButton;

    #getter for: Lcom/alliance/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;
    invoke-static {v1}, Lcom/alliance/systemui/quickpanel/RebootButton;->access$000(Lcom/alliance/systemui/quickpanel/RebootButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 57
    return-void
.end method
