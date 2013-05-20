.class Lcom/android/systemui/recent/RecentTasksLoader$1;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/recent/TaskDescription;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;

.field final synthetic val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 285
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 31
    .parameter "params"

    .prologue
    .line 299
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v21

    .line 300
    .local v21, origPri:I
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$100(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 302
    .local v22, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$100(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 305
    .local v9, am:Landroid/app/ActivityManager;
    const/16 v2, 0x15

    const/4 v3, 0x2

    invoke-virtual {v9, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v24

    .line 307
    .local v24, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v20

    .line 308
    .local v20, numTasks:I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 311
    .local v8, homeInfo:Landroid/content/pm/ActivityInfo;
    const/4 v14, 0x1

    .line 312
    .local v14, firstScreenful:Z
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v30, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v13, 0x1

    .line 320
    .local v13, first:I
    const/16 v19, -0x1

    .line 321
    .local v19, multiTopTaskId:I
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v26, resumedTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mMultiWindowEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$200(Lcom/android/systemui/recent/RecentTasksLoader;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 324
    const/16 v2, 0x15

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v29

    .line 325
    .local v29, runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v11, 0x0

    .line 326
    .local v11, behindNormal:Z
    const/4 v10, 0x0

    .line 327
    .local v10, behindHome:Z
    const/4 v12, 0x0

    .line 329
    .local v12, beweenHomeAndNormal:Z
    const/4 v13, 0x0

    .line 330
    const/16 v25, 0x0

    .line 331
    .local v25, regionSUM:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_8

    const/16 v2, 0x15

    if-ge v15, v2, :cond_8

    .line 332
    move-object/from16 v0, v29

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 337
    .local v28, runningInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v28

    #calls: Lcom/android/systemui/recent/RecentTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I
    invoke-static {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->access$300(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->zone(I)I

    move-result v2

    and-int v2, v2, v25

    if-eqz v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v28

    #calls: Lcom/android/systemui/recent/RecentTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I
    invoke-static {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->access$300(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->isPinup(I)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v28

    #calls: Lcom/android/systemui/recent/RecentTasksLoader;->getOtherAppTouched(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    invoke-static {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->access$400(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v12, :cond_2

    .line 340
    :cond_1
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v28

    #calls: Lcom/android/systemui/recent/RecentTasksLoader;->isHomeType(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    invoke-static {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->access$500(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    const/4 v10, 0x1

    .line 345
    if-nez v11, :cond_3

    .line 346
    const/4 v12, 0x1

    .line 350
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$100(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$100(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->getArrangeMode(Landroid/content/res/Configuration;)I

    move-result v2

    sget v3, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_TOGGLE_MASK:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    sget v3, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED:I

    if-ne v2, v3, :cond_7

    .line 352
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v28

    #calls: Lcom/android/systemui/recent/RecentTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I
    invoke-static {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->access$300(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->zone(I)I

    move-result v2

    or-int v25, v25, v2

    .line 353
    sget v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I

    move/from16 v0, v25

    if-eq v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v28

    #calls: Lcom/android/systemui/recent/RecentTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I
    invoke-static {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->access$300(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->mode(I)I

    move-result v2

    sget v3, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_NORMAL:I

    if-ne v2, v3, :cond_6

    .line 356
    :cond_5
    const/4 v11, 0x1

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v28

    #calls: Lcom/android/systemui/recent/RecentTasksLoader;->isHomeType(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    invoke-static {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->access$500(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 358
    const/4 v12, 0x0

    .line 331
    :cond_6
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 362
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v28

    #calls: Lcom/android/systemui/recent/RecentTasksLoader;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I
    invoke-static {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->access$300(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->mode(I)I

    move-result v2

    sget v3, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_NORMAL:I

    if-ne v2, v3, :cond_6

    .line 364
    const/4 v11, 0x1

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v28

    #calls: Lcom/android/systemui/recent/RecentTasksLoader;->isHomeType(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    invoke-static {v2, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->access$500(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 366
    const/4 v12, 0x0

    goto :goto_1

    .line 374
    .end local v10           #behindHome:Z
    .end local v11           #behindNormal:Z
    .end local v12           #beweenHomeAndNormal:Z
    .end local v15           #i:I
    .end local v25           #regionSUM:I
    .end local v28           #runningInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v29           #runningTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_8
    move v15, v13

    .restart local v15       #i:I
    const/16 v17, 0x0

    .local v17, index:I
    :goto_2
    move/from16 v0, v20

    if-ge v15, v0, :cond_9

    const/16 v2, 0x15

    move/from16 v0, v17

    if-ge v0, v2, :cond_9

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 413
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 414
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v30, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recent/RecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V

    .line 415
    if-eqz v14, :cond_a

    .line 417
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recent/RecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V

    .line 423
    :cond_a
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v3, Lcom/android/systemui/recent/TaskDescription;

    invoke-direct {v3}, Lcom/android/systemui/recent/TaskDescription;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    invoke-static/range {v21 .. v21}, Landroid/os/Process;->setThreadPriority(I)V

    .line 430
    const/4 v2, 0x0

    return-object v2

    .line 378
    :cond_b
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 379
    .local v23, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v23

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/recent/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/recent/TaskDescription;

    move-result-object v18

    .line 384
    .local v18, item:Lcom/android/systemui/recent/TaskDescription;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mMultiWindowEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$200(Lcom/android/systemui/recent/RecentTasksLoader;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 386
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 387
    .local v27, rt:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v27

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v2, v3, :cond_c

    .line 388
    const/16 v18, 0x0

    goto :goto_4

    .line 394
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v27           #rt:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_d
    if-eqz v18, :cond_f

    .line 397
    :goto_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    if-eqz v14, :cond_e

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I
    invoke-static {v3}, Lcom/android/systemui/recent/RecentTasksLoader;->access$600(Lcom/android/systemui/recent/RecentTasksLoader;)I

    move-result v3

    if-ne v2, v3, :cond_e

    .line 404
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v30, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recent/RecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V

    .line 405
    new-instance v30, Ljava/util/ArrayList;

    .end local v30           #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .restart local v30       #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v14, 0x0

    .line 409
    :cond_e
    add-int/lit8 v17, v17, 0x1

    .line 374
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 425
    .end local v18           #item:Lcom/android/systemui/recent/TaskDescription;
    .end local v23           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 399
    .restart local v18       #item:Lcom/android/systemui/recent/TaskDescription;
    .restart local v23       #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :catch_1
    move-exception v2

    goto :goto_5
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 285
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$1;->onProgressUpdate([Ljava/util/ArrayList;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, values:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 292
    .local v0, newTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$000(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;)V

    .line 294
    .end local v0           #newTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    :cond_0
    return-void
.end method
