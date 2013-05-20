.class public Lcom/android/systemui/multiwindow/CenterBarWindow;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;
    }
.end annotation


# static fields
.field private static final FLING_VELOCITY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "FlashBarService"


# instance fields
.field private final CENTER_BAR_DIRECTION_BOTTOM:S

.field private final CENTER_BAR_DIRECTION_LEFT:S

.field private final CENTER_BAR_DIRECTION_RIGHT:S

.field private final CENTER_BAR_DIRECTION_TOP:S

.field private final DEBUG:Z

.field private final ESTIMATE_INVALID_VALUE:S

.field private final WINDOW_LANDSCAPE_MODE:S

.field private final WINDOW_PORTRAIT_MODE:S

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCenterBar:Landroid/widget/ImageButton;

.field private mCenterBarArrow:Landroid/widget/ImageButton;

.field private mCenterBarDirection:I

.field private mCenterBarDockingSize:I

.field private mCenterBarFlingSize:I

.field mCenterBarFocusDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mCenterBarGestureDetector:Landroid/view/GestureDetector;

.field private mCenterBarLayout:Landroid/view/View;

.field private mCenterBarRectForSplit:Landroid/graphics/Rect;

.field private mCenterBarSize:I

.field private mCenterBarTouchApprovalDistance:I

.field mCenterBarTouchListener:Landroid/view/View$OnTouchListener;

.field private mCenterBarWindow:Landroid/view/Window;

.field private mContext:Landroid/content/Context;

.field private mDisplayHeight:I

.field private mDisplayOrientation:I

.field private mDisplayWidth:I

.field private mFocusZoneInfo:I

.field private mIvt:[B

.field private mMode:I

.field private mTouchEventX:I

.field private mTouchEventY:I

.field private mTouchStartX:I

.field private mTouchStartY:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mbHandle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 200
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->DEBUG:Z

    .line 40
    iput-short v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->WINDOW_PORTRAIT_MODE:S

    .line 41
    iput-short v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->WINDOW_LANDSCAPE_MODE:S

    .line 43
    iput-short v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_TOP:S

    .line 44
    iput-short v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_BOTTOM:S

    .line 45
    iput-short v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_RIGHT:S

    .line 46
    const/4 v2, 0x3

    iput-short v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_LEFT:S

    .line 47
    iput-short v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->ESTIMATE_INVALID_VALUE:S

    .line 54
    const/16 v2, 0x26

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B

    .line 84
    iput v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    .line 85
    iput v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    .line 86
    iput v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDockingSize:I

    .line 87
    iput v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchApprovalDistance:I

    .line 89
    sget v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    .line 243
    new-instance v2, Lcom/android/systemui/multiwindow/CenterBarWindow$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/CenterBarWindow$2;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFocusDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 430
    new-instance v2, Lcom/android/systemui/multiwindow/CenterBarWindow$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/CenterBarWindow$3;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 201
    const-string v2, "FlashBarService"

    const-string v3, "CenterBarWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iput-object p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    .line 205
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 206
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;

    .line 207
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SystemVibrator;

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    .line 209
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    .line 210
    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 212
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->getArrangeMode(Landroid/content/res/Configuration;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I

    .line 214
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 215
    .local v1, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 217
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    .line 218
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    .line 219
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    .line 221
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 222
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 223
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I

    .line 224
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I

    .line 226
    const-string v2, "FlashBarService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CenterBarWindow : mDisplayWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDisplayHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v2, "FlashBarService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CenterBarWindow : mDisplayOrientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v2, "FlashBarService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CenterBarWindow : mCenterBarRefX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCenterBarRefY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iput-boolean v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mbHandle:Z

    .line 232
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    .line 233
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    .line 234
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDockingSize:I

    .line 235
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchApprovalDistance:I

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarWindow()V

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->ACTION_NOTIFY_FOCUS_WINDOWS:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, centerBarfocusFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFocusDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    return-void

    .line 54
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x4dt
        0x0t
        0x61t
        0x0t
        0x67t
        0x0t
        0x53t
        0x0t
        0x77t
        0x0t
        0x65t
        0x0t
        0x65t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    return p1
.end method

.method static synthetic access$1002(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/multiwindow/CenterBarWindow;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/multiwindow/CenterBarWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->updateCenterBarRect()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchApprovalDistance:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I

    return p1
.end method

.method private addWindow(Landroid/view/View;III)Landroid/view/Window;
    .locals 6
    .parameter "view"
    .parameter "width"
    .parameter "height"
    .parameter "windowType"

    .prologue
    const/4 v3, 0x0

    .line 113
    const-string v4, "FlashBarService"

    const-string v5, "addWindow view"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 117
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v2

    .line 118
    .local v2, window:Landroid/view/Window;
    if-nez v2, :cond_1

    move-object v2, v3

    .line 138
    .end local v2           #window:Landroid/view/Window;
    :cond_0
    :goto_0
    return-object v2

    .line 122
    .restart local v2       #window:Landroid/view/Window;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 124
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v2, v4, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 125
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 128
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 130
    invoke-virtual {v2, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 133
    .local v1, decorView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private createCenterBarLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 143
    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 144
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, centerBarView:Landroid/view/View;
    new-instance v1, Lcom/android/systemui/multiwindow/CenterBarWindow$1;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/multiwindow/CenterBarWindow$1;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;Landroid/content/Context;)V

    .line 174
    .local v1, hoveringWrapLayout:Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 177
    return-object v1
.end method

.method private makeCenterBarWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 181
    const/16 v2, 0x834

    .line 182
    .local v2, windowType:I
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->createCenterBarLayout()Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, centerBarView:Landroid/view/View;
    :try_start_0
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "TYPE_MULTI_WINDOW_CONTROL_BAR"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 185
    .local v1, field:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v1, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 192
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v5, v5, v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->addWindow(Landroid/view/View;III)Landroid/view/Window;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    .line 193
    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    if-nez v3, :cond_1

    .line 198
    :goto_1
    return-void

    .line 196
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    .line 197
    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/CenterBarWindow;->setWindow(Landroid/view/Window;)V

    goto :goto_1

    .line 189
    :catch_0
    move-exception v3

    goto :goto_0

    .line 188
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private updateCenterBarRect()V
    .locals 5

    .prologue
    .line 608
    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 609
    .local v0, config:Landroid/content/res/Configuration;
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->setCenterBarRect(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    .line 611
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v2, v3}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->setSplitRect(ILandroid/graphics/Rect;)V

    .line 616
    return-void

    .line 612
    :catch_0
    move-exception v1

    .line 613
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public centerControlBarDocking()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 383
    const-string v3, "FlashBarService"

    const-string v4, "centerControlBarDocking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDockingSize:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 387
    .local v0, dockingRange:I
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v3, v1, :cond_2

    .line 388
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_0

    .line 389
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iput v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 390
    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 418
    :goto_0
    return v1

    .line 392
    :cond_0
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_1

    .line 393
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 394
    iput v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_0

    .line 396
    :cond_1
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_5

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_5

    .line 398
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    goto :goto_0

    .line 402
    :cond_2
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_3

    .line 403
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 404
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_0

    .line 407
    :cond_3
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iget v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_4

    .line 408
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 409
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_0

    .line 412
    :cond_4
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_5

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_5

    .line 414
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    goto :goto_0

    :cond_5
    move v1, v2

    .line 418
    goto :goto_0
.end method

.method public createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    .line 92
    const-string v2, "FlashBarService"

    const-string v3, "createLayoutParams"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x2

    .line 97
    .local v1, windowType:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1040340

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 105
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 106
    const v2, 0x1030004

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    return-object v0
.end method

.method public drawCenterBar(II)V
    .locals 5
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v4, 0x0

    .line 314
    const-string v1, "FlashBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawCenterBar : mDisplayOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pos("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 318
    .local v0, centerBarLayout:Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 319
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 320
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 321
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 322
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 323
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 334
    return-void

    .line 325
    .end local v0           #centerBarLayout:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 326
    .restart local v0       #centerBarLayout:Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 327
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 328
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 330
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 331
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public drawCenterBarArrow()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 291
    const-string v0, "FlashBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawCenterBarArrow : mFocusZoneInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 294
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 295
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 311
    :goto_0
    return-void

    .line 297
    :cond_0
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    if-ne v0, v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 303
    :cond_2
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    if-ne v0, v1, :cond_3

    .line 304
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 305
    :cond_3
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    if-ne v0, v1, :cond_4

    .line 306
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public handleCenterBarFling()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 422
    const-string v0, "FlashBarService"

    const-string v1, "handleCenterBarFling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->updateCenterBarRect()V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 428
    return-void
.end method

.method public makeCenterBarLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 269
    const-string v1, "FlashBarService"

    const-string v2, "makeCenterBarLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 273
    .local v0, centerBarLayout:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 274
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 275
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 276
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 277
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 278
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 279
    const-string v1, "MultiWindow/CenterBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 281
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 284
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    .line 285
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    const v2, 0x7f0d0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    .line 288
    return-void
.end method

.method public makeCenterBarRect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 337
    const-string v0, "FlashBarService"

    const-string v1, "makeCenterBarRect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 341
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 342
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 343
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 350
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 346
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 347
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 348
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public makeCenterBarRectForFling(I)V
    .locals 4
    .parameter "centerBarFlingDirection"

    .prologue
    const/4 v3, 0x0

    .line 353
    const-string v0, "FlashBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCenterBarRectForFling : direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 357
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 359
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 360
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 361
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 378
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 379
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 380
    return-void

    .line 362
    :cond_1
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 363
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 364
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 365
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 366
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 367
    :cond_2
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 368
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 369
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 370
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 371
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 372
    :cond_3
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 374
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 375
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 376
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 486
    const-string v4, "FlashBarService"

    const-string v7, "onConfigurationChanged"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {p1}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->getArrangeMode(Landroid/content/res/Configuration;)I

    move-result v4

    sget v7, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_TOGGLE_MASK:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v4, v7

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I

    .line 489
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I

    sget v7, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED:I

    if-ne v4, v7, :cond_2

    .line 491
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->createCenterBarLayout()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    .line 492
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 494
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    const v7, 0x7f0d0008

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    .line 495
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    const v7, 0x7f0d0009

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    .line 498
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 499
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 500
    iget v4, v0, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    .line 501
    iget v4, v0, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    .line 503
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 504
    .local v1, orientation:I
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    if-eq v1, v4, :cond_3

    move v2, v5

    .line 506
    .local v2, orientationChanged:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 507
    iput v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    .line 509
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_7

    .line 510
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    if-nez v4, :cond_4

    .line 511
    iput v9, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 519
    :cond_0
    :goto_1
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRectForFling(I)V

    .line 532
    :cond_1
    :goto_2
    const-string v4, "FlashBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConfigurationChanged : mDisplayOrientation="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " changedRect="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->updateCenterBarRect()V

    .line 535
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 536
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBarArrow()V

    .line 538
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 540
    .end local v0           #fullscreen:Landroid/graphics/Point;
    .end local v1           #orientation:I
    .end local v2           #orientationChanged:Z
    :cond_2
    return-void

    .restart local v0       #fullscreen:Landroid/graphics/Point;
    .restart local v1       #orientation:I
    :cond_3
    move v2, v6

    .line 504
    goto :goto_0

    .line 512
    .restart local v2       #orientationChanged:Z
    :cond_4
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    if-ne v4, v5, :cond_5

    .line 513
    iput v8, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_1

    .line 514
    :cond_5
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    if-ne v4, v8, :cond_6

    .line 515
    iput v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_1

    .line 516
    :cond_6
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    if-ne v4, v9, :cond_0

    .line 517
    iput v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_1

    .line 521
    :cond_7
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 522
    .local v3, temp:I
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 523
    iput v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 525
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->centerControlBarDocking()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 526
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B

    iget-object v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 529
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRect()V

    goto :goto_2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 544
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 543
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public setWindow(Landroid/view/Window;)V
    .locals 4
    .parameter "window"

    .prologue
    .line 255
    const-string v0, "FlashBarService"

    const-string v1, "setWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput-object p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    .line 259
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;Lcom/android/systemui/multiwindow/CenterBarWindow$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarGestureDetector:Landroid/view/GestureDetector;

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarLayout()V

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRect()V

    .line 263
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->setSplitRect(ILandroid/graphics/Rect;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBarArrow()V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 266
    return-void
.end method
