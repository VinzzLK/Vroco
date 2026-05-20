.class public Lmiuix/core/util/MiuiBlurUtils;
.super Ljava/lang/Object;
.source "MiuiBlurUtils.java"


# static fields
.field private static ENABLE_MIUI_BLUR:Ljava/lang/Boolean; = null

.field public static METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method; = null

.field public static METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method; = null

.field public static METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method; = null

.field public static METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method; = null

.field public static METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method; = null

.field private static SUPPORT_MIUI_BLUR:Ljava/lang/Boolean; = null

.field private static isForceEnable:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    sget-boolean v0, Lmiuix/core/util/MiuiBlurUtils;->isForceEnable:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "persist.sys.background_blur_supported"

    const-string v1, "false"

    .line 27
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    :goto_1
    return-void
.end method

.method public static addBackgroundBlenderColor(Landroid/view/View;II)Z
    .locals 7

    .line 172
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 179
    :cond_1
    :try_start_0
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 180
    const-class v0, Landroid/view/View;

    const-string v4, "addMiBackgroundBlendColor"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 185
    :cond_2
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    const/4 p0, 0x0

    .line 187
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    return v1
.end method

.method public static clearBackgroundBlenderColor(Landroid/view/View;)Z
    .locals 4

    .line 194
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 198
    :cond_0
    :try_start_0
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 199
    const-class v0, Landroid/view/View;

    const-string v2, "clearMiBackgroundBlendColor"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 202
    :cond_1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    .line 204
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    return v1
.end method

.method public static clearBackgroundBlur(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    .line 139
    invoke-static {p0, v0}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlurMode(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {p0, v0}, Lmiuix/core/util/MiuiBlurUtils;->setViewBlurMode(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static declared-synchronized clearEffectEnable()V
    .locals 2

    const-class v0, Lmiuix/core/util/MiuiBlurUtils;

    monitor-enter v0

    const/4 v1, 0x0

    .line 50
    :try_start_0
    sput-object v1, Lmiuix/core/util/MiuiBlurUtils;->ENABLE_MIUI_BLUR:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isEffectEnable(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lmiuix/core/util/MiuiBlurUtils;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 37
    monitor-exit v0

    return v2

    :cond_0
    if-nez p0, :cond_1

    .line 40
    monitor-exit v0

    return v2

    .line 42
    :cond_1
    :try_start_1
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->ENABLE_MIUI_BLUR:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "background_blur_enable"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    move v2, v1

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->ENABLE_MIUI_BLUR:Ljava/lang/Boolean;

    .line 46
    :cond_3
    sget-object p0, Lmiuix/core/util/MiuiBlurUtils;->ENABLE_MIUI_BLUR:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isEnable()Z
    .locals 1

    .line 32
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setBackgroundBlur(Landroid/view/View;II)Z
    .locals 6

    .line 62
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x190

    if-le p1, v0, :cond_2

    move p1, v0

    .line 72
    :cond_2
    :try_start_0
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 73
    const-class v0, Landroid/view/View;

    const-string v3, "setMiBackgroundBlurMode"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 77
    :cond_3
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    .line 78
    const-class v0, Landroid/view/View;

    const-string v3, "setMiBackgroundBlurRadius"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    .line 82
    :cond_4
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-static {p0, p2}, Lmiuix/core/util/MiuiBlurUtils;->setViewBlurMode(Landroid/view/View;I)Z

    move-result p0

    return p0

    :catch_0
    const/4 p0, 0x0

    .line 85
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 86
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    return v1
.end method

.method public static setBackgroundBlur(Landroid/view/View;IZ)Z
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 58
    :goto_0
    invoke-static {p0, p1, p2}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlur(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public static setBackgroundBlurMode(Landroid/view/View;I)Z
    .locals 6

    .line 121
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 125
    :cond_0
    :try_start_0
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 126
    const-class v0, Landroid/view/View;

    const-string v3, "setMiBackgroundBlurMode"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 130
    :cond_1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const/4 p0, 0x0

    .line 132
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    return v1
.end method

.method public static setViewBlurMode(Landroid/view/View;I)Z
    .locals 6

    .line 154
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 158
    :cond_0
    :try_start_0
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 159
    const-class v0, Landroid/view/View;

    const-string v3, "setMiViewBlurMode"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 163
    :cond_1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const/4 p0, 0x0

    .line 165
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method;

    return v1
.end method
