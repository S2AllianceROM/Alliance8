.class Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutomaticObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .locals 1
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 382
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 383
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 387
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 390
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 392
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$300(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 399
    .local v0, automatic:Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .line 400
    .local v4, toggle:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 420
    .end local v0           #automatic:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #toggle:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    :catch_0
    move-exception v1

    .line 421
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "StatusBar.BrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SettingNotFoundException occurs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v5

    .line 392
    goto :goto_0

    .line 402
    .restart local v0       #automatic:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->useAutoBrightnessDetail:Z

    if-eqz v5, :cond_0

    .line 403
    if-eqz v0, :cond_3

    .line 404
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->hasFocus()Z

    move-result v2

    .line 405
    .local v2, hasFocus:Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setVisibility(I)V

    .line 406
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setVisibility(I)V

    .line 407
    if-eqz v2, :cond_0

    .line 408
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->requestFocus()Z

    goto :goto_2

    .line 411
    .end local v2           #hasFocus:Z
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->hasFocus()Z

    move-result v2

    .line 412
    .restart local v2       #hasFocus:Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setVisibility(I)V

    .line 413
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setVisibility(I)V

    .line 414
    if-eqz v2, :cond_0

    .line 415
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->requestFocus()Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
