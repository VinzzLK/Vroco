.class public Lcom/android/systemui/fsgesture/CornerRadiusUtils;
.super Ljava/lang/Object;
.source "CornerRadiusUtils.java"


# direct methods
.method public static getPhoneRadius(Landroid/content/Context;Landroid/view/WindowInsets;)I
    .locals 2

    .line 20
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_T:Z

    const-string v1, "rounded_corner_radius_top"

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 21
    invoke-static {p1, v1}, Lcom/android/systemui/fsgesture/CornerRadiusUtils;->getPhoneRadiusForWindowInsets(Landroid/view/WindowInsets;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p0, v1}, Lcom/android/systemui/fsgesture/CornerRadiusUtils;->getPhoneRadius(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getPhoneRadius(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "rounded_corner_radius_top"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "android"

    const-string v2, "dimen"

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, "rounded_corner_radius_bottom"

    .line 44
    invoke-virtual {p0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_0
    if-lez p1, :cond_1

    .line 48
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static getPhoneRadiusForWindowInsets(Landroid/view/WindowInsets;Ljava/lang/String;)I
    .locals 4

    const-string v0, "rounded_corner_radius_top"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "getRoundedCorner"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/Class;

    .line 58
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, p1, v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, p1, v1}, Lmiuix/internal/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Class;

    .line 61
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, p1, v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, p1, v1}, Lmiuix/internal/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v2
.end method
