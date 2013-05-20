.class public Lcom/android/systemui/sapps/SAppsPanel;
.super Landroid/widget/FrameLayout;
.source "SAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;,
        Lcom/android/systemui/sapps/SAppsPanel$IconInfo;
    }
.end annotation


# static fields
.field private static final ACTION_MINI_MODE:Ljava/lang/String; = "com.samsung.action.MINI_MODE_SERVICE"

.field private static final ANIMATION_DURATION:I = 0x10e

.field private static final ANIMATION_LAYOUT_HEIGHT:I = 0x96

.field private static final ANIMATION_LAYOUT_WIDTH:I = 0x96

.field private static final CATEGORY_MINI_MODE:Ljava/lang/String; = "com.samsung.category.MINI_MODE_LAUNCHER"

.field private static final DEBUG:Z = false

.field private static final ICON_LANDSCAPE_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.landscape.focus"

.field private static final ICON_LANDSCAPE_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.landscape.normal"

.field private static final ICON_PORTRAIT_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.portrait.focus"

.field private static final ICON_PORTRAIT_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.portrait.normal"

.field private static final ICON_PREVIEW_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.preview.normal"

.field private static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "SAppsPanel"


# instance fields
.field private mBackgroundProtector:Landroid/view/View;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChosenApps:[Ljava/lang/String;

.field private mIconDpi:I

.field private mRecentsContainer:Landroid/widget/LinearLayout;

.field private mSAppsComponentDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mSAppsList:[Ljava/lang/String;

.field private mSAppsPanelUI:Lcom/android/systemui/sapps/SAppsPanelUI;

.field private mSAppsPanelVisibility:I

.field private mSettingsIcon:Landroid/widget/LinearLayout;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/sapps/SAppsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 260
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsList:[Ljava/lang/String;

    .line 71
    iput-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsComponentDescriptions:Ljava/util/ArrayList;

    .line 78
    iput-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 80
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsPanelVisibility:I

    .line 227
    new-instance v3, Lcom/android/systemui/sapps/SAppsPanel$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/sapps/SAppsPanel$1;-><init>(Lcom/android/systemui/sapps/SAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 263
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 266
    .local v2, xlarge:Z
    :goto_0
    if-eqz v2, :cond_1

    const/16 v3, 0xf0

    :goto_1
    iput v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mIconDpi:I

    .line 270
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 271
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->pm:Landroid/content/pm/PackageManager;

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel;->initComponentDescriptionOrder()V

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel;->initComponentDescriptions()V

    .line 280
    return-void

    .line 263
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v2           #xlarge:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 266
    .restart local v2       #xlarge:Z
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/sapps/SAppsPanel;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/sapps/SAppsPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mIconDpi:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/sapps/SAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel;->refreshApplicationList()V

    return-void
.end method

.method private initComponentDescriptionOrder()V
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsList:[Ljava/lang/String;

    .line 240
    return-void
.end method

.method private initComponentDescriptions()V
    .locals 14

    .prologue
    .line 298
    iget-object v11, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsComponentDescriptions:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    .line 347
    :cond_0
    return-void

    .line 304
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v10, sAppResolverlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsList:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v1, v3, v7

    .line 307
    .local v1, app:Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, component:[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 309
    .local v2, appIntent:Landroid/content/Intent;
    const/4 v11, 0x0

    aget-object v11, v5, v11

    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    iget-object v11, p0, Lcom/android/systemui/sapps/SAppsPanel;->pm:Landroid/content/pm/PackageManager;

    const/16 v12, 0x80

    invoke-virtual {v11, v2, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 313
    .local v0, alist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 314
    const/4 v11, 0x0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 316
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .end local v2           #appIntent:Landroid/content/Intent;
    const-string v11, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .restart local v2       #appIntent:Landroid/content/Intent;
    const-string v11, "com.samsung.category.MINI_MODE_LAUNCHER"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const/4 v11, 0x0

    aget-object v11, v5, v11

    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object v11, p0, Lcom/android/systemui/sapps/SAppsPanel;->pm:Landroid/content/pm/PackageManager;

    const/16 v12, 0x80

    invoke-virtual {v11, v2, v12}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 322
    const/4 v11, 0x0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 327
    .end local v0           #alist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #app:Ljava/lang/String;
    .end local v2           #appIntent:Landroid/content/Intent;
    .end local v5           #component:[Ljava/lang/String;
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsComponentDescriptions:Ljava/util/ArrayList;

    .line 328
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 329
    .local v9, r:Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 330
    .local v4, cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    if-eqz v9, :cond_5

    .line 332
    :try_start_0
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v11, :cond_6

    .line 333
    new-instance v4, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;

    .end local v4           #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v4, p0, v11}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/sapps/SAppsPanel;Landroid/content/pm/ComponentInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .restart local v4       #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    :goto_3
    if-eqz v4, :cond_5

    .line 343
    iget-object v11, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 335
    :cond_6
    :try_start_1
    new-instance v4, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;

    .end local v4           #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v4, p0, v11}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/sapps/SAppsPanel;Landroid/content/pm/ComponentInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v4       #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    goto :goto_3

    .line 337
    .end local v4           #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    :catch_0
    move-exception v6

    .line 338
    .local v6, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 339
    .restart local v4       #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    const-string v11, "SAppsPanel"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initComponentDescriptions() : exception occurs! while loading spen app (serviceInfo="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private isChosenApp(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    .line 516
    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v4

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 520
    .local v3, str:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 524
    .end local v3           #str:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private refreshApplicationList()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 351
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 353
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;

    .line 354
    .local v0, cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    const/4 v2, 0x0

    .line 355
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f03000a

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 356
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/sapps/SAppsPanel;->isChosenApp(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 361
    invoke-virtual {v0, v2}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->setIconView(Landroid/view/View;)V

    .line 362
    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->updateLabel()V

    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->updateResources(Z)V

    .line 365
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 363
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 367
    .end local v0           #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public closeSAppsPanel()V
    .locals 1

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel;->refreshApplicationList()V

    .line 501
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel;->setItemsAnimation(Z)V

    .line 502
    return-void
.end method

.method public getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 528
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .local v2, componentName:Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 530
    .local v0, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;

    .line 531
    .local v1, cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    invoke-virtual {v1}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 532
    invoke-virtual {v1}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 536
    .end local v1           #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    :cond_1
    return-object v0
.end method

.method public getPanelVisibility()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsPanelVisibility:I

    return v0
.end method

.method public isAppDisabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    .line 393
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 397
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_1

    .line 400
    :cond_0
    :goto_1
    return v2

    .line 394
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 395
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #pkgInfo:Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 400
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isInContentArea(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 244
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 245
    .local v1, l:I
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 246
    .local v2, r:I
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 247
    .local v3, t:I
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 248
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isPanelApp(Ljava/lang/String;)Z
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 378
    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsList:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 379
    .local v0, app:Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, component:[Ljava/lang/String;
    aget-object v6, v2, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 381
    const/4 v5, 0x1

    .line 384
    .end local v0           #app:Ljava/lang/String;
    .end local v2           #component:[Ljava/lang/String;
    :cond_0
    return v5

    .line 378
    .restart local v0       #app:Ljava/lang/String;
    .restart local v2       #component:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 541
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .local v1, componentName:Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 544
    .local v3, isService:Z
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;

    .line 545
    .local v0, cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 546
    #getter for: Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v0}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->access$400(Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v4

    instance-of v4, v4, Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_1

    .line 547
    const/4 v3, 0x1

    .line 551
    .end local v0           #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    :cond_1
    return v3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 405
    if-eqz p1, :cond_1

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0d0039

    if-ne v4, v5, :cond_2

    .line 408
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.PEN_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v1, intent:Landroid/content/Intent;
    const v4, 0x10008000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 436
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsPanelUI:Lcom/android/systemui/sapps/SAppsPanelUI;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/sapps/SAppsPanelUI;->closeSAppsPanel(Z)V

    .line 438
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 412
    :cond_2
    move-object v3, p1

    .line 413
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;

    .line 414
    .local v0, componentDescription:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    #getter for: Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->access$300(Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v2

    .line 415
    .local v2, name:Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 416
    .restart local v1       #intent:Landroid/content/Intent;
    #getter for: Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v0}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->access$400(Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v4

    instance-of v4, v4, Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_4

    .line 417
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/sapps/SAppsPanel;->isAppDisabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 418
    const-string v4, "SAppsPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Trying to launch Disabled App:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 424
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 425
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const/high16 v4, 0x1020

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 427
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 429
    :cond_4
    #getter for: Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v0}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->access$400(Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v4

    instance-of v4, v4, Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_0

    .line 432
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 433
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 288
    const v0, 0x7f0d0038

    invoke-virtual {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    .line 289
    const v0, 0x7f0d0036

    invoke-virtual {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    .line 291
    const v0, 0x7f0d0039

    invoke-virtual {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSettingsIcon:Landroid/widget/LinearLayout;

    .line 292
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSettingsIcon:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel;->refreshApplicationList()V

    .line 294
    return-void
.end method

.method public openSAppsPanel()V
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel;->setItemsAnimation(Z)V

    .line 496
    return-void
.end method

.method public refreshAppTray()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel;->initComponentDescriptions()V

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel;->refreshApplicationList()V

    .line 373
    return-void
.end method

.method public setCallView(Lcom/android/systemui/sapps/SAppsPanelUI;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsPanelUI:Lcom/android/systemui/sapps/SAppsPanelUI;

    .line 253
    return-void
.end method

.method public setItemsAnimation(Z)V
    .locals 12
    .parameter "isShowAnim"

    .prologue
    const v11, 0x7f0d0037

    const/high16 v10, 0x4316

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 441
    const/16 v3, 0x96

    .line 442
    .local v3, sPenAppItemHeight:I
    const/16 v4, 0x96

    .line 443
    .local v4, sPenAppItemWidth:I
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v6, :cond_0

    move v2, v6

    .line 445
    .local v2, isPortrait:Z
    :goto_0
    if-eqz p1, :cond_1

    .line 447
    const/4 v5, 0x0

    .line 449
    .local v5, showAppPanel:Landroid/view/animation/TranslateAnimation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5           #showAppPanel:Landroid/view/animation/TranslateAnimation;
    invoke-direct {v5, v10, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 451
    .restart local v5       #showAppPanel:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v8, 0x10e

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 453
    invoke-virtual {p0, v11}, Lcom/android/systemui/sapps/SAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 454
    .local v0, bg:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 456
    invoke-virtual {v0, v5}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 457
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 491
    .end local v5           #showAppPanel:Landroid/view/animation/TranslateAnimation;
    :goto_1
    return-void

    .end local v0           #bg:Landroid/view/View;
    .end local v2           #isPortrait:Z
    :cond_0
    move v2, v7

    .line 443
    goto :goto_0

    .line 461
    .restart local v2       #isPortrait:Z
    :cond_1
    const/4 v1, 0x0

    .line 462
    .local v1, hideAppPanel:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1           #hideAppPanel:Landroid/view/animation/TranslateAnimation;
    invoke-direct {v1, v9, v10, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 464
    .restart local v1       #hideAppPanel:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v8, 0x10e

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 466
    invoke-virtual {p0, v11}, Lcom/android/systemui/sapps/SAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 467
    .restart local v0       #bg:Landroid/view/View;
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 469
    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 470
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 472
    new-instance v6, Lcom/android/systemui/sapps/SAppsPanel$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/sapps/SAppsPanel$2;-><init>(Lcom/android/systemui/sapps/SAppsPanel;)V

    invoke-virtual {v1, v6}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method

.method public setPanelVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 505
    iput p1, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsPanelVisibility:I

    .line 506
    invoke-virtual {p0, p1}, Lcom/android/systemui/sapps/SAppsPanel;->setVisibility(I)V

    .line 508
    return-void
.end method
