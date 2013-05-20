.class Lcom/android/systemui/statusbar/policy/BatteryController$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    const-string v3, "level"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 118
    .local v1, level:I
    const-string v3, "plugged"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 120
    .local v2, plugged:Z
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #calls: Lcom/android/systemui/statusbar/policy/BatteryController;->setBatteryIcon(IZ)V
    invoke-static {v3, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$000(Lcom/android/systemui/statusbar/policy/BatteryController;IZ)V

    .line 122
    .end local v1           #level:I
    .end local v2           #plugged:Z
    :cond_1
    return-void
.end method
