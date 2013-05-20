.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;
.super Landroid/content/BroadcastReceiver;
.source "MiniModeAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 707
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 713
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeMiniAppsPanel()V

    .line 765
    :cond_1
    :goto_0
    return-void

    .line 714
    :cond_2
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 718
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initComponentDescriptions()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 719
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeMiniAppsPanel()V

    goto :goto_0

    .line 721
    :cond_4
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 722
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 723
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    goto :goto_0

    .line 727
    :cond_5
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 728
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 729
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 730
    .local v2, locale:Ljava/util/Locale;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 735
    .local v3, orientation:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 736
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateImageOfMiniModeAppsPanel()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 741
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)I

    move-result v4

    if-eq v4, v3, :cond_9

    .line 743
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 746
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 747
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->adjustTrayPadding()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 752
    :cond_9
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 753
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCenterBarWindow:Lcom/android/systemui/multiwindow/CenterBarWindow;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/multiwindow/CenterBarWindow;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 754
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCenterBarWindow:Lcom/android/systemui/multiwindow/CenterBarWindow;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/multiwindow/CenterBarWindow;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 759
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 760
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateTextOfMiniModeAppsPanel()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 762
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v2}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;
    invoke-static {v5, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2302(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Ljava/util/Locale;)Ljava/util/Locale;

    .line 763
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2502(Lcom/android/systemui/statusbar/MiniModeAppsPanel;I)I

    goto/16 :goto_0
.end method
