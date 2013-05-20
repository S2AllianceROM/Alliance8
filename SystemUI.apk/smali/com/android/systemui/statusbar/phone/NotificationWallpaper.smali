.class Lcom/android/systemui/statusbar/phone/NotificationWallpaper;
.super Landroid/widget/FrameLayout;
.source "NotificationWallpaper.java"


# instance fields
.field private final NOTIF_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field bitmapWallpaper:Landroid/graphics/Bitmap;

.field private mNotificationWallpaperImage:Landroid/widget/ImageView;

.field wallpaperAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const-string v0, "NotificationWallpaperUpdater"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "/data/data/com.aokp.romcontrol/files/notification_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->NOTIF_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notif_wallpaper_alpha"

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->wallpaperAlpha:F

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->setNotificationWallpaper()V

    .line 34
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->bitmapWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->bitmapWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 59
    return-void
.end method

.method public setNotificationWallpaper()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 37
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.aokp.romcontrol/files/notification_wallpaper.jpg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->mNotificationWallpaperImage:Landroid/widget/ImageView;

    .line 41
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->mNotificationWallpaperImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->mNotificationWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->addView(Landroid/view/View;II)V

    .line 43
    const-string v2, "/data/data/com.aokp.romcontrol/files/notification_wallpaper.jpg"

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->bitmapWallpaper:Landroid/graphics/Bitmap;

    .line 44
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->bitmapWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 45
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->wallpaperAlpha:F

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 46
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->mNotificationWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->removeAllViews()V

    goto :goto_0
.end method
