.class Lcom/alliance/systemui/quickpanel/PowerButton$1;
.super Landroid/os/Handler;
.source "PowerButton.java"


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
    .line 86
    iput-object p1, p0, Lcom/alliance/systemui/quickpanel/PowerButton$1;->this$0:Lcom/alliance/systemui/quickpanel/PowerButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 89
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/PowerButton$1;->this$0:Lcom/alliance/systemui/quickpanel/PowerButton;

    iget-object v2, v2, Lcom/alliance/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 90
    const v0, 0x5050003

    .line 91
    .local v0, buttonIcon:I
    const v1, 0x5050005

    .line 92
    .local v1, buttonState:I
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/PowerButton$1;->this$0:Lcom/alliance/systemui/quickpanel/PowerButton;

    iget-object v3, p0, Lcom/alliance/systemui/quickpanel/PowerButton$1;->this$0:Lcom/alliance/systemui/quickpanel/PowerButton;

    iget v3, v3, Lcom/alliance/systemui/quickpanel/PowerButton;->mIcon:I

    #calls: Lcom/alliance/systemui/quickpanel/PowerButton;->updateImageView(II)V
    invoke-static {v2, v0, v3}, Lcom/alliance/systemui/quickpanel/PowerButton;->access$000(Lcom/alliance/systemui/quickpanel/PowerButton;II)V

    .line 93
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/PowerButton$1;->this$0:Lcom/alliance/systemui/quickpanel/PowerButton;

    invoke-virtual {v2}, Lcom/alliance/systemui/quickpanel/PowerButton;->updateText()V

    .line 96
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/PowerButton$1;->this$0:Lcom/alliance/systemui/quickpanel/PowerButton;

    iget v2, v2, Lcom/alliance/systemui/quickpanel/PowerButton;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 104
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/PowerButton$1;->this$0:Lcom/alliance/systemui/quickpanel/PowerButton;

    const v3, 0x5020058

    new-instance p0, Ljava/io/File;

    const-string p1, "/sdcard/alliance-tweak/toggle_ind"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    #calls: Lcom/alliance/systemui/quickpanel/PowerButton;->updateImageView(II)V
    invoke-static {v2, v1, v3}, Lcom/alliance/systemui/quickpanel/PowerButton;->access$000(Lcom/alliance/systemui/quickpanel/PowerButton;II)V

    .line 108
    .end local v0           #buttonIcon:I
    .end local v1           #buttonState:I
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v0       #buttonIcon:I
    .restart local v1       #buttonState:I
    :pswitch_0
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/PowerButton$1;->this$0:Lcom/alliance/systemui/quickpanel/PowerButton;

    const v3, 0x502005a

    new-instance p0, Ljava/io/File;

    const-string p1, "/sdcard/alliance-tweak/toggle_ind"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    #calls: Lcom/alliance/systemui/quickpanel/PowerButton;->updateImageView(II)V
    invoke-static {v2, v1, v3}, Lcom/alliance/systemui/quickpanel/PowerButton;->access$000(Lcom/alliance/systemui/quickpanel/PowerButton;II)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/PowerButton$1;->this$0:Lcom/alliance/systemui/quickpanel/PowerButton;

    const v3, 0x5020059

    new-instance p0, Ljava/io/File;

    const-string p1, "/sdcard/alliance-tweak/toggle_ind"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    #calls: Lcom/alliance/systemui/quickpanel/PowerButton;->updateImageView(II)V
    invoke-static {v2, v1, v3}, Lcom/alliance/systemui/quickpanel/PowerButton;->access$000(Lcom/alliance/systemui/quickpanel/PowerButton;II)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
