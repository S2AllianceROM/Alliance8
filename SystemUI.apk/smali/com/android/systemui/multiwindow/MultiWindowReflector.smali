.class public final Lcom/android/systemui/multiwindow/MultiWindowReflector;
.super Ljava/lang/Object;
.source "MultiWindowReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/MultiWindowReflector$ActivityManager;,
        Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;,
        Lcom/android/systemui/multiwindow/MultiWindowReflector$TabletStatusBar;,
        Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;,
        Lcom/android/systemui/multiwindow/MultiWindowReflector$PackageManager;,
        Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;,
        Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiWindowReflector"

.field private static sArrangeField:Ljava/lang/reflect/Field;

.field private static sMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 261
    sput-object v5, Lcom/android/systemui/multiwindow/MultiWindowReflector;->sArrangeField:Ljava/lang/reflect/Field;

    .line 278
    sput-object v5, Lcom/android/systemui/multiwindow/MultiWindowReflector;->sMethodMap:Ljava/util/HashMap;

    .line 280
    sget-object v2, Lcom/android/systemui/multiwindow/MultiWindowReflector;->sMethodMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 281
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/systemui/multiwindow/MultiWindowReflector;->sMethodMap:Ljava/util/HashMap;

    .line 282
    const-string v2, "android.sec.multiwindow.impl.MultiWindowManager"

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 283
    .local v1, MultiWindowManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 284
    const-string v2, "getSplitRect"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-static {v1, v5, v2, v3}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 285
    const-string v2, "setSplitRect"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v3, v7

    invoke-static {v1, v5, v2, v3}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 286
    const-string v2, "isPinup"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-static {v1, v5, v2, v3}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 287
    const-string v2, "isPhone"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-static {v1, v5, v2, v3}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 290
    :cond_0
    const-string v2, "android.app.ActivityManager"

    invoke-static {v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 291
    .local v0, ActivityManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 292
    const-string v2, "resizeArrangedWindow"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v3, v8

    invoke-static {v0, v5, v2, v3}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 295
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 358
    return-void
.end method

.method private static findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 299
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 301
    :catch_0
    move-exception v0

    .line 303
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getArrangeMode(Landroid/content/res/Configuration;)I
    .locals 3
    .parameter "config"

    .prologue
    .line 264
    :try_start_0
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowReflector;->sArrangeField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "arrange"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/multiwindow/MultiWindowReflector;->sArrangeField:Ljava/lang/reflect/Field;

    .line 267
    :cond_0
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowReflector;->sArrangeField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sget v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_TOGGLE_MASK:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    .line 275
    :goto_0
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 275
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 270
    :catch_1
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 272
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method protected static varargs invoke(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "name"
    .parameter "obj"
    .parameter "args"

    .prologue
    .line 329
    :try_start_0
    sget-object v2, Lcom/android/systemui/multiwindow/MultiWindowReflector;->sMethodMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 330
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/reflect/Method;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 336
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/reflect/Method;>;"
    :goto_0
    return-object v2

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "name"
    .parameter "args"

    .prologue
    .line 317
    :try_start_0
    sget-object v2, Lcom/android/systemui/multiwindow/MultiWindowReflector;->sMethodMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 318
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/reflect/Method;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Method;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 324
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/reflect/Method;>;"
    :goto_0
    return-object v2

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 3
    .parameter
    .parameter "obj"
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 309
    .local v0, m:Ljava/lang/reflect/Method;
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowReflector;->sMethodMap:Ljava/util/HashMap;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v1

    goto :goto_0
.end method
