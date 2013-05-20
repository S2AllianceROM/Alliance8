.class Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryControllerNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;

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

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    const-string v3, "level"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 123
    .local v1, level:I
    const-string v3, "plugged"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 125
    .local v2, plugged:Z
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;

    #calls: Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setBatteryIcon(IZ)V
    invoke-static {v3, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->access$000(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;IZ)V

    .line 127
    .end local v1           #level:I
    .end local v2           #plugged:Z
    :cond_1
    return-void
.end method
