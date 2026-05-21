.class public Lcom/xiaomi/market/sdk/Client;
.super Ljava/lang/Object;
.source "Client.java"


# static fields
.field private static DEFAULT_MIUI_BIG_VERSION_CODE:Ljava/lang/String; = null

.field static DISPLAY_DENSITY:I = 0x0

.field static DISPLAY_HEIGHT:I = 0x0

.field static DISPLAY_RESOLUTION:Ljava/lang/String; = null

.field static DISPLAY_WIDTH:I = 0x0

.field static FEATURE:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static GLES_VERSION:Ljava/lang/String; = null

.field static GL_EXTENSION:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static IS_ALPHA_BUILD:Z = false

.field public static IS_STABLE_VERSION:Z = false

.field static LIBRARY:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static RELEASE:Ljava/lang/String; = null

.field static SDK_VERSION:I = 0x0

.field static SYSTEM_VERSION:Ljava/lang/String; = null

.field static TOUCH_SCREEN:I = 0x0

.field private static mIsInited:Z = false

.field private static final mLock:Ljava/lang/Object;

.field private static miuiBigVersionCode:Ljava/lang/String;

.field private static miuiBigVersionName:Ljava/lang/String;

.field private static osBigVersionCode:Ljava/lang/String;

.field private static osBigVersionName:Ljava/lang/String;

.field private static osVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->isAlphaBuild()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/market/sdk/Client;->IS_ALPHA_BUILD:Z

    .line 47
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->isStableVersion()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/market/sdk/Client;->IS_STABLE_VERSION:Z

    const-string v0, "-1"

    .line 49
    sput-object v0, Lcom/xiaomi/market/sdk/Client;->DEFAULT_MIUI_BIG_VERSION_CODE:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/market/sdk/Client;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static acquireDeviceConfig(Landroid/content/Context;)V
    .locals 1

    const-string v0, "activity"

    .line 121
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 122
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    .line 123
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    sput v0, Lcom/xiaomi/market/sdk/Client;->TOUCH_SCREEN:I

    .line 124
    invoke-virtual {p0}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/market/sdk/Client;->GLES_VERSION:Ljava/lang/String;

    return-void
.end method

.method private static acquireFeature(Landroid/content/Context;)V
    .locals 5

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p0

    .line 130
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/xiaomi/market/sdk/Client;->FEATURE:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    .line 133
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 134
    iget-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    sget-object v4, Lcom/xiaomi/market/sdk/Client;->FEATURE:Ljava/util/ArrayList;

    iget-object v3, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_1
    sget-object p0, Lcom/xiaomi/market/sdk/Client;->FEATURE:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 140
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static acquireGLExtensions()V
    .locals 6

    .line 160
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getGLExtensions()Ljava/lang/String;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/xiaomi/market/sdk/Client;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/xiaomi/market/sdk/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " "

    .line 164
    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 165
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 166
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 167
    sget-object v5, Lcom/xiaomi/market/sdk/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_1
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 172
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static acquireLibrary(Landroid/content/Context;)V
    .locals 5

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object p0

    .line 146
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/xiaomi/market/sdk/Client;->LIBRARY:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    .line 149
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 150
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    sget-object v4, Lcom/xiaomi/market/sdk/Client;->LIBRARY:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_1
    sget-object p0, Lcom/xiaomi/market/sdk/Client;->LIBRARY:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static acquireScreenAttr(Landroid/content/Context;)V
    .locals 2

    .line 111
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 113
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/xiaomi/market/sdk/Client;->DISPLAY_HEIGHT:I

    .line 115
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lcom/xiaomi/market/sdk/Client;->DISPLAY_WIDTH:I

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/xiaomi/market/sdk/Client;->DISPLAY_HEIGHT:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaomi/market/sdk/Client;->DISPLAY_WIDTH:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/market/sdk/Client;->DISPLAY_RESOLUTION:Ljava/lang/String;

    .line 117
    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p0, Lcom/xiaomi/market/sdk/Client;->DISPLAY_DENSITY:I

    return-void
.end method

.method private static acquireSystemInfo(Landroid/content/Context;)V
    .locals 0

    .line 176
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object p0, Lcom/xiaomi/market/sdk/Client;->RELEASE:Ljava/lang/String;

    .line 177
    sget-object p0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object p0, Lcom/xiaomi/market/sdk/Client;->SYSTEM_VERSION:Ljava/lang/String;

    .line 178
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput p0, Lcom/xiaomi/market/sdk/Client;->SDK_VERSION:I

    return-void
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .line 182
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuArch()Ljava/lang/String;
    .locals 4

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->isLaterThanLollipop()Z

    move-result v1

    const-string v2, ","

    if-eqz v1, :cond_0

    const-string v1, "ro.product.cpu.abilist"

    const-string v3, ""

    .line 215
    invoke-static {v1, v3}, Lcom/xiaomi/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 220
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_1
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    .line 201
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceType()I
    .locals 1

    .line 205
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->isTablet()Z

    move-result v0

    return v0
.end method

.method private static getGLExtensions()Ljava/lang/String;
    .locals 11

    .line 228
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 229
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    .line 230
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v8, 0x0

    if-ne v7, v1, :cond_0

    return-object v8

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 235
    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v8

    :cond_1
    const/4 v1, 0x1

    new-array v9, v1, [I

    new-array v10, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v1, 0xb

    new-array v3, v1, [I

    .line 240
    fill-array-data v3, :array_0

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, v7

    move-object v4, v10

    move-object v6, v9

    .line 249
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v8

    :cond_2
    const/4 v1, 0x0

    aget v2, v9, v1

    if-lez v2, :cond_3

    aget-object v1, v10, v1

    goto :goto_0

    :cond_3
    move-object v1, v8

    .line 255
    :goto_0
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v7, v1, v2, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [I

    .line 257
    fill-array-data v3, :array_1

    .line 262
    invoke-interface {v0, v7, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 264
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v3, :cond_4

    goto :goto_1

    .line 268
    :cond_4
    invoke-interface {v0, v7, v1, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 269
    invoke-interface {v0, v7, v1, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_5

    return-object v8

    .line 273
    :cond_5
    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0x1f03

    .line 275
    invoke-interface {v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 278
    invoke-interface {v0, v7, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 279
    invoke-interface {v0, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    if-eqz v3, :cond_6

    .line 281
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :cond_6
    :goto_1
    return-object v8

    :array_0
    .array-data 4
        0x3033
        0x1
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3057
        0x1e0
        0x3056
        0x320
        0x3038
    .end array-data
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .line 186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiBigVersionCode()Ljava/lang/String;
    .locals 2

    .line 325
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->miuiBigVersionCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 328
    :cond_0
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->DEFAULT_MIUI_BIG_VERSION_CODE:Ljava/lang/String;

    const-string v1, "ro.miui.ui.version.code"

    invoke-static {v1, v0}, Lcom/xiaomi/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/market/sdk/Client;->miuiBigVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getMiuiBigVersionName()Ljava/lang/String;
    .locals 2

    .line 310
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->miuiBigVersionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ro.miui.ui.version.name"

    const-string v1, ""

    .line 313
    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/market/sdk/Client;->miuiBigVersionName:Ljava/lang/String;

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/xiaomi/market/sdk/Client;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_2

    .line 315
    sget-boolean v0, Lcom/xiaomi/market/sdk/Client;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_1

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/market/sdk/Client;->miuiBigVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-alpha"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/market/sdk/Client;->miuiBigVersionName:Ljava/lang/String;

    goto :goto_0

    .line 318
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/market/sdk/Client;->miuiBigVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-dev"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/market/sdk/Client;->miuiBigVersionName:Ljava/lang/String;

    .line 321
    :cond_2
    :goto_0
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->miuiBigVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .line 197
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOSBigVersionCode()Ljava/lang/String;
    .locals 2

    .line 367
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->osBigVersionCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ro.mi.os.version.code"

    const-string v1, ""

    .line 368
    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/market/sdk/Client;->osBigVersionCode:Ljava/lang/String;

    .line 370
    :cond_0
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->osBigVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getOSBigVersionName()Ljava/lang/String;
    .locals 2

    .line 348
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->osBigVersionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ro.mi.os.version.name"

    const-string v1, ""

    .line 351
    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/market/sdk/Client;->osBigVersionName:Ljava/lang/String;

    .line 352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/xiaomi/market/sdk/Client;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_2

    .line 353
    sget-boolean v0, Lcom/xiaomi/market/sdk/Client;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_1

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/market/sdk/Client;->osBigVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-alpha"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/market/sdk/Client;->osBigVersionName:Ljava/lang/String;

    goto :goto_0

    .line 356
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/market/sdk/Client;->osBigVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-dev"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/market/sdk/Client;->osBigVersionName:Ljava/lang/String;

    .line 359
    :cond_2
    :goto_0
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->osBigVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 2

    .line 333
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->osVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ro.mi.os.version.incremental"

    const-string v1, ""

    .line 336
    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/market/sdk/Client;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.miui.region"

    const-string v1, "CN"

    .line 190
    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersion()I
    .locals 1

    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1

    .line 98
    sget-boolean v0, Lcom/xiaomi/market/sdk/Client;->mIsInited:Z

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/market/sdk/Client;->acquireScreenAttr(Landroid/content/Context;)V

    .line 102
    invoke-static {p0}, Lcom/xiaomi/market/sdk/Client;->acquireDeviceConfig(Landroid/content/Context;)V

    .line 103
    invoke-static {p0}, Lcom/xiaomi/market/sdk/Client;->acquireFeature(Landroid/content/Context;)V

    .line 104
    invoke-static {p0}, Lcom/xiaomi/market/sdk/Client;->acquireLibrary(Landroid/content/Context;)V

    .line 105
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->acquireGLExtensions()V

    .line 106
    invoke-static {p0}, Lcom/xiaomi/market/sdk/Client;->acquireSystemInfo(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 107
    sput-boolean p0, Lcom/xiaomi/market/sdk/Client;->mIsInited:Z

    return-void
.end method

.method public static isAlphaBuild()Z
    .locals 3

    :try_start_0
    const-string v0, "miui.os.Build"

    .line 376
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IS_ALPHA_BUILD"

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 378
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MarketSdkClient"

    const-string v2, "getAlphaBuild with exception"

    .line 380
    invoke-static {v1, v2, v0}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaterThanLollipop()Z
    .locals 2

    .line 294
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMiui()Z
    .locals 2

    .line 303
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->miuiBigVersionCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 304
    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getMiuiBigVersionCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/market/sdk/Client;->miuiBigVersionCode:Ljava/lang/String;

    .line 306
    :cond_0
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->miuiBigVersionCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/market/sdk/Client;->DEFAULT_MIUI_BIG_VERSION_CODE:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/market/sdk/Client;->miuiBigVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStableVersion()Z
    .locals 3

    :try_start_0
    const-string v0, "miui.os.Build"

    .line 388
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IS_STABLE_VERSION"

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 390
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MarketSdkClient"

    const-string v2, "getStableVersion with exception"

    .line 392
    invoke-static {v1, v2, v0}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static isTablet()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    const-string v1, ""

    .line 209
    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
